package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Color
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.activityViewModels
import com.google.android.material.textfield.TextInputEditText
import com.google.zxing.BarcodeFormat
import com.google.zxing.WriterException
import com.google.zxing.qrcode.QRCodeWriter
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.FragmentPayByTransferBinding
import com.woleapp.netpos.contactless.util.PREF_ACCOUNT_NUMBER
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.Singletons
import com.woleapp.netpos.contactless.util.showToast
import com.woleapp.netpos.contactless.viewmodels.ScanQrViewModel

class PayByTransferFragment : BaseFragment() {
    private lateinit var binding: FragmentPayByTransferBinding
    private lateinit var accountNumberQRCode: ImageView
    private lateinit var merchantBank: TextInputEditText
    private lateinit var bankAccountNumber: TextInputEditText
    private val scanQrViewModel: ScanQrViewModel by activityViewModels()
    private lateinit var loader: AlertDialog
    private var copyAccountNumber: String? = null

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        // Inflate the layout for this fragment
        binding =
            DataBindingUtil.inflate(inflater, R.layout.fragment_pay_by_transfer, container, false)

        return binding.root
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)
        initViews()
        loader = alertDialog(requireContext())
        generateMerchantDetails()
        bankAccountNumber.setOnClickListener {
            if (copyAccountNumber?.isNotEmpty() == true) {
                copyText()
            }
        }
    }

    private fun convertAccountNumberToQR() {
        val writer = QRCodeWriter()
        try {
            val bitMatrix = writer.encode("$copyAccountNumber", BarcodeFormat.QR_CODE, 600, 600)
            val width = bitMatrix.width
            val height = bitMatrix.height
            val bmp = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565)
            for (x in 0 until width) {
                for (y in 0 until height) {
                    bmp.setPixel(x, y, if (bitMatrix[x, y]) Color.BLACK else Color.WHITE)
                }
            }
            binding.accountNumberQr.setImageBitmap(bmp)
        } catch (e: WriterException) {
        }
    }

    private fun initViews() {
        with(binding) {
            accountNumberQRCode = accountNumberQr
            merchantBank = bankName
            bankAccountNumber = accountNumber
        }
    }

    private fun generateMerchantDetails() {
        scanQrViewModel.payByTransfer.observe(viewLifecycleOwner) { merchantDetails ->
            if (merchantDetails.data?.user?.acctNumber?.isNotEmpty() == true) {
                bankAccountNumber.setText(merchantDetails.data.user.acctNumber)
                merchantBank.setText(merchantDetails.data.user.bank)
                copyAccountNumber = merchantDetails.data.user.acctNumber
                binding.scanQrTextView.visibility = View.VISIBLE
                binding.scanQrView.visibility = View.VISIBLE
                binding.accountNumberQr.visibility = View.VISIBLE
                convertAccountNumberToQR()
                Prefs.putString(PREF_ACCOUNT_NUMBER, Singletons.gson.toJson(merchantDetails.data.user.acctNumber))
            } else {
                bankAccountNumber.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null)
            }
        }
    }

    private fun copyText() {
        val clipboardManager =
            requireActivity().getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val clip = ClipData.newPlainText("Text copied", copyAccountNumber)
        clipboardManager.setPrimaryClip(clip)
        showToast("Account number copied")
    }
}
