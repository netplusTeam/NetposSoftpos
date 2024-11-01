package com.woleapp.netpos.contactless.util

import android.annotation.SuppressLint
import android.app.Activity
import android.app.AlertDialog
import android.content.Context
import android.graphics.Typeface
import android.os.Build
import android.provider.Settings
import android.telephony.TelephonyManager
import android.text.SpannableString
import android.text.Spanned
import android.text.style.ClickableSpan
import android.text.style.StyleSpan
import android.util.Base64
import android.view.LayoutInflater
import android.view.View
import android.view.inputmethod.InputMethodManager
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LiveData
import androidx.lifecycle.Observer
import com.danbamitale.epmslib.entities.TransactionResponse
import com.google.android.material.snackbar.Snackbar
import com.google.gson.Gson
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.ui.dialog.LoadingDialog
import com.woleapp.netpos.contactless.util.AppConstants.STRING_LOADING_DIALOG_TAG
import io.reactivex.Scheduler
import io.reactivex.Single
import io.reactivex.disposables.CompositeDisposable
import java.text.DateFormat
import java.text.DecimalFormat
import java.text.ParseException
import java.text.SimpleDateFormat
import java.util.*
import java.util.regex.Matcher
import java.util.regex.Pattern

object RandomPurposeUtil {
    private val bankList =
        mapOf(
            "firstbank" to "firstbank",
            "easypay" to "fcmb",
            "fcmbeasypay" to "fcmb",
            "easypayfcmb" to "fcmb",
            "providuspos" to "providus",
            "stanbic" to "stanbic",
            "providus" to "providus",
            "providussoftpos" to "providus",
            "wemabank" to "wemabank",
            "zenith" to "zenith",
            "unitybank" to "unitybank",
            "polaris" to "polaris",
            "netpos" to "netpos",
        )

    fun stringToBase64(text: String): String {
        val data: ByteArray = text.toByteArray()
        return Base64.encodeToString(data, Base64.DEFAULT)
    }

    fun base64ToPlainText(base64String: String): String {
        val decodedString = Base64.decode(base64String, Base64.DEFAULT)
        return String(decodedString)
    }

    fun LifecycleOwner.showSnackBar(
        rootView: View,
        message: String,
    ) {
        Snackbar.make(rootView, message, Snackbar.LENGTH_LONG).show()
    }

    @SuppressLint("ConstantLocale")
    fun getCurrentDateTime() =
        SimpleDateFormat(
            "yyyy-MM-dd hh:mm a",
            Locale.getDefault(),
        ).format(System.currentTimeMillis())
            .format(Date())

    @SuppressLint("SimpleDateFormat")
    fun dateStr2Long(
        dateStr: String,
        inputDateFormat: String,
    ): Long {
        val formattedDateString = dateStr.removeSuffix(dateStr.takeLast(3))
        return try {
            val c = Calendar.getInstance()
            c.time =
                SimpleDateFormat(inputDateFormat)
                    .parse(dateStr)!!
            c.timeInMillis
        } catch (e: ParseException) {
            e.printStackTrace()
            0
        }
    }

    fun generateRandomRrn(length: Int): String {
        val random = Random()
        var digits = ""
        digits += (random.nextInt(9) + 1).toString()
        for (i in 1 until length) {
            digits += (random.nextInt(10) + 0).toString()
        }
        return digits
    }

    @Throws(IndexOutOfBoundsException::class)
    fun customSpannableString(
        text: String,
        startIndex: Int,
        endIndex: Int,
        clickAction: () -> Unit,
    ): SpannableString {
        val spannedText = SpannableString(text)
        val styleSpan = StyleSpan(Typeface.BOLD)
        val clickableSpan =
            object : ClickableSpan() {
                override fun onClick(widget: View) {
                    clickAction()
                }
            }
        if (startIndex < 0) throw IndexOutOfBoundsException("$startIndex must be at least 0")
        if (text.isEmpty()) throw IndexOutOfBoundsException("$text can't be empty")
        if (endIndex > text.length) throw IndexOutOfBoundsException("$endIndex can't be greater than the length of $text")
        spannedText.setSpan(styleSpan, startIndex, endIndex, Spanned.SPAN_INCLUSIVE_EXCLUSIVE)
        spannedText.setSpan(
            clickableSpan,
            startIndex,
            endIndex,
            Spanned.SPAN_INCLUSIVE_EXCLUSIVE,
        )
        return spannedText
    }

    fun <T> observeServerResponseActivity(
        context: Context,
        lifecycle: LifecycleOwner,
        serverResponse: LiveData<Resource<T>>,
        loadingDialog: LoadingDialog,
        fragmentManager: FragmentManager,
        successAction: () -> Unit,
    ) {
        serverResponse.observe(lifecycle) {
            when (it.status) {
                Status.SUCCESS -> {
                    loadingDialog.dismiss()
                    if (
                        it.data is PostQrToServerResponse ||
                        it.data is PostQrToServerVerveResponseModel ||
                        it.data is QrTransactionResponseModel ||
                        it.data is VerveTransactionResponse ||
                        it.data is ConfirmOTPResponse ||
                        it.data is ExistingAccountRegisterResponse
                    ) {
                        successAction()
                    } else {
                        Toast.makeText(context, R.string.an_error_occurred, Toast.LENGTH_SHORT)
                            .show()
                    }
                }
                Status.LOADING -> {
                    loadingDialog.show(
                        fragmentManager,
                        STRING_LOADING_DIALOG_TAG,
                    )
                }
                Status.ERROR -> {
                    loadingDialog.dismiss()
                    Toast.makeText(context, R.string.an_error_occurred, Toast.LENGTH_SHORT).show()
                }
                Status.TIMEOUT -> {
                    loadingDialog.dismiss()
                    Toast.makeText(context, R.string.timeOut, Toast.LENGTH_SHORT).show()
                }
            }
        }
    }

    fun <T> Fragment.observeServerResponse(
        serverResponse: LiveData<Resource<T>>,
        loadingDialog: LoadingDialog,
        fragmentManager: FragmentManager,
        successAction: () -> Unit,
    ) {
        serverResponse.observe(this.viewLifecycleOwner) {
            when (it.status) {
                Status.SUCCESS -> {
                    loadingDialog.dismiss()
                    if (
                        it.data is PostQrToServerResponse ||
                        it.data is PostQrToServerVerveResponseModel ||
                        it.data is QrTransactionResponseModel ||
                        it.data is VerveTransactionResponse ||
                        it.data is AccountNumberLookUpResponse ||
                        it.data is ConfirmOTPResponse ||
                        it.data is ExistingAccountRegisterResponse
                    ) {
                        successAction()
                    } else {
                        showSnackBar(this.requireView(), getString(R.string.an_error_occurred))
                    }
                }
                Status.LOADING -> {
                    loadingDialog.show(
                        fragmentManager,
                        STRING_LOADING_DIALOG_TAG,
                    )
                }
                Status.ERROR -> {
                    loadingDialog.dismiss()
                }
                Status.TIMEOUT -> {
                    loadingDialog.dismiss()
                    showSnackBar(this.requireView(), getString(R.string.timeOut))
                }
            }
        }
    }

    fun alertDialog(
        context: Context,
        layout: Int,
    ): AlertDialog {
        val dialogView: View = LayoutInflater.from(context).inflate(layout, null)
        val dialogBuilder: AlertDialog.Builder = AlertDialog.Builder(context)
        dialogBuilder.setCancelable(false)
        dialogBuilder.setView(dialogView)

        return dialogBuilder.create()
    }

    fun alertDialog(
        context: Context,
        setCancelable: Boolean,
    ): AlertDialog {
        val dialogView: View =
            LayoutInflater.from(context).inflate(R.layout.layout_loading_dialog, null)
        val dialogBuilder: AlertDialog.Builder = AlertDialog.Builder(context)
        dialogBuilder.setCancelable(setCancelable)
        dialogBuilder.setView(dialogView)

        return dialogBuilder.create()
    }

    fun <T> Fragment.observeServerResponse(
        serverResponse: Single<Resource<T>>,
        loadingDialog: AlertDialog,
        compositeDisposable: CompositeDisposable,
        ioScheduler: Scheduler,
        mainThreadSchedulers: Scheduler,
        successAction: () -> Unit,
    ) {
        compositeDisposable.add(
            serverResponse.subscribeOn(ioScheduler).observeOn(mainThreadSchedulers)
                .subscribe { data, error ->
                    data?.let {
                        when (it.status) {
                            Status.SUCCESS -> {
                                loadingDialog.dismiss()
                                if (
                                    it.data is PostQrToServerResponse ||
                                    it.data is PostQrToServerVerveResponseModel ||
                                    it.data is QrTransactionResponseModel ||
                                    it.data is VerveTransactionResponse ||
                                    it.data is AccountNumberLookUpResponse ||
                                    it.data is ConfirmOTPResponse ||
                                    it.data is ExistingAccountRegisterResponse ||
                                    it.data is BankWExistingRegistrationResponse ||
                                    it.data is FeedbackResponse ||
                                    it.data is String
                                ) {
                                    successAction()
                                } else {
                                    showSnackBar(
                                        this.requireView(),
                                        getString(R.string.an_error_occurred),
                                    )
                                }
                            }
                            Status.LOADING -> {
                                loadingDialog.show()
                            }
                            Status.ERROR -> {
                                loadingDialog.cancel()
                                loadingDialog.dismiss()
                                if (it.data is String) {
                                    showToast(it.data)
                                } else {
                                    showToast("An error occurred, please try again")
                                }
                            }
                            Status.TIMEOUT -> {
                                loadingDialog.cancel()
                                loadingDialog.dismiss()
                                showSnackBar(this.requireView(), getString(R.string.timeOut))
                            }
                        }
                    }
                    error?.let {
                        loadingDialog.cancel()
                        loadingDialog.dismiss()
                        showSnackBar(this.requireView(), getString(R.string.an_error_occurred))
                    }
                },
        )
    }

    fun <T> Fragment.observeServerResponse(
        serverResponse: LiveData<Resource<T>>,
        loadingDialog: AlertDialog,
        fragmentManager: FragmentManager,
        successAction: () -> Unit,
    ) {
        serverResponse.observe(this.viewLifecycleOwner) {
            when (it.status) {
                Status.SUCCESS -> {
                    loadingDialog.dismiss()
                    if (
                        it.data is PostQrToServerResponse ||
                        it.data is PostQrToServerVerveResponseModel ||
                        it.data is QrTransactionResponseModel ||
                        it.data is VerveTransactionResponse ||
                        it.data is AccountNumberLookUpResponse ||
                        it.data is ConfirmOTPResponse ||
                        it.data is ExistingAccountRegisterResponse ||
                        it.data is String ||
                        it.data is ResetPasswordResponseForProvidus ||
                        it.data is GeneralResponse
                    ) {
                        successAction()
                    } else {
                        showSnackBar(this.requireView(), getString(R.string.an_error_occurred))
                    }
                }
                Status.LOADING -> {
                    loadingDialog.show()
                }
                Status.ERROR -> {
                    loadingDialog.cancel()
                    loadingDialog.dismiss()
                }
                Status.TIMEOUT -> {
                    loadingDialog.cancel()
                    loadingDialog.dismiss()
                    showSnackBar(this.requireView(), getString(R.string.timeOut))
                }
            }
        }
    }

    fun <T> Fragment.observeServerResponseOnce(
        serverResponse: LiveData<Resource<T>>,
        loadingDialog: AlertDialog,
        fragmentManager: FragmentManager,
        successAction: () -> Unit,
    ) {
        serverResponse.observe(this.viewLifecycleOwner) {
            when (it.status) {
                Status.SUCCESS -> {
                    loadingDialog.dismiss()
                    if (
                        it.data is PostQrToServerResponse ||
                        it.data is PostQrToServerVerveResponseModel ||
                        it.data is QrTransactionResponseModel ||
                        it.data is VerveTransactionResponse ||
                        it.data is AccountNumberLookUpResponse ||
                        it.data is ConfirmOTPResponse ||
                        it.data is ExistingAccountRegisterResponse ||
                        it.data is String ||
                        it.data is GeneralResponse
                    ) {
                        successAction()
                    } else {
                        showSnackBar(this.requireView(), getString(R.string.an_error_occurred))
                    }
                }
                Status.LOADING -> {
                    loadingDialog.show()
                }
                Status.ERROR -> {
                    loadingDialog.cancel()
                    loadingDialog.dismiss()
                }
                Status.TIMEOUT -> {
                    loadingDialog.cancel()
                    loadingDialog.dismiss()
                    showToast(getString(R.string.timeOut))
                }
            }
        }
        serverResponse.observeOnce(this.viewLifecycleOwner, null)
    }

    fun <T> LiveData<T>.observeOnce(
        lifecycleOwner: LifecycleOwner,
        observer: Observer<T>?,
    ) {
        observe(
            lifecycleOwner,
            object : Observer<T> {
                override fun onChanged(value: T) {
                    observer?.onChanged(value)
                    removeObserver(this)
                }
            },
        )
    }

    fun closeSoftKeyboard(
        context: Context,
        activity: Activity,
    ) {
        activity.currentFocus?.let { view ->
            val imm =
                context.getSystemService(Context.INPUT_METHOD_SERVICE) as? InputMethodManager
            imm?.hideSoftInputFromWindow(view.windowToken, 0)
        }
    }

    fun formatFailedVerveTransRespToExtractIswResponse(transResponse: VerveTransactionResponse): VerveTransactionResponse {
        val iswResponseInStringFormat =
            transResponse.message.split("response:\n").last().removeSuffix("\n\"")
                .replace("\\", "")
        val iswResponse = Gson().fromJson(iswResponseInStringFormat, Response::class.java)
        return transResponse.copy(
            code = iswResponse.errors.first().code,
            message = iswResponse.errors.first().message,
        )
    }

    fun alertDialog(context: Context): AlertDialog {
        val dialogView: View =
            LayoutInflater.from(context)
                .inflate(R.layout.layout_loading_dialog, null)
        val dialogBuilder: AlertDialog.Builder = AlertDialog.Builder(context)
        dialogBuilder.setCancelable(false)
        dialogBuilder.setView(dialogView)

        return dialogBuilder.create()
    }

    fun Number.formatCurrencyAmountUsingCurrentModule(currencySymbol: String = "\u20A6"): String {
        val format = DecimalFormat("#,###.00")
        return "$currencySymbol${format.format(this)}"
    }

    fun getDeviceId(context: Context): String {
        val deviceId: String =
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                Settings.Secure.getString(context.contentResolver, Settings.Secure.ANDROID_ID)
            } else {
                val mTelephony = context.getSystemService(Context.TELEPHONY_SERVICE) as TelephonyManager
                if (mTelephony.deviceId != null) {
                    mTelephony.deviceId
                } else {
                    Settings.Secure.getString(
                        context.contentResolver,
                        Settings.Secure.ANDROID_ID,
                    )
                }
            }
        return deviceId
    }

    fun getBankName(): String? = bankList[BuildConfig.FLAVOR]

    fun initPartnerId(): String {
        var partnerID = ""
        val bankList =
            mapOf(
                "firstbank" to "7FD43DF1-633F-4250-8C6F-B49DBB9650EA",
                "easypay" to "1B0E68FD-7676-4F2C-883D-3931C3564190",
                "fcmbeasypay" to "1B0E68FD-7676-4F2C-883D-3931C3564190",
                "easypayfcmb" to "1B0E68FD-7676-4F2C-883D-3931C3564190",
                "providuspos" to "8B26F328-040F-4F27-A5BC-4414AB9D1EFA",
                "stanbic" to "377F47E9-55F9-45E0-B77A-1BAA4BC88026",
                "providus" to "8B26F328-040F-4F27-A5BC-4414AB9D1EFA",
                "providussoftpos" to "8B26F328-040F-4F27-A5BC-4414AB9D1EFA",
                "wemabank" to "1E3D050B-6995-495F-982A-0511114959C8",
                "zenith" to "C936667C-0B02-4A34-80D0-0FC5B525256E",
                "tingo" to "1EED19E0-9625-49AA-A0CF-2EFCD8F30036",
            )

        for (element in bankList) {
            if (element.key == BuildConfig.FLAVOR) {
                partnerID = element.value
            }
        }
        return partnerID
    }

    fun isDebuggableModeEnabled(context: Context): Boolean {
        return Settings.Secure.getInt(context.contentResolver, Settings.Secure.ADB_ENABLED, 0) == 1
    }

    fun passwordValidation(password: String): Boolean {
        return if (password.length > 7) {
            val letter: Pattern = Pattern.compile("[a-zA-z]")
            val digit: Pattern = Pattern.compile("[0-9]")
            //  val special: Pattern = Pattern.compile("[!@#$%&*()_.+=|<>?{}\\[\\]~-]")
            val special: Pattern = Pattern.compile("[!@#%^&amp;*()_+=\\[\\]>{}'|,\\~`>/.?\\:;-]")
            // Pattern eight = Pattern.compile (".{8}");
            val hasLetter: Matcher = letter.matcher(password)
            val hasDigit: Matcher = digit.matcher(password)
            val hasSpecial: Matcher = special.matcher(password)
            hasLetter.find() && hasDigit.find() && hasSpecial.find()
        } else {
            false
        }
    }

    fun mapDanbamitaleResponseToResponseX(input: TransactionResponse): TransactionResponseX {
        with(input) {
            return TransactionResponseX(
                AID = AID,
                rrn = RRN,
                STAN = STAN,
                TSI = TSI,
                TVR = TVR,
                accountType = accountType.name,
                acquiringInstCode = acquiringInstCode,
                additionalAmount_54 = additionalAmount_54,
                amount = amount.toInt(),
                appCryptogram = appCryptogram,
                authCode = authCode,
                cardExpiry = cardExpiry,
                cardHolder = cardHolder,
                cardLabel = cardLabel,
                id = id.toInt(),
                localDate_13 = localDate_13,
                localTime_12 = localTime_12,
                maskedPan = maskedPan,
                merchantId = merchantId,
                originalForwardingInstCode = originalForwardingInstCode,
                otherAmount = otherAmount.toInt(),
                otherId = otherId,
                responseCode = responseCode,
                responseDE55 = responseDE55 ?: "",
                terminalId = terminalId,
                transactionTimeInMillis = transactionTimeInMillis,
                transactionType = transactionType.name,
                transmissionDateTime = getCurrentDateTime(),
            )
        }
    }

    val formattedTime =
        SimpleDateFormat("hh:mm:ss", Locale.getDefault()).format(System.currentTimeMillis())
            .format(Date())

    fun divideLongBy100(input: Long): Double {
        val result = input / 100L
        val decimalPart = input % 100L
        return result + (decimalPart.toDouble() / 100)
    }

    @SuppressLint("SimpleDateFormat")
    fun getDate(): String {
        val dateFormatter: DateFormat = SimpleDateFormat("ddMM")
        val today = Date()
        return dateFormatter.format(today)
    }

    @SuppressLint("SimpleDateFormat")
    fun getCurrentDate(): String {
        val dateFormatter: DateFormat = SimpleDateFormat("dd-MM-yyyy")
        val today = Date()
        return dateFormatter.format(today)
    }

    fun dateStr2Long(dateStr: String): Long {
        return try {
            val c = Calendar.getInstance()
            c.time =
                SimpleDateFormat("yyyy-MM-dd hh:mm")
                    .parse(dateStr)!!
            c.timeInMillis
        } catch (e: ParseException) {
            e.printStackTrace()
            0
        }
    }
}
