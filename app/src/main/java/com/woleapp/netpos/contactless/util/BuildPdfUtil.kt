package com.woleapp.netpos.contactless.util

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Canvas
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.util.DisplayMetrics
import android.util.Log
import android.view.View
import androidx.core.content.FileProvider
import androidx.databinding.ViewDataBinding
import androidx.fragment.app.Fragment
import androidx.lifecycle.LifecycleOwner
import com.danbamitale.epmslib.entities.TransactionResponse
import com.itextpdf.kernel.colors.ColorConstants
import com.itextpdf.kernel.font.PdfFontFactory
import com.itextpdf.kernel.pdf.PdfDocument
import com.itextpdf.kernel.pdf.PdfReader
import com.itextpdf.kernel.pdf.PdfWriter
import com.itextpdf.kernel.pdf.canvas.PdfCanvas
import com.itextpdf.layout.property.TextAlignment
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.LayoutPosReceiptPdfBinding
import com.woleapp.netpos.contactless.databinding.LayoutQrReceiptPdfBinding
import com.woleapp.netpos.contactless.model.QrTransactionResponseFinalModel
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.divideLongBy100
import java.io.File
import java.io.FileOutputStream
import java.text.DecimalFormat

fun initViewsForPdfLayout(
    pdfView: ViewDataBinding,
    receipt: Any?,
) {
    when (receipt) {
        is QrTransactionResponseFinalModel -> {
            initViewsForQrReceipt((pdfView as LayoutQrReceiptPdfBinding), receipt)
        }
        is TransactionResponse -> {
            initViewsForPosReceipt((pdfView as LayoutPosReceiptPdfBinding), receipt)
        }
        else -> { // Do nothing
        }
    }
}

fun sharePdf(
    outputFile: File,
    host: LifecycleOwner,
) {
    val context: Context = if (host is Fragment) host.requireContext() else (host as Activity)

    // Extract the RRN from the file name
    val receiptId = deriveReceiptId(outputFile)

    // Check and add watermark if the receipt is regenerated
    if (isReceiptRegenerated(receiptId, context)) {
        addWatermarkToPdf(outputFile)
    } else {
        // Mark the receipt as regenerated for future checks
        markReceiptAsRegenerated(receiptId, context)
    }

    // Share the PDF
    val uri: Uri =
        FileProvider.getUriForFile(
            context,
            context.applicationContext.packageName + ".provider",
            outputFile,
        )
    val shareIntent =
        Intent().apply {
            action = Intent.ACTION_SEND
            type = "application/pdf"
            putExtra(Intent.EXTRA_STREAM, uri)
        }
    context.startActivity(shareIntent)
}

// Function to derive a unique receipt identifier from the filename
private fun deriveReceiptId(file: File): String {
    // Extract the filename without extension
    val fileName = file.nameWithoutExtension

    // Determine the pattern based on BuildConfig.FLAVOR
    val rrnPattern =
        when (BuildConfig.FLAVOR) {
            "providuspos" -> Regex("PROVIDUS_Receipt_\\d{4}-\\d{2}-\\d{2}_\\d{2}-\\d{2}-\\d{2}_(\\d+)")
            else -> Regex("NetPOS_Receipt_\\d{4}-\\d{2}-\\d{2}_\\d{2}-\\d{2}-\\d{2}_(\\d+)")
        }

    // Find and extract the RRN using the determined pattern
    val matchResult = rrnPattern?.find(fileName)
    Log.d("SHOW_RESULTS", "${matchResult?.groups?.get(1)?.value}")

    // Return the extracted RRN or "UNKNOWN" if not found
    return matchResult?.groups?.get(1)?.value ?: "UNKNOWN"
}

private fun isReceiptRegenerated(
    receiptId: String,
    context: Context,
): Boolean {
    val sharedPreferences = context.getSharedPreferences("ReceiptsPrefs", Context.MODE_PRIVATE)
    return sharedPreferences.getBoolean(receiptId, false)
}

private fun markReceiptAsRegenerated(
    receiptId: String,
    context: Context,
) {
    val sharedPreferences = context.getSharedPreferences("ReceiptsPrefs", Context.MODE_PRIVATE)
    sharedPreferences.edit().putBoolean(receiptId, true).apply()
}

fun addWatermarkToPdf(file: File) {
    try {
        val pdfReader = PdfReader(file)
        val outputFileName = file.path.replace(".pdf", "_watermarked.pdf")
        val pdfWriter = PdfWriter(outputFileName)
        val pdfDocument = com.itextpdf.kernel.pdf.PdfDocument(pdfReader, pdfWriter)

        val font = PdfFontFactory.createFont(com.itextpdf.io.font.constants.StandardFonts.HELVETICA)

        for (i in 1..pdfDocument.numberOfPages) { // Loop through all pages
            val page = pdfDocument.getPage(i)
            val canvas = PdfCanvas(page)
            val pageSize = page.pageSize
            val watermarkText = "REGENERATED"

            // Use the Canvas class to add aligned text
            val textCanvas = com.itextpdf.layout.Canvas(canvas, pdfDocument, pageSize)
            textCanvas.setFont(font)
            textCanvas.setFontSize(60f)
            textCanvas.setFontColor(ColorConstants.GRAY)
            textCanvas.showTextAligned(
                watermarkText,
                pageSize.width / 2,
                pageSize.height / 2,
                TextAlignment.CENTER,
            )
        }

        pdfDocument.close()

        // Replace original file with the watermarked version
        val watermarkedFile = File(outputFileName)
        if (file.exists()) file.delete()
        watermarkedFile.renameTo(file)
    } catch (e: Exception) {
        e.printStackTrace() // Handle exceptions appropriately
    }
}

fun createPdfWithRRN(
    pdfView: ViewDataBinding,
    host: LifecycleOwner,
    receiptContent: String, // Assuming receipt content is provided as StringBuilder
): File {
    // Extract RRN using a regular expression
    val rrnPattern = Regex("RRN:\\s*(\\d+)")
    val rrnMatch = rrnPattern.find(receiptContent)
    val rrn = rrnMatch?.groups?.get(1)?.value ?: "UNKNOWN"

    // Create filename with RRN included
    val fileName =
        when (BuildConfig.FLAVOR) {
            "providuspos" -> "PROVIDUS_Receipt_${getCurrentDateTimeAsFormattedString()}_$rrn.pdf"
            else -> "NetPOS_Receipt_${getCurrentDateTimeAsFormattedString()}_$rrn.pdf"
        }
    // Existing logic to create a PDF
    val displayMetrics = DisplayMetrics()
    if (host is Fragment) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            host.context?.display?.getRealMetrics(displayMetrics)
        } else {
            host.activity?.windowManager?.defaultDisplay?.getMetrics(displayMetrics)
        }
    } else {
        host as Activity
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            host.display?.getRealMetrics(displayMetrics)
        } else {
            host.windowManager?.defaultDisplay?.getMetrics(displayMetrics)
        }
    }

    pdfView.root.measure(
        View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, View.MeasureSpec.EXACTLY),
        View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, View.MeasureSpec.EXACTLY),
    )

    pdfView.root.layout(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels)
    val bitmap = Bitmap.createBitmap(pdfView.root.measuredWidth, pdfView.root.measuredHeight, Bitmap.Config.ARGB_8888)
    val canvas = Canvas(bitmap)
    pdfView.root.draw(canvas)

    val pdfDocument = android.graphics.pdf.PdfDocument()
    val pageInfo = android.graphics.pdf.PdfDocument.PageInfo.Builder(bitmap.width, bitmap.height, 1).create()
    val page = pdfDocument.startPage(pageInfo)
    page.canvas.drawBitmap(bitmap, 0f, 0f, null)
    pdfDocument.finishPage(page)

    // Create file in Downloads directory
    val filePath =
        File(
            Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
            fileName,
        )
    pdfDocument.writeTo(FileOutputStream(filePath))
    pdfDocument.close()

    return filePath
}

fun createPdf(
    pdfView: ViewDataBinding,
    host: LifecycleOwner,
): File {
    val displayMetrics = DisplayMetrics()
    if (host is Fragment) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            host.context?.display?.getRealMetrics(displayMetrics)
            displayMetrics.densityDpi
        } else {
            host.activity?.windowManager?.defaultDisplay?.getMetrics(displayMetrics)
        }
    } else {
        host as Activity
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            host.display?.getRealMetrics(displayMetrics)
            displayMetrics.densityDpi
        } else {
            host.windowManager?.defaultDisplay?.getMetrics(displayMetrics)
        }
    }

    pdfView.root.measure(
        View.MeasureSpec.makeMeasureSpec(
            displayMetrics.widthPixels,
            View.MeasureSpec.EXACTLY,
        ),
        View.MeasureSpec.makeMeasureSpec(
            displayMetrics.heightPixels,
            View.MeasureSpec.EXACTLY,
        ),
    )

    pdfView.root.layout(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels)

    val bitmap =
        pdfView.root.measuredWidth.let {
            pdfView.root.measuredHeight.let { it1 ->
                Bitmap.createBitmap(
                    it,
                    it1,
                    Bitmap.Config.ARGB_8888,
                )
            }
        }

    val canvas = bitmap?.let { Canvas(it) }
    if (canvas != null) {
        pdfView.root.draw(canvas)
    }

    if (bitmap != null) {
        Bitmap.createScaledBitmap(bitmap, 595, 842, true)
    }
    val pdfDocument = android.graphics.pdf.PdfDocument()
    val pageInfo =
        bitmap?.let {
            android.graphics.pdf.PdfDocument.PageInfo.Builder(it.width, it.height, 1).create()
        }
    val page = pdfDocument.startPage(pageInfo)
    if (bitmap != null) {
        page.canvas.drawBitmap(bitmap, 0F, 0F, null)
    }
    pdfDocument.finishPage(page)
    val filePath =
        when (BuildConfig.FLAVOR) {
            "providuspos" ->
                File(
                    Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
                    "PROVIDUS_Receipt_" + getCurrentDateTimeAsFormattedString() + ".pdf",
                )
            else ->
                File(
                    Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
                    "NetPOS_Receipt_" + getCurrentDateTimeAsFormattedString() + ".pdf",
                )
        }

    pdfDocument.writeTo(FileOutputStream(filePath))
    pdfDocument.close()

    return filePath
}

private fun initViewsForQrReceipt(
    pdfView: LayoutQrReceiptPdfBinding,
    responseFromWebView: QrTransactionResponseFinalModel?,
) {
    pdfView.apply {
        responseFromWebView?.let { respFromWebView: QrTransactionResponseFinalModel ->
            Log.d("FINAL_RESULTTT", "$respFromWebView")
            merchantName.text =
                pdfView.root.context.getString(
                    R.string.merchant_name_place_holder,
                    Singletons.getCurrentlyLoggedInUser()?.business_name
                        ?: "${BuildConfig.FLAVOR} POS MERCHANT",
                )
            cardOwner.text =
                pdfView.root.context.getString(
                    R.string.card_owner_place_holder,
                    respFromWebView.customerName,
                )
            terminalIdPlaceHolder.text =
                pdfView.appVersion.context.getString(
                    R.string.terminal_id_place_holder,
                    respFromWebView.terminalId,
                )
            dateTime.text =
                pdfView.appVersion.context.getString(
                    R.string.date_time_place_holder,
                    respFromWebView.transmissionDateTime,
                )
            transAmount.text =
                pdfView.appVersion.context.getString(
                    R.string.amount_place_holder,
                    divideLongBy100(respFromWebView.amount).formatCurrencyAmountUsingCurrentModule(),
                )
            orderId.text =
                pdfView.appVersion.context.getString(
                    R.string.order_id_place_holder,
                    respFromWebView.rrnOrderId,
                )
//            narration.text =
//                pdfView.appVersion.context.getString(
//                    R.string.narration_place_holder,
//                    respFromWebView.narration,
//                )
//            transId.text =
//                pdfView.appVersion.context.getString(
//                    R.string.trans_ref_place_holder,
//                    respFromWebView.transIdStan,
//                )
            status.text =
                pdfView.appVersion.context.getString(
                    R.string.transaction_status_place_holder,
                    respFromWebView.status.uppercase(),
                )
            responseCode.text =
                pdfView.appVersion.context.getString(
                    R.string.response_code_place_holder,
                    respFromWebView.responseCode,
                )
            message.text =
                pdfView.appVersion.context.getString(
                    R.string.message_place_holder,
                    respFromWebView.message,
                )
            maskedPan.text =
                pdfView.appVersion.context.getString(
                    R.string.masked_pan_place_holder,
                    respFromWebView.maskedPan,
                )
            appVersion.text =
                pdfView.appVersion.context.getString(
                    R.string.app_version_place_holder,
                    "${BuildConfig.FLAVOR} POS ${BuildConfig.VERSION_NAME}",
                )
        }
    }
}

fun getMessage(): Map<String, String> {
    return mapOf(
        "00" to "Approved",
        "01" to "Refer to card issuer",
        "02" to "Refer to card issuer, special condition",
        "03" to "Invalid merchant",
        "04" to "Pick-up card",
        "05" to "Do not honor",
        "06" to "Error",
        "07" to "Pick-up card, special condition",
        "08" to "Honor with identification",
        "09" to "Request in progress",
        "10" to "Approved, partial",
        "11" to "Approved, VIP",
        "12" to "Invalid transaction",
        "13" to "Invalid amount",
        "14" to "Invalid card number",
        "15" to "No such issuer",
        "16" to "Approved, update track 3",
        "17" to "Customer cancellation",
        "18" to "Customer dispute",
        "19" to "Re-enter transaction",
        "20" to "Invalid response",
        "21" to "No action taken",
        "22" to "Suspected malfunction",
        "23" to "Unacceptable transaction fee",
        "24" to "File update not supported",
        "25" to "Unable to locate record",
        "26" to "Duplicate record",
        "27" to "File update edit error",
        "28" to "File update file locked",
        "29" to "File update failed",
        "30" to "Format error",
        "31" to "Bank not supported",
        "32" to "Completed partially",
        "33" to "Expired card, pick-up",
        "34" to "Suspected fraud, pick-up",
        "35" to "Contact acquirer, pick-up",
        "36" to "Restricted card, pick-up",
        "37" to "Call acquirer security, pick-up",
        "38" to "PIN tries exceeded, pick-up",
        "39" to "No credit account",
        "40" to "Function not supported",
        "41" to "Lost card",
        "42" to "No universal account",
        "43" to "Stolen card",
        "44" to "No investment account",
        "51" to "Not sufficient funds",
        "52" to "No check account",
        "53" to "No savings account",
        "54" to "Expired card",
        "55" to "Incorrect PIN",
        "56" to "No card record",
        "57" to "Transaction not permitted to cardholder",
        "58" to "Transaction not permitted on terminal",
        "59" to "Suspected fraud",
        "60" to "Contact acquirer",
        "61" to "Exceeds withdrawal limit",
        "62" to "Restricted card",
        "63" to "Security violation",
        "64" to "Original amount incorrect",
        "65" to "Exceeds withdrawal frequency",
        "66" to "Call acquirer security",
        "67" to "Hard capture",
        "68" to "Response received too late",
        "75" to "PIN tries exceeded",
        "77" to "Intervene, bank approval required",
        "78" to "Intervene, bank approval required for partial amount",
        "79" to "Declined",
        "81" to "Inactive, Dormant Account",
        "88" to "",
        "89" to "Acquirer Limit Exceeded/ Administration Error",
        "90" to "Cut-off in progress",
        "91" to "Issuer or switch inoperative",
        "92" to "Routing error.",
        "93" to "Violation of law",
        "94" to "Duplicate transaction",
        "95" to "Reconcile error",
        "96" to "System malfunction",
        "98" to "Exceeds cash limit",
        "99" to "Insufficient Funds/ Incorrect Pin",
        "N3" to "",
        "XX" to "",
        "H9" to "",
    )
}

private fun initViewsForPosReceipt(
    pdfView: LayoutPosReceiptPdfBinding,
    transResponse: TransactionResponse,
) {
    pdfView.apply {
        transResponse.let {
            Log.d("FINAL_RESULT", "$it")
            merchantName.text =
                pdfView.root.context.getString(
                    R.string.merchant_name_place_holder,
                    Singletons.getCurrentlyLoggedInUser()?.business_name
                        ?: "${BuildConfig.FLAVOR} POS MERCHANT",
                )
            terminalIdPlaceHolder.text =
                pdfView.appVersion.context.getString(
                    R.string.terminal_id_place_holder,
                    it.terminalId,
                )
            dateTime.text =
                pdfView.appVersion.context.getString(
                    R.string.date_time_place_holder,
                    it.transactionTimeInMillis.formatTransactionDate(),
                )
            transAmount.text =
                pdfView.appVersion.context.getString(
                    R.string.amount_place_holder,
                    divideLongBy100(it.amount).formatCurrencyAmountUsingCurrentModule(),
                )
            cardHolder.text =
                pdfView.appVersion.context.getString(
                    R.string.card_holder_place_holder,
                    it.cardHolder,
                )
            status.text =
                pdfView.appVersion.context.getString(
                    R.string.transaction_status_place_holder,
                    if (it.responseCode == "00" || it.responseCode == "16") "APPROVED" else "DECLINED",
                )
            responseCode.text =
                pdfView.appVersion.context.getString(
                    R.string.response_code_place_holder,
                    it.responseCode,
                )
            val messageText = getMessage()[it.responseCode] ?: "Unknown response"
            message.text =
                pdfView.appVersion.context.getString(
                    R.string.message_place_holder,
                    messageText,
                )
            cardType.text =
                pdfView.appVersion.context.getString(R.string.card_type_place_holder, it.cardLabel)
            appVersion.text =
                pdfView.appVersion.context.getString(
                    R.string.app_version_place_holder,
                    "${BuildConfig.FLAVOR} POS ${BuildConfig.VERSION_NAME}",
                )
            rrn.text = pdfView.appVersion.context.getString(R.string.rrn_place_holder, it.RRN)
            maskedPan.text =
                pdfView.appVersion.context.getString(
                    R.string.masked_pan_place_holder,
                    it.maskedPan,
                )
        }
    }
}

private fun Number.formatCurrencyAmountUsingCurrentModule(currencySymbol: String = "\u20A6"): String {
    val format = DecimalFormat("#,###.00")
    return "$currencySymbol${format.format(this)}"
}
