package com.woleapp.netpos.contactless.util

object UtilityParam {
    init {
        System.loadLibrary("api-keys")
    }

    private external fun getAuthUserName(): String

    private external fun getAuthPassword(): String

    private external fun getGetQrBaseUrl(): String

    private external fun getSendVerveOtpBaseUrl(): String

    private external fun getMerchantId(): String

    private external fun getWebViewBaseUrl(): String

    private external fun getContactlessExistingBaseUrl(): String

    private external fun getContactlessPaymentWithQrBaseUrl(): String

    private external fun getNotificationBaseUrl(): String

    private external fun getMpgsTag(): String

    private external fun getBaseUrlNetPosMqtt(): String

    private external fun getBaseUrlStormUtilities(): String

    private external fun getConfigurationDataIp(): String

    private external fun getConfigurationDataPort(): String

    private external fun getConfigurationDataVendorIp(): String

    private external fun getConfigurationDataVendorPort(): String

    private external fun getAppName(): String

    private external fun getAppPassword(): String

    private external fun getBaseUrlBills(): String

    private external fun getMasterPassQr(): String

    private external fun getSmsBaseUrl(): String

    private external fun getZenithBaseUrl(): String

    private external fun getStringNotificationBaseUrlNoApi(): String

    private external fun getNetposTransactionApiBaseUrl(): String

    private external fun getRrnServiceBaseUrl(): String

    private external fun getCardPinKey(): String

    private external fun getBearerTokenForMPGSTransaction(): String

    private external fun getFwBaseUrl(): String

    private external fun getPayByTransferBaseUrl(): String

    private external fun getProvidusMerchantsAccountBaseUrl(): String

    private external fun getFCMBMerchantsAccountBaseUrl(): String

    private external fun getPayByTransferBearerToken(): String

    private external fun getBankPSecretKey(): String

    val STRING_NOTIFICATION_BASE_URL_NO_API = getStringNotificationBaseUrlNoApi()
    val ZENITH_BASE_URL = getZenithBaseUrl()
    val SMS_BASE_URL = getSmsBaseUrl()
    val MASTER_PASS_QR = getMasterPassQr()
    val BASE_URL_BILLS = getBaseUrlBills()
    val STRING_AUTH_USER_NAME = getAuthUserName()
    val STRING_AUTH_PASSWORD = getAuthPassword()
    val STRING_GET_QR_BASE_URL = getGetQrBaseUrl()
    val STRING_SEND_VERVE_OTP_BASE_URL = getSendVerveOtpBaseUrl()
    val STRING_MERCHANT_ID = getMerchantId()
    val STRING_WEB_VIEW_BASE_URL = getWebViewBaseUrl()
    val STRING_CONTACTLESS_EXISTING_BASE_URL = getContactlessExistingBaseUrl()
    val STRING_CONTACTLESS_PAYMENT_WITH_QR_BASE_URL = getContactlessPaymentWithQrBaseUrl()
    val STRING_NOTIFICATION_BASE_URL = getNotificationBaseUrl()
    val STRING_MPGS_TAG = getMpgsTag()
    val BASE_URL_NETPOS_MQTT = getBaseUrlNetPosMqtt()
    val BASE_URL_STORM_UTILITIES = getBaseUrlStormUtilities()
    val CONFIGURATION_DATA_IP = getConfigurationDataIp()
    val CONFIGURATION_DATA_PORT = getConfigurationDataPort()
    val VEND_IP = getConfigurationDataVendorIp()
    val VEND_PORT = getConfigurationDataPort()
    val APP_NAME = getAppName()
    val APP_PASSWORD = getAppPassword()
    val STRING_NETPOS_TRANSACTION_API_BASE_URL = getNetposTransactionApiBaseUrl()
    val STRING_RRN_SERVICE_BASE_URL = getRrnServiceBaseUrl()
    val PIN_KEY = getCardPinKey()
    val BEARER_TOKEN_FOR_MPGS_TRANSACTION = getBearerTokenForMPGSTransaction()
    val FW_BASE_URL = getFwBaseUrl()
    val PAY_BY_TRANSFER_BASE_URL = getPayByTransferBaseUrl()
    val PROVIDUS_MERCHANTS_ACCOUNT_BASE_URL = getProvidusMerchantsAccountBaseUrl()
    val FCMB_MERCHANTS_ACCOUNT_BASE_URL = getFCMBMerchantsAccountBaseUrl()
    val PAY_BY_TRANSFER_BEARER_TOKEN = getPayByTransferBearerToken()
    val BANKP_SECRET_KEY = getBankPSecretKey()
}
