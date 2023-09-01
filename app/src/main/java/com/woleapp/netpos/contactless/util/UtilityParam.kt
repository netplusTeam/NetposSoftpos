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
    private external fun getTestKey1(): String
    private external fun getTestKey2(): String
    private external fun getEpmsLiveKey1(): String
    private external fun getEpmsLiveKey2(): String
    private external fun getCertKey1(): String
    private external fun getCertKey2(): String
    private external fun getPosVasLiveKey1(): String
    private external fun getPosVasLiveKey2(): String
    private external fun getPartnerIdFirstB(): String
    private external fun getPartnerIdEasyPay(): String
    private external fun getPartnerIdFcmbEasyPay(): String
    private external fun getPartnerIdEasyPayFcmb(): String
    private external fun getPartnerIdProvidusPos(): String
    private external fun getPartnerIdStanbic(): String
    private external fun getPartnerIdProvidus(): String
    private external fun getPartnerIdProvidusSoftPos(): String
    private external fun getPartnerIdWemaB(): String
    private external fun getPartnerIdZenith(): String
    private external fun getXClientId(): String
    private external fun getXAccessCode(): String
    private external fun getTlvByteWrapperConstant(): String
    private external fun getEncryptionSecreteKey(): String
    private external fun getEncryptionSecreteIv(): String

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
    val STRING_TEST_KEY_1 = getTestKey1()
    val STRING_TEST_KEY_2 = getTestKey2()
    val STRING_EPMS_LIVE_KEY_1 = getEpmsLiveKey1()
    val STRING_EPMS_LIVE_KEY_2 = getEpmsLiveKey2()
    val STRING_CERT_KEY_1 = getCertKey1()
    val STRING_CERT_KEY_2 = getCertKey2()
    val STRING_POS_VAS_LIVE_KEY_1 = getPosVasLiveKey1()
    val STRING_POS_VAS_LIVE_KEY_2 = getPosVasLiveKey2()
    val STRING_PARTNER_ID_FIRST_B = getPartnerIdFirstB()
    val STRING_PARTNER_ID_EASY_PAY = getPartnerIdEasyPay()
    val STRING_PARTNER_ID_FCMB_EASY_PAY = getPartnerIdFcmbEasyPay()
    val STRING_PARTNER_ID_EASY_PAY_FCMB = getPartnerIdEasyPayFcmb()
    val STRING_PARTNER_ID_PROVIDUS_POS = getPartnerIdProvidusPos()
    val STRING_PARTNER_ID_STANBIC = getPartnerIdStanbic()
    val STRING_PARTNER_ID_PROVIDUS = getPartnerIdProvidus()
    val STRING_PARTNER_ID_PROVIDUS_SOFT_POS = getPartnerIdProvidusSoftPos()
    val STRING_PARTNER_ID_WEMA_B = getPartnerIdWemaB()
    val STRING_PARTNER_ID_ZENITH = getPartnerIdZenith()
    val STRING_X_CLIENT_ID = getXClientId()
    val STRING_X_ACCESS_CODE = getXAccessCode()
    val STRING_TLV_BYTE_WRAPPER_CONSTANT = getTlvByteWrapperConstant()
    val STRING_SECRET_KEY = getEncryptionSecreteKey()
    val STRING_SECRET_IV = getEncryptionSecreteIv()
}
