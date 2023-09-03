#include <jni.h>


JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAuthUserName(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "qrUser2022");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAuthPassword(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "Qr3*fgZ(vBcdfP0^%klo51r");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getGetQrBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://getqr.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getSendVerveOtpBaseUrl(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env, "https://webpay.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getMerchantId(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "MID635ff140365c5");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getWebViewBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://webpay.netpluspay.com/transactions/requery/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getContactlessExistingBaseUrl(JNIEnv *env,
                                                                                    jobject thiz) {
    return (*env)->NewStringUTF(env, "https://contactless.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getContactlessPaymentWithQrBaseUrl(
        JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://qrapi.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getMpgsTag(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "MPGS-QR");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getNotificationBaseUrl(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env, "https://netpos.netpluspay.com/api/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getBaseUrlNetPosMqtt(JNIEnv *env,
                                                                           jobject thiz) {
    return (*env)->NewStringUTF(env, "storm-mqtt.netpluspay.com");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getBaseUrlStormUtilities(JNIEnv *env,
                                                                               jobject thiz) {
    return (*env)->NewStringUTF(env, "https://storm-utilities.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataIp(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env, "196.6.103.18");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataPort(JNIEnv *env,
                                                                               jobject thiz) {
    return (*env)->NewStringUTF(env, "5016");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataVendorIp(JNIEnv *env,
                                                                                   jobject thiz) {
    return (*env)->NewStringUTF(env, "192.168.100.68");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataVendorPort(JNIEnv *env,
                                                                                     jobject thiz) {
    return (*env)->NewStringUTF(env, "3535");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAppName(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "storm_app");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAppPassword(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "C0R3MELTDOWN!");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getBaseUrlBills(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://storm.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getMasterPassQr(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://masterpassqr.netpluspay.com/api/v1/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getSmsBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://sms.netpluspay.com");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getZenithBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://api.zenith.netpluspay.com/qr/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getStringNotificationBaseUrlNoApi(JNIEnv *env,
                                                                                        jobject thiz) {
    return (*env)->NewStringUTF(env, "https://netpos.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getNetposTransactionApiBaseUrl(JNIEnv *env,
                                                                                     jobject thiz) {
    return (*env)->NewStringUTF(env, "https://device.netpluspay.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getRrnServiceBaseUrl(JNIEnv *env,
                                                                           jobject thiz) {
    return (*env)->NewStringUTF(env, "https://getrrn.netpluspay.com");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getTestKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "86CBCDE3B0A22354853E04521686863D");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getTestKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "5D25072F04832A2329D93E4F91BA23A2");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEpmsLiveKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "E6891F73948F16C4D6E979D68534D0F4");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEpmsLiveKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "3D10EF707F98E3543E32B570E9E9AE86");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCertKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "5D25072F04832A2329D93E4F91BA23A2");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCertKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "86CBCDE3B0A22354853E04521686863D");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPosVasLiveKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "9BF76D3E13ADD67A51549B7C3EB0E3AD");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPosVasLiveKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "A4BAEC5E31BFD913919262C7A7A76D52");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdFirstB(JNIEnv *env,
                                                                         jobject thiz) {
    return (*env)->NewStringUTF(env, "7FD43DF1-633F-4250-8C6F-B49DBB9650EA");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdEasyPay(JNIEnv *env,
                                                                          jobject thiz) {
    return (*env)->NewStringUTF(env, "1B0E68FD-7676-4F2C-883D-3931C3564190");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdFcmbEasyPay(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env, "1B0E68FD-7676-4F2C-883D-3931C3564190");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdEasyPayFcmb(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env, "1B0E68FD-7676-4F2C-883D-3931C3564190");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdProvidusPos(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env, "8B26F328-040F-4F27-A5BC-4414AB9D1EFA");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdStanbic(JNIEnv *env,
                                                                          jobject thiz) {
    return (*env)->NewStringUTF(env, "8B26F328-040F-4F27-A5BC-4414AB9D1EFA");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdProvidus(JNIEnv *env,
                                                                           jobject thiz) {
    return (*env)->NewStringUTF(env, "8B26F328-040F-4F27-A5BC-4414AB9D1EFA");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdProvidusSoftPos(JNIEnv *env,
                                                                                  jobject thiz) {
    return (*env)->NewStringUTF(env, "8B26F328-040F-4F27-A5BC-4414AB9D1EFA");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdWemaB(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "1E3D050B-6995-495F-982A-0511114959C8");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdZenith(JNIEnv *env,
                                                                         jobject thiz) {
    return (*env)->NewStringUTF(env, "C936667C-0B02-4A34-80D0-0FC5B525256E");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getXClientId(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "85522f45-e459-4548-8b20-3a922196c515");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getXAccessCode(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "a14014e18e2cffc4d74e150ed68a472bd94189db82d374306d5b307dc7620f20");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getTlvByteWrapperConstant(JNIEnv *env,
                                                                                jobject thiz) {
    return (*env)->NewStringUTF(env, "48656c6c6f20576f726c64207772697474656e206f6e20");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEncryptionSecreteKey(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env, "hq+fAexgn7hK2edm");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEncryptionSecreteIv(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env, "0FJk4uPzoWBjXI+z");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getNetPosMqttPortNumber(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env, "8883");
}