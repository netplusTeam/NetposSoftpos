.class public final Lcom/woleapp/netpos/contactless/util/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/woleapp/netpos/contactless/util/UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n1#2:333\n1855#3,2:334\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/woleapp/netpos/contactless/util/UtilsKt\n*L\n266#1:334,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0001\u001a\u0016\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0001\u001a2\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00172\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b\u001a\u000e\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u001f\u001a\u000e\u0010 \u001a\u00020!2\u0006\u0010\u0012\u001a\u00020\u0013\u001a\u0006\u0010\"\u001a\u00020\u001b\u001a\u0006\u0010#\u001a\u00020\u0001\u001a\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0011H\u0002\u001a\u0010\u0010\'\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0011H\u0002\u001a\u0010\u0010(\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0011H\u0002\u001a\u0010\u0010)\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0011H\u0002\u001a\u0016\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u0001\u001a\u000c\u0010.\u001a\u0004\u0018\u00010/*\u000200\u001a\u0012\u00101\u001a\u00020!*\u0002002\u0006\u00102\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\"\'\u0010\t\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00010\u00010\u00040\u0004\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u00063"
    }
    d2 = {
        "NFC_A_TAG",
        "",
        "NFC_B_TAG",
        "NFC_INTENT_FILTER",
        "",
        "Landroid/content/IntentFilter;",
        "getNFC_INTENT_FILTER",
        "()[Landroid/content/IntentFilter;",
        "[Landroid/content/IntentFilter;",
        "TECH_LIST",
        "kotlin.jvm.PlatformType",
        "getTECH_LIST",
        "()[[Ljava/lang/String;",
        "[[Ljava/lang/String;",
        "createOrGetSecretKey",
        "Ljavax/crypto/SecretKey;",
        "decryptFile",
        "",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "decryptOpenSslFile",
        "deriveKeyAndIv",
        "Lkotlin/Pair;",
        "brandP",
        "salt",
        "keyLength",
        "",
        "ivLength",
        "dumpTagData",
        "tag",
        "Landroid/nfc/Tag;",
        "encryptAssetsFiles",
        "",
        "getBluetoothKeyIndex",
        "getCurrentDateTimeAsFormattedString",
        "toDec",
        "",
        "bytes",
        "toHex",
        "toReversedDec",
        "toReversedHex",
        "validatePasswordMismatch",
        "",
        "password",
        "confirmPassword",
        "checkNfcStatus",
        "Landroid/nfc/NfcAdapter;",
        "Landroidx/fragment/app/Fragment;",
        "showToast",
        "message",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final NFC_A_TAG:Ljava/lang/String; = "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcA]"

.field public static final NFC_B_TAG:Ljava/lang/String; = "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcB]"

.field private static final NFC_INTENT_FILTER:[Landroid/content/IntentFilter;

.field private static final TECH_LIST:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 140
    nop

    .line 141
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/content/IntentFilter;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 142
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 141
    nop

    .line 140
    sput-object v1, Lcom/woleapp/netpos/contactless/util/UtilsKt;->NFC_INTENT_FILTER:[Landroid/content/IntentFilter;

    .line 144
    nop

    .line 145
    new-array v1, v4, [[Ljava/lang/String;

    .line 146
    new-array v0, v0, [Ljava/lang/String;

    const-class v2, Landroid/nfc/tech/NfcA;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-class v2, Landroid/nfc/tech/IsoDep;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 146
    aput-object v0, v1, v3

    .line 145
    nop

    .line 144
    sput-object v1, Lcom/woleapp/netpos/contactless/util/UtilsKt;->TECH_LIST:[[Ljava/lang/String;

    return-void
.end method

.method public static final checkNfcStatus(Landroidx/fragment/app/Fragment;)Landroid/nfc/NfcAdapter;
    .locals 2
    .param p0, "$this$checkNfcStatus"    # Landroidx/fragment/app/Fragment;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "nfc"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.nfc.NfcManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/nfc/NfcManager;

    .line 178
    nop

    .line 180
    .local v0, "nfcManager":Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static final createOrGetSecretKey()Ljavax/crypto/SecretKey;
    .locals 6

    .line 204
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    move-object v2, v1

    .line 333
    .local v2, "$this$createOrGetSecretKey_u24lambda_u2d0":Ljava/security/KeyStore;
    const/4 v3, 0x0

    .line 204
    .local v3, "$i$a$-apply-UtilsKt$createOrGetSecretKey$keyStore$1":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 205
    .end local v2    # "$this$createOrGetSecretKey_u24lambda_u2d0":Ljava/security/KeyStore;
    .end local v3    # "$i$a$-apply-UtilsKt$createOrGetSecretKey$keyStore$1":I
    .local v1, "keyStore":Ljava/security/KeyStore;
    const-string v2, "fileDecryptionKey"

    .line 207
    .local v2, "keyAlias":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 209
    nop

    .line 210
    const/4 v5, 0x3

    .line 208
    invoke-direct {v3, v2, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 212
    const-string v5, "GCM"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 213
    const-string v5, "NoPadding"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    const-string v5, "Builder(\n            key\u2026ONE)\n            .build()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    nop

    .line 217
    .local v3, "keyGenParameterSpec":Landroid/security/keystore/KeyGenParameterSpec;
    const-string v5, "AES"

    invoke-static {v5, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 216
    nop

    .line 218
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    move-object v5, v3

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 219
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 222
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v3    # "keyGenParameterSpec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_0
    invoke-virtual {v1, v2, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type javax.crypto.SecretKey"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public static final decryptFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->createOrGetSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 229
    .local v0, "key":Ljavax/crypto/SecretKey;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "context.assets.open(fileName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 232
    .local v1, "encryptedData":[B
    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v2

    .line 233
    .local v2, "iv":[B
    array-length v4, v1

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v3

    .line 235
    .local v3, "encryptedContent":[B
    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 236
    .local v4, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v6, 0x80

    invoke-direct {v5, v6, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 237
    .local v5, "spec":Ljavax/crypto/spec/GCMParameterSpec;
    move-object v6, v0

    check-cast v6, Ljava/security/Key;

    move-object v7, v5

    check-cast v7, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v8, 0x2

    invoke-virtual {v4, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 239
    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const-string v7, "cipher.doFinal(encryptedContent)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v6
.end method

.method public static final decryptOpenSslFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "context.assets.open(fileName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 296
    .local v0, "encryptedData":[B
    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v1

    .line 298
    .local v1, "salt":[B
    array-length v3, v0

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v3

    .line 297
    nop

    .line 301
    .local v3, "encryptedContent":[B
    nop

    .line 302
    nop

    .line 303
    nop

    .line 304
    nop

    .line 300
    const-string v4, "softpos_contactless"

    const/16 v5, 0x20

    invoke-static {v4, v1, v5, v2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->deriveKeyAndIv(Ljava/lang/String;[BII)Lkotlin/Pair;

    move-result-object v2

    .line 306
    .local v2, "keyAndIv":Lkotlin/Pair;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 307
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 310
    .local v5, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 311
    .local v6, "cipher":Ljavax/crypto/Cipher;
    move-object v7, v4

    check-cast v7, Ljava/security/Key;

    move-object v8, v5

    check-cast v8, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v9, 0x2

    invoke-virtual {v6, v9, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 313
    invoke-virtual {v6, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const-string v8, "cipher.doFinal(encryptedContent)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v7
.end method

.method public static final deriveKeyAndIv(Ljava/lang/String;[BII)Lkotlin/Pair;
    .locals 7
    .param p0, "brandP"    # Ljava/lang/String;
    .param p1, "salt"    # [B
    .param p2, "keyLength"    # I
    .param p3, "ivLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation

    const-string v0, "brandP"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .local v0, "brandPChars":[C
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    add-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x8

    const/16 v3, 0x64

    invoke-direct {v1, v0, p1, v3, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 325
    .local v1, "spec":Ljavax/crypto/spec/PBEKeySpec;
    const-string v2, "PBKDF2WithHmacSHA256"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 326
    .local v2, "factory":Ljavax/crypto/SecretKeyFactory;
    move-object v3, v1

    check-cast v3, Ljava/security/spec/KeySpec;

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 328
    .local v3, "keyAndIv":[B
    const-string v4, "keyAndIv"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v4

    .line 329
    .local v4, "key":[B
    add-int v5, p2, p3

    invoke-static {p2, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v5

    .line 330
    .local v5, "iv":[B
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static final dumpTagData(Landroid/nfc/Tag;)Ljava/lang/String;
    .locals 12
    .param p0, "tag"    # Landroid/nfc/Tag;

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "dump tag"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    const-string v3, "tag.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .local v2, "id":[B
    const-string v3, "ID (hex): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, "ID (reversed hex): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->toReversedHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "ID (dec): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->toDec([B)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "ID (reversed dec): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->toReversedDec([B)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "android.nfc.tech."

    .line 45
    .local v3, "prefix":Ljava/lang/String;
    const-string v5, "Technologies: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "tag.techList"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v5

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    .line 47
    .local v9, "tech":Ljava/lang/String;
    const-string v10, "tech"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 50
    .end local v9    # "tech":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v5

    :goto_1
    if-ge v0, v6, :cond_3

    aget-object v7, v5, v0

    .line 52
    .local v7, "tech":Ljava/lang/String;
    const-class v8, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    const-string v8, "Unknown"

    .line 55
    .local v8, "type":Ljava/lang/String;
    nop

    .line 56
    :try_start_0
    invoke-static {p0}, Landroid/nfc/tech/MifareClassic;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;

    move-result-object v9

    .line 57
    .local v9, "mifareTag":Landroid/nfc/tech/MifareClassic;
    invoke-virtual {v9}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_2

    .line 60
    :pswitch_0
    const-string v10, "Pro"

    move-object v8, v10

    goto :goto_2

    .line 59
    :pswitch_1
    const-string v10, "Plus"

    move-object v8, v10

    goto :goto_2

    .line 58
    :pswitch_2
    const-string v10, "Classic"

    move-object v8, v10

    .line 62
    :goto_2
    const-string v10, "Mifare Classic type: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const-string v10, "Mifare size: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/nfc/tech/MifareClassic;->getSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    const-string v10, "Mifare sectors: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v9}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const-string v10, "Mifare blocks: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v9}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 73
    .end local v9    # "mifareTag":Landroid/nfc/tech/MifareClassic;
    :catch_0
    move-exception v9

    .line 74
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mifare classic error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    const-class v8, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p0}, Landroid/nfc/tech/MifareUltralight;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;

    move-result-object v8

    .line 80
    .local v8, "mifareUlTag":Landroid/nfc/tech/MifareUltralight;
    const-string v9, "Unknown"

    .line 81
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/nfc/tech/MifareUltralight;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    goto :goto_4

    .line 83
    :pswitch_3
    const-string v9, "Ultralight C"

    goto :goto_4

    .line 82
    :pswitch_4
    const-string v9, "Ultralight"

    .line 85
    :goto_4
    const-string v10, "Mifare Ultralight type: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .end local v8    # "mifareUlTag":Landroid/nfc/tech/MifareUltralight;
    .end local v9    # "type":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 89
    .end local v7    # "tech":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sb.toString()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static final encryptAssetsFiles(Landroid/content/Context;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 244
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "encrypted_files"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 245
    .local v4, "outputDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 247
    :cond_0
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->createOrGetSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 250
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    nop

    .line 251
    nop

    .line 250
    nop

    .line 252
    nop

    .line 250
    nop

    .line 253
    nop

    .line 250
    nop

    .line 254
    nop

    .line 250
    nop

    .line 255
    nop

    .line 250
    nop

    .line 256
    nop

    .line 250
    nop

    .line 257
    nop

    .line 250
    nop

    .line 258
    nop

    .line 250
    nop

    .line 259
    nop

    .line 250
    nop

    .line 260
    nop

    .line 250
    nop

    .line 261
    nop

    .line 250
    nop

    .line 262
    nop

    .line 250
    nop

    .line 263
    const-string v6, "cacert.pem"

    const-string v7, "device.key"

    const-string v8, "epms-client.cert.pem"

    const-string v9, "epms-client.key.pem"

    const-string v10, "kpc.pem"

    const-string v11, "kpk.pem"

    const-string v12, "netpos.cert.pem"

    const-string v13, "netpos_client_cert.pem"

    const-string v14, "netpos_client_key.key"

    const-string v15, "netpos_device.pem"

    const-string v16, "private.key.pem"

    const-string v17, "test_cacert.pem"

    const-string v18, "netpos_light_bdk_key.txt"

    const-string v19, "flw_softpost_suth_secret_shared_test.txt"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v0

    .line 250
    nop

    .line 249
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 266
    .local v6, "fileNames":Ljava/util/List;
    move-object v7, v6

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 334
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "fileName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 267
    .local v12, "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    nop

    .line 269
    :try_start_0
    invoke-virtual {v2, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v13

    check-cast v0, Ljava/io/InputStream;

    move-object v14, v0

    .local v14, "inputStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 270
    .local v15, "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1":I
    const-string v0, "inputStream"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    move-object/from16 v16, v0

    .line 273
    .local v16, "fileContent":[B
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object/from16 v17, v0

    .line 274
    .local v17, "cipher":Ljavax/crypto/Cipher;
    const/4 v0, 0x1

    move-object v3, v5

    check-cast v3, Ljava/security/Key;

    move-object/from16 v1, v17

    .end local v17    # "cipher":Ljavax/crypto/Cipher;
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 275
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v3, v0

    .line 277
    .local v3, "iv":[B
    move-object/from16 v17, v2

    move-object/from16 v2, v16

    .end local v16    # "fileContent":[B
    .local v2, "fileContent":[B
    .local v17, "assetManager":Landroid/content/res/AssetManager;
    :try_start_2
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    move-object/from16 v16, v0

    .line 280
    .local v16, "encryptedContent":[B
    new-instance v0, Ljava/io/File;

    move-object/from16 v19, v1

    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .local v19, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v20, v2

    .end local v2    # "fileContent":[B
    .local v20, "fileContent":[B
    const-string v2, ".enc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 281
    .local v1, "outputFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v0, v2

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/16 v21, 0x0

    .line 282
    .local v21, "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1$1":I
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 283
    move-object/from16 v22, v1

    move-object/from16 v1, v16

    .end local v16    # "encryptedContent":[B
    .local v1, "encryptedContent":[B
    .local v22, "outputFile":Ljava/io/File;
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 284
    nop

    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v21    # "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "encryptedContent":[B
    .restart local v16    # "encryptedContent":[B
    :try_start_5
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 285
    nop

    .end local v3    # "iv":[B
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1":I
    .end local v16    # "encryptedContent":[B
    .end local v19    # "cipher":Ljavax/crypto/Cipher;
    .end local v20    # "fileContent":[B
    .end local v22    # "outputFile":Ljava/io/File;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 269
    :try_start_6
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 281
    .restart local v1    # "encryptedContent":[B
    .restart local v3    # "iv":[B
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1":I
    .restart local v19    # "cipher":Ljavax/crypto/Cipher;
    .restart local v20    # "fileContent":[B
    .restart local v22    # "outputFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v0

    .end local v1    # "encryptedContent":[B
    .restart local v16    # "encryptedContent":[B
    goto :goto_1

    .end local v22    # "outputFile":Ljava/io/File;
    .local v1, "outputFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v1

    move-object v1, v0

    .end local v1    # "outputFile":Ljava/io/File;
    .end local v3    # "iv":[B
    .end local v4    # "outputDir":Ljava/io/File;
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "fileNames":Ljava/util/List;
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1":I
    .end local v16    # "encryptedContent":[B
    .end local v17    # "assetManager":Landroid/content/res/AssetManager;
    .end local v19    # "cipher":Ljavax/crypto/Cipher;
    .end local v20    # "fileContent":[B
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .restart local v3    # "iv":[B
    .restart local v4    # "outputDir":Ljava/io/File;
    .restart local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v6    # "fileNames":Ljava/util/List;
    .restart local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$forEach":I
    .restart local v10    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "fileName":Ljava/lang/String;
    .restart local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1":I
    .restart local v16    # "encryptedContent":[B
    .restart local v17    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v19    # "cipher":Ljavax/crypto/Cipher;
    .restart local v20    # "fileContent":[B
    .restart local v22    # "outputFile":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_2
    move-exception v0

    move-object/from16 v21, v0

    :try_start_8
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "outputDir":Ljava/io/File;
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "fileNames":Ljava/util/List;
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .end local v17    # "assetManager":Landroid/content/res/AssetManager;
    .end local p0    # "context":Landroid/content/Context;
    throw v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 269
    .end local v3    # "iv":[B
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "$i$a$-use-UtilsKt$encryptAssetsFiles$1$1":I
    .end local v16    # "encryptedContent":[B
    .end local v19    # "cipher":Ljavax/crypto/Cipher;
    .end local v20    # "fileContent":[B
    .end local v22    # "outputFile":Ljava/io/File;
    .restart local v4    # "outputDir":Ljava/io/File;
    .restart local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v6    # "fileNames":Ljava/util/List;
    .restart local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$forEach":I
    .restart local v10    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "fileName":Ljava/lang/String;
    .restart local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .restart local v17    # "assetManager":Landroid/content/res/AssetManager;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .end local v17    # "assetManager":Landroid/content/res/AssetManager;
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v2

    move-object v1, v0

    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v4    # "outputDir":Ljava/io/File;
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "fileNames":Ljava/util/List;
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .end local p0    # "context":Landroid/content/Context;
    :goto_2
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .restart local v4    # "outputDir":Ljava/io/File;
    .restart local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v6    # "fileNames":Ljava/util/List;
    .restart local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$forEach":I
    .restart local v10    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "fileName":Ljava/lang/String;
    .restart local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .restart local v17    # "assetManager":Landroid/content/res/AssetManager;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "outputDir":Ljava/io/File;
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "fileNames":Ljava/util/List;
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .end local v17    # "assetManager":Landroid/content/res/AssetManager;
    .end local p0    # "context":Landroid/content/Context;
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 286
    .restart local v4    # "outputDir":Ljava/io/File;
    .restart local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v6    # "fileNames":Ljava/util/List;
    .restart local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$forEach":I
    .restart local v10    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "fileName":Ljava/lang/String;
    .restart local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    .restart local v17    # "assetManager":Landroid/content/res/AssetManager;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v17    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "assetManager":Landroid/content/res/AssetManager;
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    .line 287
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "assetManager":Landroid/content/res/AssetManager;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encrypt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ENC_FILE"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-UtilsKt$encryptAssetsFiles$1":I
    goto/16 :goto_0

    .line 335
    .end local v17    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "assetManager":Landroid/content/res/AssetManager;
    :cond_1
    nop

    .line 290
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    return-void
.end method

.method public static final getBluetoothKeyIndex()I
    .locals 3

    .line 185
    const-string v0, ""

    .line 186
    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    return v1

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 190
    .local v1, "i":I
    nop

    .line 191
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 192
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    if-gez v1, :cond_2

    .line 193
    :cond_1
    const/4 v1, 0x0

    .line 199
    :cond_2
    return v1

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 197
    return v1
.end method

.method public static final getCurrentDateTimeAsFormattedString()Ljava/lang/String;
    .locals 14

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 157
    nop

    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 156
    const-string v2, "yyyy-MM-dd hh:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(\n      \u2026stem.currentTimeMillis())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    nop

    .line 162
    .local v0, "formattedTime":Ljava/lang/String;
    nop

    .line 163
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 165
    const-string v9, ":"

    const-string v10, "_"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "-"

    const-string v3, "_"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v9, "_at_"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    return-object v1
.end method

.method public static final getNFC_INTENT_FILTER()[Landroid/content/IntentFilter;
    .locals 1

    .line 140
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilsKt;->NFC_INTENT_FILTER:[Landroid/content/IntentFilter;

    return-object v0
.end method

.method public static final getTECH_LIST()[[Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilsKt;->TECH_LIST:[[Ljava/lang/String;

    return-object v0
.end method

.method public static final showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 3
    .param p0, "$this$showToast"    # Landroidx/fragment/app/Fragment;
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    return-void
.end method

.method private static final toDec([B)J
    .locals 9
    .param p0, "bytes"    # [B

    .line 119
    const-wide/16 v0, 0x0

    .line 120
    .local v0, "result":J
    const-wide/16 v2, 0x1

    .line 121
    .local v2, "factor":J
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 122
    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    .line 123
    .local v6, "value":B
    int-to-long v7, v6

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 124
    const-wide/16 v7, 0x100

    mul-long/2addr v2, v7

    .line 121
    .end local v6    # "value":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "i":I
    :cond_0
    return-wide v0
.end method

.method private static final toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    :cond_0
    move v2, v1

    .local v2, "i":I
    add-int/lit8 v1, v1, -0x1

    .line 95
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    .line 96
    .local v3, "b":B
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    if-lez v2, :cond_2

    .line 99
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .end local v3    # "b":B
    :cond_2
    if-gez v1, :cond_0

    .line 102
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toReversedDec([B)J
    .locals 9
    .param p0, "bytes"    # [B

    .line 130
    const-wide/16 v0, 0x0

    .line 131
    .local v0, "result":J
    const-wide/16 v2, 0x1

    .line 132
    .local v2, "factor":J
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    :cond_0
    move v5, v4

    .local v5, "i":I
    add-int/lit8 v4, v4, -0x1

    .line 133
    aget-byte v6, p0, v5

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    .line 134
    .local v6, "value":B
    int-to-long v7, v6

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 135
    const-wide/16 v7, 0x100

    mul-long/2addr v2, v7

    .line 132
    .end local v6    # "value":B
    if-gez v4, :cond_0

    .line 137
    .end local v5    # "i":I
    :cond_1
    return-wide v0
.end method

.method private static final toReversedHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 108
    if-lez v1, :cond_0

    .line 109
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    .line 112
    .local v3, "b":B
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .end local v3    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final validatePasswordMismatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "confirmPassword"    # Ljava/lang/String;

    const-string v0, "password"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
