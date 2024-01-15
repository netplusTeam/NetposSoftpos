package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Color
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.Toast
import androidx.activity.viewModels
import androidx.core.content.ContextCompat.getSystemService
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.activityViewModels
import com.google.android.material.textfield.TextInputEditText
import com.google.zxing.BarcodeFormat
import com.google.zxing.WriterException
import com.google.zxing.qrcode.QRCodeWriter
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.FragmentNotificationBinding
import com.woleapp.netpos.contactless.databinding.FragmentPayByTransferBinding
import com.woleapp.netpos.contactless.ui.dialog.LoadingDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.util.showToast
import com.woleapp.netpos.contactless.viewmodels.ScanQrViewModel
import kotlinx.android.synthetic.main.dashboard_header.*


class PayByTransferFragment : BaseFragment() {

    private lateinit var binding: FragmentPayByTransferBinding
    private lateinit var accountNumberQRCode: ImageView
    private lateinit var merchantBank: TextInputEditText
    private lateinit var bankAccountNumber: TextInputEditText
    private val scanQrViewModel : ScanQrViewModel by activityViewModels()
    private lateinit var loader: AlertDialog
    private lateinit var copyAccountNumber: String

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        // Inflate the layout for this fragment
        binding = DataBindingUtil.inflate(inflater, R.layout.fragment_pay_by_transfer, container, false)

        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initViews()
        loader = alertDialog(requireContext())
        generateMerchantDetails()
        val writer = QRCodeWriter()
        try {
            val bitMatrix = writer.encode("$bankAccountNumber", BarcodeFormat.QR_CODE, 512, 512)
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

        bankAccountNumber.setOnClickListener {
            copyText()
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
        observeServerResponse(
            scanQrViewModel.payByTransfer,
            loader,
            requireActivity().supportFragmentManager
        ) {
            scanQrViewModel.payByTransfer.value?.data?.user?.let {
                bankAccountNumber.setText(it.acctNumber)
                merchantBank.setText(it.bank)
                copyAccountNumber = it.acctNumber
            }
        }
    }

    private fun copyText() {
        val clipboardManager = requireActivity().getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val clip = ClipData.newPlainText("Text copied", copyAccountNumber)
        clipboardManager.setPrimaryClip(clip)
        showToast("Account number copied")
    }
}