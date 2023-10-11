#include <jni.h>


JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAuthUserName(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "c9da671702a8888033b376c0e372e132");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAuthPassword(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "ec1702e71d151b9aa322d3e4aa528980c04a95b0e2c6ae9bd4c672f91cf70de3");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getGetQrBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "e3d83daed2ad9e9f69b911974beb2e139b145e598a2b1d3f8a7d8dfcb5390e65");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getSendVerveOtpBaseUrl(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "d3533782ab2441c7fd4203622af303d0f5bd09a1680b1a43b9e5c17543837fa0");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getMerchantId(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "a27dd19a5ba7600d7d0b8de7779f21f0848fa8878a18900ad20cd6dad53f890e");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getWebViewBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "d3533782ab2441c7fd4203622af303d0b5bc6723c0cc24acbfa4bcb12044aadaf5a92238bbccc579e716623ed6d03b00b0c1d41a29d93738670907d8d51c815f");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getContactlessExistingBaseUrl(JNIEnv *env,
                                                                                    jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "a60fa121e3363cd3fc14195d7557b2a3c2378a6204252631a5e03ebabb10178c87e7c58a01fa38bad0880a903a449971");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getContactlessPaymentWithQrBaseUrl(
        JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "153fe23ba274bafde70a3f06ea0df3c781b30e48c6c288d2119ffe12170c4ffc");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getMpgsTag(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "dd86e1f170977fd0fe4e1b22d372b098");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getNotificationBaseUrl(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "356ce05b9e7dcfab02b5a2e2e4861c42849c5d176d122d30a62c05a96c4690d001ad44b03cbc05aab19e2f8ff4801785");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getBaseUrlNetPosMqtt(JNIEnv *env,
                                                                           jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "63f16cbfd5c4e492f429517c8a1271815fbef9461bf484addb2c5df68a1752a8");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getBaseUrlStormUtilities(JNIEnv *env,
                                                                               jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "e0b7eb1a0f375c1d7e344ac4d6d139c601ef7fc748a3d32064a60a6d88c0b8e8dd7d6742ab1914aab74f67bb66add116");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataIp(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env, "0dd757c6dd99cb5f506d7bade65e9ba1");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataPort(JNIEnv *env,
                                                                               jobject thiz) {
    return (*env)->NewStringUTF(env, "ce7186ec525411037dcc7fa26ca74ec2");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataVendorIp(JNIEnv *env,
                                                                                   jobject thiz) {
    return (*env)->NewStringUTF(env, "9a714ddeb7d5cdda305d1efe169c4c29");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getConfigurationDataVendorPort(JNIEnv *env,
                                                                                     jobject thiz) {
    return (*env)->NewStringUTF(env, "64ccc87fdba774c7b3390c7d9b79f029");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAppName(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "5142df824437ba3335d92fdebe3d730a");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getAppPassword(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "870d845fdf58ab46cf7eda8ac8c226f7");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getBaseUrlBills(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "8ec13f9f101852cab89465a7434eb46a6bedcdb7f97c49193ee4f7448ea3d123");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getMasterPassQr(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "3f3e689ec67dc5882dae3a437814b3ea02d5c7e9766ae5ebc0e867870779570197e4c9f43f67ebfeed7ddf301e2248df");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getSmsBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "4a3d933986299981f96f6500468aa91a192ced3ae133b5109762812a67b5592a");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getZenithBaseUrl(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "b905028399f64b99a6c94a1175302a9980bd4c5e3700a34d37316b70feae7b329a7c1942118d12a3ab42b759d3e01cb0");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getStringNotificationBaseUrlNoApi(JNIEnv *env,
                                                                                        jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "356ce05b9e7dcfab02b5a2e2e4861c427b0aaff29c216889db0c18b4190f75a9");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getNetposTransactionApiBaseUrl(JNIEnv *env,
                                                                                     jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "7a3c319f316349fdcb91b21ed581e4de3ffaf156d0f9ce03cbb243d2785919ea");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getRrnServiceBaseUrl(JNIEnv *env,
                                                                           jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "ca7a4c8213c563e0a240a6de9a1cb34415b386a00b58ceca96f68419082861df");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getTestKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "2e8b9ae27fe3ba808e91a253d6905063895a53213aa82f66c60c0c335932e68fcb78a2490b7983262559200b780bf10c");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getTestKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "67b15408733bf8f1f265602ee046c1b11ee1327dd51e23f932cec0d76d72711a402f0ac41f51d7777731fe5969f71f21");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEpmsLiveKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "ee9f76267b1ea8f73ffe87021a3f04a2b82694d99358c827381868a31d8a9dd0ac7146eb53cd047609dde4f700215cf8");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEpmsLiveKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "088bd484ab1e46752c2ec245fd39ffaadebbd72ad95fef9deca602fd9d870d280c1a503602e0b3306dd445bf318a0b8c");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCertKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "67b15408733bf8f1f265602ee046c1b11ee1327dd51e23f932cec0d76d72711a402f0ac41f51d7777731fe5969f71f21");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCertKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "2e8b9ae27fe3ba808e91a253d6905063895a53213aa82f66c60c0c335932e68fcb78a2490b7983262559200b780bf10c");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPosVasLiveKey1(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "776ecba8b33a7c36c77f8a450feba1ac46528d5f0bfb3a20738560f3d6390721427a6839b27bf7ca96c0b19070bfad7a");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPosVasLiveKey2(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "0bdda784648c860b2fb4ee6cb550955ed47f17d9b2f719238f69eefb0043d9b9d82eb4dfe06f7e4423a895b73cf88039");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdFirstB(JNIEnv *env,
                                                                         jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "f2d0f25aeb34a526fbf36dc0c3f566103646d1b0239ddb60862fce6e0b85a44a95c1249ed9e9660198d313f9af937183");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdEasyPay(JNIEnv *env,
                                                                          jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "f6e4c1899766cbf5cd0e4b913a7cece9437d2b4587705fa5e7940af9ae0a8b08e435f6fc4207e02df0107d44ef116c89");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdFcmbEasyPay(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "f6e4c1899766cbf5cd0e4b913a7cece9437d2b4587705fa5e7940af9ae0a8b08e435f6fc4207e02df0107d44ef116c89");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdEasyPayFcmb(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "f6e4c1899766cbf5cd0e4b913a7cece9437d2b4587705fa5e7940af9ae0a8b08e435f6fc4207e02df0107d44ef116c89");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdProvidusPos(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "1b2bab916e020a06365cd0eda08bf57f78e73b83ae713d2b2486c1212e0ef1169bfe2e39c7dec414cbf87ea01246ffd9");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdStanbic(JNIEnv *env,
                                                                          jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "1b2bab916e020a06365cd0eda08bf57f78e73b83ae713d2b2486c1212e0ef1169bfe2e39c7dec414cbf87ea01246ffd9");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdProvidus(JNIEnv *env,
                                                                           jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "1b2bab916e020a06365cd0eda08bf57f78e73b83ae713d2b2486c1212e0ef1169bfe2e39c7dec414cbf87ea01246ffd9");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdProvidusSoftPos(JNIEnv *env,
                                                                                  jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "1b2bab916e020a06365cd0eda08bf57f78e73b83ae713d2b2486c1212e0ef1169bfe2e39c7dec414cbf87ea01246ffd9");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdWemaB(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "33c1d84d40c61203785b76096b6a87a54ddc152497391e791e102c0e1c7c5956a432983da7c19c6ac4b8c2458a741bdd");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getPartnerIdZenith(JNIEnv *env,
                                                                         jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "c7a84a97398b7a0b84f106394ec395e3b406f00cd274030d192918e51b90751e98edd8043dce3675d31bfb0beffea0a5");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getXClientId(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "c0d491295434db10fcbbc6b66900db4b3eac3fe8191d8c5c6a5aeefc8db3d70c51f83f30c04a2408deb7efb31c367a09");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getXAccessCode(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "f11a5997258c0207c4a038380ebfd722f9b78b9828866f356af559a390d38a882d8e116e82fd9d8cccca396e592c72fa4ff9e958db1b707b5851394bc368c72c343b504ae4b33c00547c56a2c511b086");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getTlvByteWrapperConstant(JNIEnv *env,
                                                                                jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "7dab8041aa8ccced59e913c392f7f325b73792cf8171a1b60470edccb91f5e90e2ea9531c8ad57f0eeaa20abee813ebe");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEncryptionSecreteKey(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env, "873hrsjhdiesi+2u3hfs3usbalskjdhuidhsdkajsdjhrueiweuwyb4+pi_7h");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getEncryptionSecreteIv(JNIEnv *env,
                                                                             jobject thiz) {
    return (*env)->NewStringUTF(env, "0FJK4uPzoWBjXI+z");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getNetPosMqttPortNumber(JNIEnv *env,
                                                                              jobject thiz) {
    return (*env)->NewStringUTF(env, "33e9f8f51cccb978064352ee68000a8c");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCredCredentials(JNIEnv *env,
                                                                         jobject thiz) {
    return (*env)->NewStringUTF(env,
                                "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ7XCJyZXF1ZXN0XCI6XCJyZXF1ZXN0X2Zvcl9jcmVkZW50aWFsc1wifSJ9.ss_H92b_3gpWhKKr9tEQgsW0g7BRLHrKFggMWCngKnw");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCredSecK(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "ieu873hekejs958i");
}

JNIEXPORT jstring JNICALL
Java_com_woleapp_netpos_contactless_util_UtilityParam_getCredIv(JNIEnv *env, jobject thiz) {
    return (*env)->NewStringUTF(env, "873hdfwyb4+pi_7h");
}