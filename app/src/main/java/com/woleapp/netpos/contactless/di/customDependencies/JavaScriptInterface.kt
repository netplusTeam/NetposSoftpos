package com.woleapp.netpos.contactless.di.customDependencies

import android.webkit.JavascriptInterface
import androidx.core.os.bundleOf
import androidx.fragment.app.FragmentManager
import com.google.gson.Gson
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.model.QrTransactionResponseModel
import com.woleapp.netpos.contactless.ui.dialog.ResponseModal
import com.woleapp.netpos.contactless.util.AppConstants.QR_TRANSACTION_RESULT_BUNDLE_KEY
import com.woleapp.netpos.contactless.util.AppConstants.QR_TRANSACTION_RESULT_REQUEST_KEY
import com.woleapp.netpos.contactless.util.AppConstants.SEPARATOR
import com.woleapp.netpos.contactless.util.AppConstants.STRING_QR_RESPONSE_MODAL_DIALOG_TAG
import com.woleapp.netpos.contactless.util.RandomPurposeUtil
import com.woleapp.netpos.contactless.util.Singletons
import com.woleapp.netpos.contactless.util.UtilityParam
import dagger.assisted.Assisted
import dagger.assisted.AssistedInject

class JavaScriptInterface @AssistedInject constructor(
    @Assisted private val fragmentManager: FragmentManager,
    @Assisted("redirectHtml") private val redirectHtml: String,
    @Assisted("transId") private val transId: String,
) {
    private val context = fragmentManager.fragments.first().requireContext()
    private val loader = RandomPurposeUtil.alertDialog(context, R.layout.layout_loading_dialog)
    private val responseModal: ResponseModal = ResponseModal()
    private val webViewReQueryUrl =
        UtilityParam.STRING_WEB_VIEW_BASE_URL + UtilityParam.STRING_MERCHANT_ID + "/"

    @JavascriptInterface
    fun sendValueToWebView(): String =
        "$redirectHtml$SEPARATOR$transId$SEPARATOR$webViewReQueryUrl"

    @JavascriptInterface
    fun webViewCallback(webViewResponse: String) {
        val responseFromWebView = Gson().fromJson(
            webViewResponse,
            QrTransactionResponseModel::class.java,
        )
        val response = responseFromWebView.mapQrTransRespToQrRespFinalModel(
            accType = "",
            terminalId = Singletons.getCurrentlyLoggedInUser()?.terminal_id ?: "",
            merchantId = UtilityParam.STRING_MERCHANT_ID,
        )

        fragmentManager.setFragmentResult(
            QR_TRANSACTION_RESULT_REQUEST_KEY,
            bundleOf(QR_TRANSACTION_RESULT_BUNDLE_KEY to response),
        )
        fragmentManager.popBackStack()
        responseModal.show(fragmentManager, STRING_QR_RESPONSE_MODAL_DIALOG_TAG)
    }
}
