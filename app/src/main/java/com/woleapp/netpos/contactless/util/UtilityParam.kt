package com.woleapp.netpos.contactless.util

import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.util.encryption.DataEncryptionAndDecryptionImpl

object UtilityParam {

    init {
        System.loadLibrary("api-keys")
    }

    private external fun getEncryptionSecreteKey(): String
    private external fun getEncryptionSecreteIv(): String
    private external fun getCredCredentials(): String
    private external fun getCredSecK(): String
    private external fun getCredIv(): String

    val STRING_SECRET_KEY = getEncryptionSecreteKey()
    val STRING_SECRET_IV = getEncryptionSecreteIv()

    val STRING_REQ_CRED_CREDENTIALS = getCredCredentials()
    val STRING_REQ_CRED_SEC_K = getCredSecK()
    val STRING_REQ_CRED_IV = getCredIv()

    private val encryptionHelper: DataEncryptionAndDecryption =
        DataEncryptionAndDecryptionImpl(
            STRING_REQ_CRED_SEC_K,
            STRING_REQ_CRED_IV,
        )

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
    private external fun getNetPosMqttPortNumber(): String
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

    val STRING_NOTIFICATION_BASE_URL_NO_API =
        encryptionHelper.decryptData(getStringNotificationBaseUrlNoApi())
    val ZENITH_BASE_URL = encryptionHelper.decryptData(getZenithBaseUrl())
    val SMS_BASE_URL = encryptionHelper.decryptData(getSmsBaseUrl())
    val MASTER_PASS_QR = encryptionHelper.decryptData(getMasterPassQr())
    val BASE_URL_BILLS = encryptionHelper.decryptData(getBaseUrlBills())
    val STRING_AUTH_USER_NAME = encryptionHelper.decryptData(getAuthUserName())
    val STRING_AUTH_PASSWORD = encryptionHelper.decryptData(getAuthPassword())
    val STRING_GET_QR_BASE_URL = encryptionHelper.decryptData(getGetQrBaseUrl())
    val STRING_SEND_VERVE_OTP_BASE_URL = encryptionHelper.decryptData(getSendVerveOtpBaseUrl())
    val STRING_MERCHANT_ID = encryptionHelper.decryptData(getMerchantId())
    val STRING_WEB_VIEW_BASE_URL = encryptionHelper.decryptData(getWebViewBaseUrl())
    val STRING_CONTACTLESS_EXISTING_BASE_URL =
        encryptionHelper.decryptData(getContactlessExistingBaseUrl())
    val STRING_CONTACTLESS_PAYMENT_WITH_QR_BASE_URL =
        encryptionHelper.decryptData(getContactlessPaymentWithQrBaseUrl())
    val STRING_NOTIFICATION_BASE_URL = encryptionHelper.decryptData(getNotificationBaseUrl())
    val STRING_MPGS_TAG = encryptionHelper.decryptData(getMpgsTag())
    val BASE_URL_NETPOS_MQTT = encryptionHelper.decryptData(getBaseUrlNetPosMqtt())
    val STRING_NETPOS_MQTT_PORT = encryptionHelper.decryptData(getNetPosMqttPortNumber())
    val BASE_URL_STORM_UTILITIES = encryptionHelper.decryptData(getBaseUrlStormUtilities())
    val CONFIGURATION_DATA_IP = encryptionHelper.decryptData(getConfigurationDataIp())
    val CONFIGURATION_DATA_PORT = encryptionHelper.decryptData(getConfigurationDataPort())
    val VEND_IP = encryptionHelper.decryptData(getConfigurationDataVendorIp())
    val VEND_PORT = encryptionHelper.decryptData(getConfigurationDataPort())
    val APP_NAME = encryptionHelper.decryptData(getAppName())
    val APP_PASSWORD = encryptionHelper.decryptData(getAppPassword())
    val STRING_NETPOS_TRANSACTION_API_BASE_URL =
        encryptionHelper.decryptData(getNetposTransactionApiBaseUrl())
    val STRING_RRN_SERVICE_BASE_URL = encryptionHelper.decryptData(getRrnServiceBaseUrl())
    val STRING_TEST_KEY_1 = encryptionHelper.decryptData(getTestKey1())
    val STRING_TEST_KEY_2 = encryptionHelper.decryptData(getTestKey2())
    val STRING_EPMS_LIVE_KEY_1 = encryptionHelper.decryptData(getEpmsLiveKey1())
    val STRING_EPMS_LIVE_KEY_2 = encryptionHelper.decryptData(getEpmsLiveKey2())
    val STRING_CERT_KEY_1 = encryptionHelper.decryptData(getCertKey1())
    val STRING_CERT_KEY_2 = encryptionHelper.decryptData(getCertKey2())
    val STRING_POS_VAS_LIVE_KEY_1 = encryptionHelper.decryptData(getPosVasLiveKey1())
    val STRING_POS_VAS_LIVE_KEY_2 = encryptionHelper.decryptData(getPosVasLiveKey2())
    val STRING_PARTNER_ID_FIRST_B = encryptionHelper.decryptData(getPartnerIdFirstB())
    val STRING_PARTNER_ID_EASY_PAY = encryptionHelper.decryptData(getPartnerIdEasyPay())
    val STRING_PARTNER_ID_FCMB_EASY_PAY = encryptionHelper.decryptData(getPartnerIdFcmbEasyPay())
    val STRING_PARTNER_ID_EASY_PAY_FCMB = encryptionHelper.decryptData(getPartnerIdEasyPayFcmb())
    val STRING_PARTNER_ID_PROVIDUS_POS = encryptionHelper.decryptData(getPartnerIdProvidusPos())
    val STRING_PARTNER_ID_STANBIC = encryptionHelper.decryptData(getPartnerIdStanbic())
    val STRING_PARTNER_ID_PROVIDUS = encryptionHelper.decryptData(getPartnerIdProvidus())
    val STRING_PARTNER_ID_PROVIDUS_SOFT_POS =
        encryptionHelper.decryptData(getPartnerIdProvidusSoftPos())
    val STRING_PARTNER_ID_WEMA_B = encryptionHelper.decryptData(getPartnerIdWemaB())
    val STRING_PARTNER_ID_ZENITH = encryptionHelper.decryptData(getPartnerIdZenith())
    val STRING_X_CLIENT_ID = encryptionHelper.decryptData(getXClientId())
    val STRING_X_ACCESS_CODE = encryptionHelper.decryptData(getXAccessCode())
    val STRING_TLV_BYTE_WRAPPER_CONSTANT = encryptionHelper.decryptData(getTlvByteWrapperConstant())
//    val STRING_TLV_BYTE_WRAPPER = encryptionHelper.decryptData("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1wic3RhdHVzXCI6dHJ1ZSxcIm1lc3NhZ2VcIjpcIkFjY291bnQgdmVyaWZpZWQgc3VjY2Vzc2Z1bGx5XCIsXCJkYXRhXCI6e1wiYnVzaW5lc3NOYW1lXCI6XCJBTEFCSSBJWUFOVU9MVVdBIEhBTk5BSFwiLFwiYWRkcmVzc1wiOlwiXCIsXCJmdWxsTmFtZVwiOlwiQUxBQkkgSVlBTlVPTFVXQSBIQU5OQUhcIixcImFjY291bnROdW1iZXJcIjpcIjMxMjczMTc2NTVcIixcImVtYWlsXCI6XCJISVlBTlVPTFVXQUBZQUhPTy5DT01cIixcInBob25lXCI6XCIyMzQ3MDExMzI1NDkyXCJ9fSIsImlhdCI6MTY5NjQ0ODEzMCwiZXhwIjoxNjk2NDUxNzMwfQ.lALDMeZad33YA_4dKP8ggKPbmgsYrQEoq34dfq8kD9w")

}
