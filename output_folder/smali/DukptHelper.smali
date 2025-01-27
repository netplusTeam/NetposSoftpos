.class public final LDukptHelper;
.super Ljava/lang/Object;
.source "DukptHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0012\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J \u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0016\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004J\u001a\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "LDukptHelper;",
        "",
        "()V",
        "BlackBoxLogic",
        "",
        "ksn",
        "iPek",
        "DesEncryptDukpt",
        "workingKey",
        "clearPinBlock",
        "XORorANDorORfunction",
        "valueA",
        "valueB",
        "symbol",
        "byteArrayToHexString",
        "key",
        "",
        "desEncrypt",
        "desData",
        "encryptPinBlock",
        "pan",
        "pin",
        "getSessionKey",
        "IPEK",
        "KSN",
        "hexStringToByteArray",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:LDukptHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LDukptHelper;

    invoke-direct {v0}, LDukptHelper;-><init>()V

    sput-object v0, LDukptHelper;->INSTANCE:LDukptHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic XORorANDorORfunction$default(LDukptHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 65
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string/jumbo p3, "|"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final desEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "desData"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p2}, LDukptHelper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 161
    .local v0, "keyData":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    nop

    .line 163
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    check-cast v2, Ljava/security/spec/KeySpec;

    .line 164
    .local v2, "keySpec":Ljava/security/spec/KeySpec;
    const-string v3, "DES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    const-string v4, "getInstance(\"DES\").generateSecret(keySpec)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .local v3, "key":Ljavax/crypto/SecretKey;
    const-string v4, "DES/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const-string v5, "getInstance(\"DES/ECB/PKCS5Padding\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .local v4, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    move-object v6, v3

    check-cast v6, Ljava/security/Key;

    invoke-virtual {v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 167
    invoke-virtual {p0, p1}, LDukptHelper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception DES Encryption.. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "bout.toByteArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, LDukptHelper;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic getSessionKey$default(LDukptHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 12
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 13
    sget-object p1, Lcom/danbamitale/epmslib/utils/UtilityParams;->INSTANCE:Lcom/danbamitale/epmslib/utils/UtilityParams;

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/utils/UtilityParams;->getSTRING_SESSION_KEY()Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 14
    sget-object p2, Lcom/danbamitale/epmslib/utils/UtilityParams;->INSTANCE:Lcom/danbamitale/epmslib/utils/UtilityParams;

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/utils/UtilityParams;->getSTRING_KSN_LIVE()Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, LDukptHelper;->getSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final BlackBoxLogic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "ksn"    # Ljava/lang/String;
    .param p2, "iPek"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "ksn"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "iPek"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "^"

    const/16 v5, 0x20

    if-ge v3, v5, :cond_0

    .line 94
    invoke-virtual {v0, v2, v1, v4}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "msg":Ljava/lang/String;
    invoke-direct {v0, v3, v2}, LDukptHelper;->desEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "desreslt":Ljava/lang/String;
    invoke-virtual {v0, v5, v2, v4}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "rsesskey":Ljava/lang/String;
    return-object v4

    .line 102
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "rsesskey":Ljava/lang/String;
    .end local v5    # "desreslt":Ljava/lang/String;
    :cond_0
    move-object/from16 v3, p2

    .line 103
    .local v3, "current_sk":Ljava/lang/String;
    move-object/from16 v5, p1

    .line 105
    .local v5, "ksn_mod":Ljava/lang/String;
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 105
    const-string v6, "FFFFFFFFFFFFFFFF0000000000000000"

    const-string v7, "&"

    invoke-virtual {v0, v3, v6, v7}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "this as java.lang.String).substring(startIndex)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    nop

    .line 111
    .local v8, "leftIpek":Ljava/lang/String;
    const-string v11, "0000000000000000FFFFFFFFFFFFFFFF"

    invoke-virtual {v0, v3, v11, v7}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    nop

    .line 113
    .local v12, "rightIpek":Ljava/lang/String;
    invoke-virtual {v0, v12, v5, v4}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "message":Ljava/lang/String;
    invoke-direct {v0, v13, v8}, LDukptHelper;->desEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, "desresult":Ljava/lang/String;
    invoke-virtual {v0, v14, v12, v4}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 117
    .local v15, "rightSessionKey":Ljava/lang/String;
    const-string v9, "C0C0C0C000000000C0C0C0C000000000"

    invoke-virtual {v0, v3, v9, v4}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 116
    nop

    .line 118
    .local v9, "resultCurrent_sk":Ljava/lang/String;
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 118
    invoke-virtual {v0, v9, v6, v7}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    nop

    .line 123
    .local v1, "leftIpek2":Ljava/lang/String;
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 123
    invoke-virtual {v0, v9, v11, v7}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    nop

    .line 128
    .local v2, "rightIpek2":Ljava/lang/String;
    invoke-virtual {v0, v2, v5, v4}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "message2":Ljava/lang/String;
    invoke-direct {v0, v6, v1}, LDukptHelper;->desEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "desresult2":Ljava/lang/String;
    invoke-virtual {v0, v7, v2, v4}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "leftSessionKey":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public final DesEncryptDukpt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "workingKey"    # Ljava/lang/String;
    .param p2, "clearPinBlock"    # Ljava/lang/String;

    const-string/jumbo v0, "workingKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearPinBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const-string v0, "^"

    invoke-virtual {p0, p1, p2, v0}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "pinBlock":Ljava/lang/String;
    invoke-virtual {p0, p1}, LDukptHelper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 177
    .local v2, "keyData":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v3, "bout":Ljava/io/ByteArrayOutputStream;
    nop

    .line 179
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    check-cast v4, Ljava/security/spec/KeySpec;

    .line 180
    .local v4, "keySpec":Ljava/security/spec/KeySpec;
    const-string v5, "DES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    const-string v6, "getInstance(\"DES\").generateSecret(keySpec)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .local v5, "key":Ljavax/crypto/SecretKey;
    const-string v6, "DES/ECB/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const-string v7, "getInstance(\"DES/ECB/PKCS5Padding\")"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    move-object v8, v5

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 183
    invoke-virtual {p0, v1}, LDukptHelper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v5    # "key":Ljavax/crypto/SecretKey;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 184
    :catch_0
    move-exception v4

    .line 185
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception .. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 187
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 188
    nop

    .line 189
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "bout.toByteArray()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, LDukptHelper;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 190
    const/4 v5, 0x0

    .line 191
    const/16 v6, 0x10

    .line 189
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    nop

    .line 187
    invoke-virtual {p0, p1, v4, v0}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "valueA"    # Ljava/lang/String;
    .param p2, "valueB"    # Ljava/lang/String;
    .param p3, "symbol"    # Ljava/lang/String;

    const-string/jumbo v0, "valueA"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueB"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "symbol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .local v0, "a":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 68
    .local v1, "b":[C
    const-string v2, ""

    .line 70
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([C)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :goto_0
    if-ge v3, v4, :cond_2

    .line 71
    const-string/jumbo v5, "this as java.lang.String).toUpperCase()"

    const-string/jumbo v6, "toString(this, checkRadix(radix))"

    const/16 v7, 0x10

    const-string/jumbo v8, "|"

    if-ne p3, v8, :cond_0

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 74
    nop

    .line 73
    aget-char v9, v0, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 74
    aget-char v10, v1, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 73
    or-int/2addr v9, v10

    .line 74
    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 76
    :cond_0
    const-string v8, "^"

    if-ne p3, v8, :cond_1

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    nop

    .line 78
    aget-char v9, v0, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 79
    aget-char v10, v1, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 78
    xor-int/2addr v9, v10

    .line 79
    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 82
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 85
    nop

    .line 83
    aget-char v9, v0, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 84
    aget-char v10, v1, v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 83
    and-int/2addr v9, v10

    .line 85
    invoke-static {v7}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 88
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public final byteArrayToHexString([B)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # [B

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-string v0, ""

    .line 153
    .local v0, "st":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    .line 154
    .local v4, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v0
.end method

.method public final encryptPinBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pan"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    const-string/jumbo v0, "pan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "pan":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The expected value of the encrypted pan is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "toString(this, checkRadix(radix))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-static {p2, v1, v3}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "pin":Ljava/lang/String;
    const-string v2, "^"

    invoke-virtual {p0, v0, v1, v2}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "ppp":Ljava/lang/String;
    return-object v2
.end method

.method public final getSessionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "IPEK"    # Ljava/lang/String;
    .param p2, "KSN"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "IPEK"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "KSN"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object/from16 v2, p1

    .line 18
    .local v2, "initialIPEK":Ljava/lang/String;
    const/16 v4, 0x14

    const/16 v5, 0x30

    invoke-static {v1, v4, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    .line 19
    .local v4, "ksn":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The expected value of the ksn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 20
    const-string v6, ""

    .line 22
    .local v6, "sessionkey":Ljava/lang/String;
    const-string v7, "0000FFFFFFFFFFE00000"

    const-string v8, "&"

    invoke-virtual {v0, v4, v7, v8}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, "newKSN":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The expected value of the new KSN is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "this as java.lang.String).substring(startIndex)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x10

    invoke-static {v8, v10, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v8

    .line 28
    .local v8, "counterKSN":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .local v11, "newKSNtoleft16":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v12

    .line 31
    .local v12, "counterKSNbin":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The expected value of the counter KSN Bin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 32
    move-object v13, v12

    .line 33
    .local v13, "binarycount":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    :goto_0
    if-ge v14, v15, :cond_1

    .line 34
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 35
    .local v10, "len":I
    const-string v16, ""

    .line 36
    .local v16, "result":Ljava/lang/String;
    const-string v5, "binarycount"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "1"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v17, v4

    .end local v4    # "ksn":Ljava/lang/String;
    .local v17, "ksn":Ljava/lang/String;
    const-string v4, "The expected value of the new binary count is "

    if-eqz v1, :cond_0

    .line 37
    const/16 v1, 0x30

    invoke-static {v3, v10, v1}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    .line 38
    .end local v16    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "newKSN":Ljava/lang/String;
    .local v18, "newKSN":Ljava/lang/String;
    const-string v7, "The expected value of the result is "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 39
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .end local v13    # "binarycount":Ljava/lang/String;
    .local v1, "binarycount":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 46
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "toHexString(Integer.parseInt(result, 2))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "this as java.lang.String).toUpperCase()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x30

    const/16 v7, 0x10

    invoke-static {v4, v7, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    .line 46
    nop

    .line 49
    .local v4, "counterKSN2":Ljava/lang/String;
    const-string/jumbo v13, "|"

    invoke-virtual {v0, v11, v4, v13}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, "newKSN2":Ljava/lang/String;
    invoke-virtual {v0, v13, v2}, LDukptHelper;->BlackBoxLogic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    move-object v11, v13

    .line 54
    move-object v2, v6

    move-object v13, v1

    move v1, v5

    goto :goto_1

    .line 42
    .end local v1    # "binarycount":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "counterKSN2":Ljava/lang/String;
    .end local v18    # "newKSN":Ljava/lang/String;
    .restart local v7    # "newKSN":Ljava/lang/String;
    .local v13, "binarycount":Ljava/lang/String;
    .restart local v16    # "result":Ljava/lang/String;
    :cond_0
    move-object/from16 v18, v7

    const/16 v1, 0x30

    const/16 v7, 0x10

    .end local v7    # "newKSN":Ljava/lang/String;
    .restart local v18    # "newKSN":Ljava/lang/String;
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .end local v13    # "binarycount":Ljava/lang/String;
    .local v3, "binarycount":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 44
    move-object v13, v3

    .line 33
    .end local v3    # "binarycount":Ljava/lang/String;
    .end local v10    # "len":I
    .end local v16    # "result":Ljava/lang/String;
    .restart local v13    # "binarycount":Ljava/lang/String;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p1

    move v5, v1

    move v10, v7

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v1, p2

    goto/16 :goto_0

    .end local v17    # "ksn":Ljava/lang/String;
    .end local v18    # "newKSN":Ljava/lang/String;
    .local v4, "ksn":Ljava/lang/String;
    .restart local v7    # "newKSN":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    .line 56
    .end local v4    # "ksn":Ljava/lang/String;
    .end local v7    # "newKSN":Ljava/lang/String;
    .end local v14    # "i":I
    .restart local v17    # "ksn":Ljava/lang/String;
    .restart local v18    # "newKSN":Ljava/lang/String;
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 56
    const-string v1, "00000000000000FF00000000000000FF"

    const-string v3, "^"

    invoke-virtual {v0, v6, v1, v3}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "checkWorkingKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*************************The expected value of the working key is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0, v6, v1, v3}, LDukptHelper;->XORorANDorORfunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 145
    .local v1, "result":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    .local v2, "i":I
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    if-lez v0, :cond_0

    if-le v2, v3, :cond_1

    :cond_0
    if-gez v0, :cond_2

    if-gt v3, v2, :cond_2

    .line 146
    :cond_1
    :goto_0
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v1, v4}, Lkotlin/collections/ArraysKt;->plus([BB)[B

    move-result-object v1

    .line 145
    if-eq v2, v3, :cond_2

    add-int/2addr v2, v0

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method
