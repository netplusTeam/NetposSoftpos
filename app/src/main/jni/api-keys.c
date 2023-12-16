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
    return (*env)->NewStringUTF(env, "https://tabul.paysaddle.com/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getMerchantId(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "MID635ff140365c5");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getWebViewBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "https://tabul.paysaddle.com/transactions/requery/");
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
    return (*env)->NewStringUTF(env, "4016");
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
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCardPinKey(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "sieihsoe87360kwjun376shgye03aksjeygkw8376263jjasdbwowrgsdmf03927y3_ajlskd9783_skjieoslaskh_29874");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getBearerTokenForMPGSTransaction(JNIEnv *env,
                                                                                       jobject thiz) {
    return (*env) -> NewStringUTF(env, "Bearer V6XGNyopzrGESg3oSjeksAOMMFR6GzF4SaM9NYaMU1jePVkNQEFc1T096XNFUf3Q");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getFwBaseUrl(JNIEnv *env, jobject thiz) {

    return (*env) -> NewStringUTF(env, "https://agency-banking-middleware-staging.dev-flutterwave.com/api/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPayByTransferBaseUrl(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env) -> NewStringUTF(env, "http://api.zenith-pbt.netpluspay.com/api/");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPayByTransferBearerToken(JNIEnv *env,
                                                                                  jobject thiz) {
    return (*env) -> NewStringUTF(env, "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdG9ybUlkIjoiYzIzMDY1MTctNmE5Mi0xMWVhLTk1N2MtZjIzYzkyOWIwMDU3IiwiYmFua05hbWUiOiIxQjBFNjhGRC03Njc2LTRGMkMtODgzRC0zOTMxQzM1NjQxOTAiLCJ0ZXJtaW5hbElkIjoiMjEwMUpBMjYiLCJ1c2VyX3R5cGUiOiJyZWd1bGFyIiwibWVyY2hhbnRJZCI6bnVsbCwiYnVzaW5lc3NOYW1lIjoib2xhbWlkZUB3ZWJtYWxsLm5nIiwidXNlcm5hbWUiOiJvbGFtaWRlQHdlYm1hbGwubmciLCJidXNpbmVzc19hZGRyZXNzIjoiTWFydXdhLCBMZWtraSByb2FkLCBMYWdvcyBzdGF0ZSIsInBob25lX251bWJlciI6IjA4MDMxNTU4MDE3IiwibmV0cGx1c1BheU1pZCI6bnVsbCwicGFydG5lcklkIjpudWxsLCJkb21haW5zIjpbIm5ldHBvcyJdLCJyb2xlcyI6WyJhZG1pbiJdLCJpc3MiOiJzdG9ybTphY2NvdW50cyIsInN1YiI6InVzZXIiLCJpYXQiOjE2OTUwNTI1MDYsImV4cCI6MTcyNjU4ODUwNn0.a7e3H8-Gmwi9vW5MntUGHqeJhuMF8oIrsR9q92xqo-Y");
}