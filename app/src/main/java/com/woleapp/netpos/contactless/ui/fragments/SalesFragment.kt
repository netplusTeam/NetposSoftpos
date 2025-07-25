@file:Suppress("DEPRECATION", "ktlint:standard:no-wildcard-imports")

package com.woleapp.netpos.contactless.ui.fragments

import android.app.ProgressDialog
import android.content.DialogInterface
import android.os.Build
import android.os.Bundle
import android.text.InputFilter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.core.view.isVisible
import androidx.fragment.app.activityViewModels
import com.danbamitale.epmslib.entities.TransactionType
import com.google.android.material.snackbar.Snackbar
import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.DialogPrintTypeBinding
import com.woleapp.netpos.contactless.databinding.FragmentSalesBinding
import com.woleapp.netpos.contactless.model.Vend
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.viewmodels.NfcCardReaderViewModel
import com.woleapp.netpos.contactless.viewmodels.SalesViewModel
import io.reactivex.Observable
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import timber.log.Timber
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.PrintWriter
import java.net.InetSocketAddress
import java.net.Socket
import java.util.concurrent.TimeUnit

class SalesFragment : BaseFragment() {
    companion object {
        fun newInstance(
            transactionType: TransactionType = TransactionType.PURCHASE,
            isVend: Boolean = false,
        ): SalesFragment =
            SalesFragment().apply {
                arguments =
                    Bundle().apply {
                        putString(TRANSACTION_TYPE, transactionType.name)
                        putBoolean("IS_VEND", isVend)
                    }
            }
    }

    private val viewModel by activityViewModels<SalesViewModel>()
    private val nfcCardReaderViewModel by activityViewModels<NfcCardReaderViewModel>()
    private lateinit var amountEditText: EditText
    private lateinit var transactionType: TransactionType
    private lateinit var alertDialog: AlertDialog
    private lateinit var dialogPrintTypeBinding: DialogPrintTypeBinding
    private lateinit var printTypeDialog: AlertDialog
    private lateinit var printerErrorDialog: AlertDialog
    private val compositeDisposable = CompositeDisposable()
    private var isVend: Boolean = false
    private lateinit var binding: FragmentSalesBinding

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        binding = FragmentSalesBinding.inflate(inflater, container, false)
        amountEditText = binding.priceTextbox
        amountEditText.apply {
            filters = arrayOf<InputFilter>(DecimalDigitsInputFilter(8, 2))
        }
        transactionType =
            TransactionType.valueOf(
                arguments?.getString(
                    TRANSACTION_TYPE,
                    TransactionType.PURCHASE.name,
                )!!,
            )
        if (transactionType == TransactionType.PURCHASE_WITH_CASH_BACK) {
            binding.cashbackInputLayout.isVisible = true
        }
        isVend = arguments?.getBoolean("IS_VEND", false) ?: false
        viewModel.isVend(isVend)

        dialogPrintTypeBinding =
            DialogPrintTypeBinding.inflate(layoutInflater, null, false).apply {
                executePendingBindings()
            }
        printerErrorDialog =
            AlertDialog.Builder(requireContext())
                .apply {
                    setTitle("Printer Error")
                    setIcon(R.drawable.ic_warning)
                    setPositiveButton("Send Receipt") { d, _ ->
                        d.cancel()
                        viewModel.showReceiptDialog()
                    }
                    setNegativeButton("Dismiss") { d, _ ->
                        d.cancel()
                        viewModel.finish()
                    }
                }.create()
        binding.apply {
            viewmodel = viewModel
            lifecycleOwner = viewLifecycleOwner
            executePendingBindings()
            type = transactionType.name
        }
        viewModel.message.observe(viewLifecycleOwner) {
            it.getContentIfNotHandled()?.let { s ->
                showSnackBar(s)
            }
        }
//        viewModel.getCardData.observe(viewLifecycleOwner) { event ->
//            event.getContentIfNotHandled()?.let { shouldGetCardData ->
//                if (shouldGetCardData) {
//                    showCardDialog(
//                        requireActivity(),
//                        viewLifecycleOwner,
//                    ).observe(viewLifecycleOwner) { event ->
//                        event.getContentIfNotHandled()?.let {
//                            Timber.e(it.toString())
//                            nfcCardReaderViewModel.initiateNfcPayment(
//                                viewModel.amountLong,
//                                viewModel.cashbackLong,
//                                it,
//                            )
//                        }
//                    }
//                }
//            }
//        }
        viewModel.showReceiptType.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                printTypeDialog.show()
            }
        }

        viewModel.toastMessage.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                Toast.makeText(requireContext(), it, Toast.LENGTH_LONG).show()
            }
        }
        viewModel.finish.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                if (it) {
                    requireActivity().onBackPressed()
                }
            }
        }
        viewModel.showPrinterError.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                if (printTypeDialog.isShowing) {
                    printTypeDialog.cancel()
                }
                if (printerErrorDialog.isShowing) {
                    printerErrorDialog.cancel()
                }
                printerErrorDialog.apply {
                    setMessage(it)
                }.show()
            }
        }

        viewModel.showPrintDialog.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                nfcCardReaderViewModel.setLastPosTransactionResponse(viewModel.lastPosTransaction.value!!)
                nfcCardReaderViewModel.prepareSMS(it)
            }
        }

        viewModel.shouldRefreshNibssKeys.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                if (it) {
                    NetPosTerminalConfig.init(
                        requireContext().applicationContext,
                        configureSilently = true,
                    )
                }
            }
        }
        binding.process.setOnClickListener {
            viewModel.validateFieldForNFC()
        }

        nfcCardReaderViewModel.iccCardHelperLiveData.observe(viewLifecycleOwner) { event ->
            event.getContentIfNotHandled()?.let {
                it.error?.let { error ->
                    Timber.e(error)
                    Toast.makeText(
                        requireContext(),
                        error.message,
                        Toast.LENGTH_LONG,
                    )
                        .show()
                }
                it.cardData?.let { _ ->
                    viewModel.setCardScheme(it.cardScheme!!)
                    viewModel.setCustomerName(it.customerName ?: "Customer")
                    viewModel.setAccountType(it.accountType!!)
                    viewModel.cardData = it.cardData
                    viewModel.makePayment(requireContext(), transactionType)
                }
            }
        }

        return binding.root
    }

    private fun showSnackBar(message: String) {
        if (message == "Transaction not approved") {
            AlertDialog.Builder(requireContext())
                .apply {
                    setTitle("Response")
                    setMessage(message)
                    show()
                }
        }

        Snackbar.make(
            requireActivity().findViewById(
                R.id.container_main,
            ),
            message,
            Snackbar.LENGTH_LONG,
        ).show()
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)
        vend()
    }

    private fun vend() {
        if (isVend) {
            var count = 0
            val progressBar =
                ProgressDialog(context).apply {
                    this.setCancelable(false)
                    this.setButton(DialogInterface.BUTTON_NEGATIVE, "Cancel") { dialog, _ ->
                        dialog.cancel()
                        compositeDisposable.clear()
                        requireActivity().onBackPressed()
                    }
                    this.setMessage("Waiting for amount.")
                    show()
                }
            val socket = Socket()
            var printWriter: PrintWriter? = null
            var reader: BufferedReader? = null
            Observable.fromCallable {
                socket.soTimeout = 120_000
                socket.connect(InetSocketAddress(UtilityParam.VEND_IP, UtilityParam.VEND_PORT.toInt()))
                printWriter = PrintWriter(socket.getOutputStream(), true)
                reader = BufferedReader(InputStreamReader(socket.getInputStream()))
                val firstData = reader?.readLine()
                Timber.e(firstData)
            }.flatMap {
                Observable.interval(0, 5, TimeUnit.SECONDS)
            }.flatMap {
                val out =
                    JsonObject().apply {
                        addProperty("serial_number", Build.ID)
                        addProperty("status", "")
                    }.toString()
                printWriter?.println(out)
                try {
                    val s = reader?.readLine()
                    Timber.e(s)
                    val vend = Singletons.gson.fromJson(s, Vend::class.java)
                    // socket.close()
                    Observable.just(vend)
                } catch (e: Exception) {
                    Observable.just(Vend(0.0))
                }
            }.subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    Timber.e("vend: $it")
                    count++
                    if (it.amount > 0.0) {
                        progressBar.dismiss()
                        Toast.makeText(context, "received", Toast.LENGTH_SHORT).show()
                        Toast.makeText(context, it.amount.toString(), Toast.LENGTH_LONG).show()
                        binding.priceTextbox.setText(it.amount.toLong().toString())
                        compositeDisposable.clear()
                    } else if (count > 12) {
                        progressBar.dismiss()
                        Toast.makeText(
                            context,
                            "Did not receive amount after waiting",
                            Toast.LENGTH_LONG,
                        ).show()
                        compositeDisposable.clear()
                        requireActivity().onBackPressed()
                    }
                }, {
                    progressBar.dismiss()
                    Toast.makeText(
                        requireContext(),
                        "Error ${it.localizedMessage}",
                        Toast.LENGTH_SHORT,
                    ).show()
                    Timber.e("Error: ${it.localizedMessage}")
                    requireActivity().onBackPressed()
                }).disposeWith(compositeDisposable)
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        compositeDisposable.clear()
    }
}
