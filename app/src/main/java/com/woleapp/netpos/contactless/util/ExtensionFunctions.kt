package com.woleapp.netpos.contactless.util

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Color
import android.text.InputFilter
import android.text.Spannable
import android.text.SpannableString
import android.text.Spanned
import android.text.style.ForegroundColorSpan
import android.util.Base64
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.core.content.ContextCompat
import com.google.zxing.BarcodeFormat
import com.google.zxing.MultiFormatWriter
import com.google.zxing.common.BitMatrix
import com.woleapp.netpos.contactless.R
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable
import okhttp3.ResponseBody
import retrofit2.HttpException
import timber.log.Timber
import java.text.SimpleDateFormat
import java.util.*
import java.util.regex.Matcher
import java.util.regex.Pattern

fun Long.formatDate(): String? = SimpleDateFormat("yyyy-MM-dd hh:mm a", Locale.getDefault()).format(Date(this))

fun Long.formatTransactionDate(): String {
    val sdf = SimpleDateFormat("yyyy-MM-dd hh:mm a", Locale.getDefault())
    sdf.timeZone = TimeZone.getTimeZone("UTC") // Change to your desired time zone
    return sdf.format(Date(this))
}

fun Disposable.disposeWith(compositeDisposable: CompositeDisposable) {
    compositeDisposable.add(this)
}

fun xorHex(
    a: String,
    b: String,
): String? {
    // TODO: Validation
    val chars = CharArray(a.length)
    for (i in chars.indices) {
        chars[i] = toHex(fromHex(a[i]) xor fromHex(b[i]))
    }
    return String(chars)
}

private fun fromHex(c: Char): Int {
    if (c in '0'..'9') {
        return c - '0'
    }
    if (c in 'A'..'F') {
        return c - 'A' + 10
    }
    if (c in 'a'..'f') {
        return c - 'a' + 10
    }
    throw IllegalArgumentException()
}

private fun toHex(nybble: Int): Char {
    require(!(nybble < 0 || nybble > 15))
    return "0123456789ABCDEF"[nybble]
}

fun copyTextToClipboard(
    context: Context,
    label: String,
    text: String,
) {
    val clipboard: ClipboardManager? =
        context.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager?
    val clip = ClipData.newPlainText(label, text)
    clipboard!!.setPrimaryClip(clip)
}

fun String.isValidIpAddress(): Boolean {
    val PATTERN =
        Regex.fromLiteral("^((0|1\\d?\\d?|2[0-4]?\\d?|25[0-5]?|[3-9]\\d?)\\.){3}(0|1\\d?\\d?|2[0-4]?\\d?|25[0-5]?|[3-9]\\d?)$")
    return this.matches(PATTERN)
}

// fun NibssAID.toPosEmvAid(): PosEmvAid {
//    val emvAid = PosEmvAid()
//    emvAid.AID = PosUtils.hexStringToBytes(this.AID)
//    emvAid.Version = PosUtils.hexStringToBytes(this.applicationVersion)
//    emvAid.TACDefault = PosUtils.hexStringToBytes(this.tacDefault)
//    emvAid.TACOnline = PosUtils.hexStringToBytes(this.tacOnline)
//    emvAid.TACDenial = PosUtils.hexStringToBytes(this.tacDenial)
//    emvAid.tDOL = PosUtils.hexStringToBytes(this.TDOL)
//    emvAid.dDOL = PosUtils.hexStringToBytes(this.DDOL)
//    emvAid.SelFlag = true
//    emvAid.TargetPer = 0
//    emvAid.MaxTargetPer = 99
//    emvAid.FloorLimit = 0
//    emvAid.Threshold = 10000
//    emvAid.ContactlessTransMoneyLimit = 200000
//    emvAid.TermDoCvmMoneyLimit = 200000
//    emvAid.ContactlessOfflineTransMoneyLimit = 0
//    return emvAid
// }
//
// fun NibssCA.toPosEmvCa(): PosEmvCapk {
//    val emvCapk = PosEmvCapk()
//    emvCapk.RID = PosUtils.hexStringToBytes(this.RID)
//    emvCapk.KeyID = PosUtils.hexStringToBytes(this.keyIndex)[0]
//    emvCapk.Modul = PosUtils.hexStringToBytes(this.modulus)
//    emvCapk.Exponent = PosUtils.hexStringToBytes(this.exponent)
//    emvCapk.CheckSum = PosUtils.hexStringToBytes(this.hash)
//    emvCapk.HashInd = this.hashAlgorithm.toByteOrNull() ?: PosEmvCapk.HASH_IND_SHA1
//    emvCapk.ArithInd = this.keyAlgorithm.toByteOrNull() ?: PosEmvCapk.AIRTH_IND_RSA
//    return emvCapk
// }

fun Throwable.getResponseBody(): String {
    return if (isHttpException()) {
        val body: ResponseBody? =
            (this as HttpException).response()!!.errorBody()
        try {
            val sBody = body?.string()
            Timber.e("body $sBody")
            sBody
                ?: "{\"message\": \"An unexpected error occurred {${this.localizedMessage}}, Please try again\"}"
        } catch (e1: Exception) {
            // userResponseResult.setValue(Error(Throwable("An unexpected error occurred")))
            "{\"message\": \"An unexpected error occurred {${this.localizedMessage}}, Please try again\"}"
        } finally {
            body?.close()
        }
    } else {
        "{\"message\": \"An unexpected error occurred, Please try again\"}"
    }
}

fun Throwable.isHttpException(): Boolean = (this is HttpException && this.code() in 400..599)

fun Throwable.isHttpStatusCode(statusCode: Int): Boolean = (this is HttpException && this.code() == statusCode)

fun getPlansJson(context: Context): String =
    context.resources.openRawResource(R.raw.plans)
        .bufferedReader().use { it.readText() }

fun getServiceProviderPlansJson(context: Context): String =
    context.resources.openRawResource(R.raw.data_plans)
        .bufferedReader().use { it.readText() }

fun encodeAsBitmap(
    source: String,
    width: Int,
    height: Int,
): Bitmap? {
    val result: BitMatrix =
        try {
            MultiFormatWriter().encode(source, BarcodeFormat.QR_CODE, width, height, null)
        } catch (e: Exception) {
            return null
        }

    val w = result.width
    val h = result.height
    val pixels = IntArray(w * h)

    for (y in 0 until h) {
        val offset = y * w
        for (x in 0 until w) {
            pixels[offset + x] = if (result[x, y]) Color.BLACK else Color.WHITE
        }
    }
    val bitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888)
    bitmap.setPixels(pixels, 0, width, 0, 0, w, h)

    return bitmap
}

fun String.decodeBase64ToBitmap(): Bitmap? {
    val decodedString: ByteArray = Base64.decode(this, Base64.DEFAULT)
    return BitmapFactory.decodeByteArray(decodedString, 0, decodedString.size)
}

fun AlertDialog.dismissIfShowing() {
    if (this.isShowing) {
        this.dismiss()
    }
}

fun TextView.highlightTexts(vararg words: String?) {
    val spannable: Spannable = SpannableString(text.toString())
    words.forEach { word ->
        word?.let {
            if (text.toString().contains(it)) {
                spannable.setSpan(
                    ForegroundColorSpan(ContextCompat.getColor(context, R.color.colorPrimaryDark)),
                    text.toString().indexOf(it),
                    text.toString().indexOf(it).plus(it.length),
                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE,
                )
            }
        }
    }
    this.text = spannable
}

internal class DecimalDigitsInputFilter(digitsBeforeZero: Int = 8, digitsAfterZero: Int = 2) :
    InputFilter {
    private val mPattern: Pattern

    init {
        mPattern =
            Pattern.compile("[0-9]{0," + (digitsBeforeZero - 1) + "}+((\\.[0-9]{0," + (digitsAfterZero - 1) + "})?)||(\\.)?")
    }

    override fun filter(
        source: CharSequence,
        start: Int,
        end: Int,
        dest: Spanned,
        dstart: Int,
        dend: Int,
    ): CharSequence? {
        val matcher: Matcher = mPattern.matcher(dest)
        return if (!matcher.matches()) "" else null
    }
}

// fun readableStringToLocal(dateString: String): String {
//    // Handle input as an ISO 8601 date-time string
//    try {
//        val instant = java.time.Instant.parse(dateString) // Parses "2024-11-14T16:02:38.000Z"
//        val zonedDateTime = instant.atZone(java.time.ZoneId.of("UTC"))
//        val outputFormatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
//
//        return outputFormatter.format(zonedDateTime) // Convert to desired format
//    } catch (e: java.time.format.DateTimeParseException) {
//        return "Invalid date format: ${e.message}"
//    } catch (e: Exception) {
//        return "Error: ${e.message}"
//    }
//

fun readableStringToLocal(dateString: String): String {
    return try {
        val sanitizedDateString = dateString.replace("\\.\\d{3}Z$".toRegex(), "Z") // Removes .000Z
        val instant = java.time.Instant.parse(sanitizedDateString)
        val outputFormatter =
            java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
                .withZone(java.time.ZoneId.of("UTC")) // Keep it in UTC

        outputFormatter.format(instant)
    } catch (e: java.time.format.DateTimeParseException) {
        "Invalid date format: ${e.message}"
    } catch (e: Exception) {
        "Error: ${e.message}"
    }
}

fun Long.formatDateForImmediateTransactionResponse(): String {
    val sdf = SimpleDateFormat("yyyy-MM-dd hh:mm a", Locale.getDefault())
    sdf.timeZone = TimeZone.getTimeZone("Africa/Lagos") // Change to your desired time zone
    return sdf.format(Date(this))
}
// fun Long.formatDate(): String? = SimpleDateFormat("yyyy-MM-dd hh:mm a", Locale.getDefault()).format(Date(this))
