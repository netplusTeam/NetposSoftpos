package com.woleapp.netpos.ui.fragments

import android.app.AlertDialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.viewModels
import com.danbamitale.epmslib.entities.CardData
import com.danbamitale.epmslib.entities.TransactionType
import com.google.android.material.snackbar.Snackbar
import com.netplus.sunyardlib.*
import com.woleapp.netpos.R
import com.woleapp.netpos.databinding.FragmentSalesBinding
import com.woleapp.netpos.nibss.NetPosTerminalConfig
import com.woleapp.netpos.util.TRANSACTION_TYPE
import com.woleapp.netpos.viewmodels.SalesViewModel
import io.reactivex.Observer
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers
import timber.log.Timber

class SalesFragment : BaseFragment() {

    companion object {
        fun newInstance(transactionType: TransactionType = TransactionType.PURCHASE): SalesFragment =
            SalesFragment().apply {
                arguments = Bundle().apply {
                    putString(TRANSACTION_TYPE, transactionType.name)
                }
            }
    }

    private val viewModel by viewModels<SalesViewModel>()
    private lateinit var transactionType: TransactionType
    private val compositeDisposable = CompositeDisposable()

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val binding = FragmentSalesBinding.inflate(inflater, container, false)
        transactionType = TransactionType.valueOf(
            arguments?.getString(
                TRANSACTION_TYPE,
                TransactionType.PURCHASE.name
            )!!
        )
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

        binding.process.setOnClickListener { showCardDialog() }
        return binding.root
    }

    private fun showCardDialog() {
        val dialog = AlertDialog.Builder(requireContext())
            .setTitle("Input Card")
            .setMessage("Please Insert Your card").show()
        val getPin =
            GetPin { pan, getPinHandler -> getPinHandler!!.onGetPin(0, pan) }
        val c = CardReaderService.initiateICCCardPayment(context, 100, 0L, getPin)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe { cardData, throwable ->
                cardData?.let {
                    viewModel.cardData = CardData(
                        track2Data = it.track2Data,
                        nibssIccSubset = "9F26088F8BFBE76089D66F9F2701809F10201F220100A48802000000000000000000000000000000000000000000000000009F3704389456479F360202A1950500800088009A031902189C01009F02060000000001005F2A020566820238009F1A0205669F34030103029F3303E0F9C89F3501519F1E0830303030303030318407A00000000310109F090200009F03060000000000005F3401018E10000000000000000001031E0302031F00",
                        panSequenceNumber = it.applicationPANSequenceNumber, posEntryMode = "051"
                    )
                    Timber.e(it.applicationPANSequenceNumber)
                    Timber.e(it.applicationPrimaryAccountNumber)
                    Timber.e(it.toString())
                    if (dialog.isShowing)
                        dialog.dismiss()
                    viewModel.makePayment(requireContext(), transactionType)
                    Toast.makeText(context, "Done Reading Card", Toast.LENGTH_SHORT).show()
                    //Timber.e(it.toString())
                }
                throwable?.let {
                    Toast.makeText(context, "Error ${it.localizedMessage}", Toast.LENGTH_SHORT)
                        .show()
                    Timber.e(it)
                }
            }
        compositeDisposable.add(c)
//        CardReaderService2.readCard(requireActivity())
//            .subscribeOn(Schedulers.io())
//            .observeOn(AndroidSchedulers.mainThread())
//            .subscribe(object : Observer<CardReaderEvent> {
//                override fun onSubscribe(d: Disposable) {
//
//                }
//
//                override fun onNext(t: CardReaderEvent) {
//                    when (t) {
//                        is CardReaderEvent.CardScanned -> {
//                            Timber.e("Card Detected")
//                        }
//                        is CardReaderEvent.CardRead<*> -> {
//                            val cardResult = t.data as CardReadResult
//                            viewModel.cardData = CardData(
//                                track2Data = cardResult.track2Data,
//                                nibssIccSubset = "9F26088F8BFBE76089D66F9F2701809F10201F220100A48802000000000000000000000000000000000000000000000000009F3704389456479F360202A1950500800088009A031902189C01009F02060000000001005F2A020566820238009F1A0205669F34030103029F3303E0F9C89F3501519F1E0830303030303030318407A00000000310109F090200009F03060000000000005F3401018E10000000000000000001031E0302031F00",
//                                panSequenceNumber = cardResult.applicationPANSequenceNumber,
//                                posEntryMode = "051"
//                            )
//                            Timber.e(cardResult.applicationPANSequenceNumber)
//                            Timber.e(cardResult.track2Data)
//                            //viewModel.makePayment(requireContext(), transactionType)
//                        }
//                    }
//                }
//
//                override fun onError(e: Throwable) {
//                    Timber.e(e.localizedMessage)
//
//                }
//
//                override fun onComplete() {
//                    Timber.e("Done Reading card")
//                    if (dialog.isShowing)
//                        dialog.dismiss()
//                    viewModel.makePayment(requireContext(), transactionType)
//                    Toast.makeText(context, "Done Reading Card", Toast.LENGTH_SHORT).show()
//                }
//
//            })

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
                R.id.container_main
            ), message, Snackbar.LENGTH_LONG
        ).show()
    }
}