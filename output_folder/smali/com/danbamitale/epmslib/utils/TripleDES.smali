.class public Lcom/danbamitale/epmslib/utils/TripleDES;
.super Ljava/lang/Object;
.source "TripleDES.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetKey([B)[B
    .locals 5
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 22
    const/16 v0, 0x18

    new-array v1, v0, [B

    .line 25
    .local v1, "bKey":[B
    array-length v2, p0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 29
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 30
    add-int/lit8 v2, v0, 0x8

    aget-byte v4, p0, v0

    aput-byte v4, v1, v2

    .line 31
    add-int/lit8 v2, v0, 0x10

    aget-byte v4, p0, v0

    aput-byte v4, v1, v2

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "i":I
    :cond_0
    array-length v2, p0

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    .line 36
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 38
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 39
    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p0, v4

    aput-byte v4, v1, v2

    .line 40
    add-int/lit8 v2, v0, 0x10

    aget-byte v4, p0, v0

    aput-byte v4, v1, v2

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    .end local v0    # "i":I
    :cond_1
    array-length v2, p0

    if-ne v2, v0, :cond_2

    .line 45
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 46
    aget-byte v3, p0, v2

    aput-byte v3, v1, v2

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static Hex2String([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 276
    if-nez p0, :cond_0

    .line 277
    const-string v0, ""

    return-object v0

    .line 279
    :cond_0
    const-string v0, ""

    .line 280
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 282
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    .line 283
    .local v2, "tmp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v4, v2, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    aget-byte v3, p0, v1

    and-int/lit8 v2, v3, 0xf

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v4, v2, 0xf

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .end local v2    # "tmp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static String2Hex(Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 301
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 302
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 301
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 223
    invoke-static {p0}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 224
    .local v0, "bData":[B
    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 225
    .local v1, "bKey":[B
    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/utils/TripleDES;->decrypt([B[B)[B

    move-result-object v2

    .line 226
    .local v2, "bOutput":[B
    invoke-static {v2}, Lcom/danbamitale/epmslib/utils/TripleDES;->Hex2String([B)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "result":Ljava/lang/String;
    return-object v3
.end method

.method public static decrypt([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 84
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->GetKey([B)[B

    move-result-object v1

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 86
    .local v0, "sk":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 87
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 88
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v2, "enc":[B
    return-object v2

    .line 94
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "enc":[B
    :catch_0
    move-exception v1

    goto :goto_1

    .line 93
    :catch_1
    move-exception v1

    goto :goto_0

    .line 92
    :catch_2
    move-exception v1

    goto :goto_0

    .line 91
    :catch_3
    move-exception v1

    goto :goto_0

    .line 90
    :catch_4
    move-exception v1

    .line 95
    :goto_0
    nop

    .line 97
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static decrypt_CBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 261
    invoke-static {p0}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 262
    .local v0, "bData":[B
    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 263
    .local v1, "bKey":[B
    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/utils/TripleDES;->decrypt_CBC([B[B)[B

    move-result-object v2

    .line 264
    .local v2, "bOutput":[B
    invoke-static {v2}, Lcom/danbamitale/epmslib/utils/TripleDES;->Hex2String([B)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "result":Ljava/lang/String;
    return-object v3
.end method

.method public static decrypt_CBC([B[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 172
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->GetKey([B)[B

    move-result-object v1

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 174
    .local v0, "sk":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 175
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 176
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 178
    .local v2, "enc":[B
    const/16 v3, 0x8

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 179
    aget-byte v4, v2, v3

    add-int/lit8 v5, v3, -0x8

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 187
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "enc":[B
    :catch_0
    move-exception v1

    goto :goto_2

    .line 186
    :catch_1
    move-exception v1

    goto :goto_1

    .line 185
    :catch_2
    move-exception v1

    goto :goto_1

    .line 184
    :catch_3
    move-exception v1

    goto :goto_1

    .line 183
    :catch_4
    move-exception v1

    goto :goto_1

    .line 182
    :catch_5
    move-exception v1

    .line 188
    :goto_1
    nop

    .line 190
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 205
    .local v0, "bData":[B
    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 206
    .local v1, "bKey":[B
    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/utils/TripleDES;->encrypt([B[B)[B

    move-result-object v2

    .line 207
    .local v2, "bOutput":[B
    invoke-static {v2}, Lcom/danbamitale/epmslib/utils/TripleDES;->Hex2String([B)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "result":Ljava/lang/String;
    return-object v3
.end method

.method public static encrypt([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 61
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->GetKey([B)[B

    move-result-object v1

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 63
    .local v0, "sk":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 64
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 70
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 69
    :catch_1
    move-exception v1

    goto :goto_0

    .line 68
    :catch_2
    move-exception v1

    goto :goto_0

    .line 67
    :catch_3
    move-exception v1

    goto :goto_0

    .line 66
    :catch_4
    move-exception v1

    .line 71
    :goto_0
    nop

    .line 73
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static encrypt_CBC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 242
    invoke-static {p0}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 243
    .local v0, "bData":[B
    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->String2Hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 244
    .local v1, "bKey":[B
    invoke-static {v0, v1}, Lcom/danbamitale/epmslib/utils/TripleDES;->encrypt_CBC([B[B)[B

    move-result-object v2

    .line 245
    .local v2, "bOutput":[B
    invoke-static {v2}, Lcom/danbamitale/epmslib/utils/TripleDES;->Hex2String([B)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "result":Ljava/lang/String;
    return-object v3
.end method

.method public static encrypt_CBC([B[B)[B
    .locals 10
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "key"
        }
    .end annotation

    .line 108
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->GetKey([B)[B

    move-result-object v1

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 110
    .local v0, "sk":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 111
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 112
    array-length v2, p0

    new-array v2, v2, [B

    .line 113
    .local v2, "enc":[B
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 114
    .local v4, "dataTemp1":[B
    new-array v5, v3, [B

    .line 115
    .local v5, "dataTemp2":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_2

    .line 117
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 118
    add-int v8, v6, v7

    aget-byte v8, p0, v8

    aget-byte v9, v5, v7

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 119
    .end local v7    # "j":I
    :cond_0
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    move-object v5, v7

    .line 120
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_2
    if-ge v7, v3, :cond_1

    .line 121
    add-int v8, v6, v7

    aget-byte v9, v5, v7

    aput-byte v9, v2, v8
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 115
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x8

    goto :goto_0

    .line 123
    .end local v6    # "i":I
    :cond_2
    return-object v2

    .line 128
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "enc":[B
    .end local v4    # "dataTemp1":[B
    .end local v5    # "dataTemp2":[B
    :catch_0
    move-exception v1

    goto :goto_4

    .line 127
    :catch_1
    move-exception v1

    goto :goto_3

    .line 126
    :catch_2
    move-exception v1

    goto :goto_3

    .line 125
    :catch_3
    move-exception v1

    goto :goto_3

    .line 124
    :catch_4
    move-exception v1

    .line 129
    :goto_3
    nop

    .line 131
    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public static encrypt_CBC([B[B[B)[B
    .locals 10
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "IV"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "key",
            "IV"
        }
    .end annotation

    .line 136
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/TripleDES;->GetKey([B)[B

    move-result-object v1

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 138
    .local v0, "sk":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 139
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 140
    array-length v2, p0

    new-array v2, v2, [B

    .line 141
    .local v2, "enc":[B
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 142
    .local v4, "dataTemp1":[B
    new-array v5, v3, [B

    .line 143
    .local v5, "dataTemp2":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 144
    aget-byte v7, p2, v6

    aput-byte v7, v5, v6

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    .end local v6    # "i":I
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_3

    .line 147
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v3, :cond_1

    .line 148
    add-int v8, v6, v7

    aget-byte v8, p0, v8

    aget-byte v9, v5, v7

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 147
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 149
    .end local v7    # "j":I
    :cond_1
    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    move-object v5, v7

    .line 150
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 151
    add-int v8, v6, v7

    aget-byte v9, v5, v7

    aput-byte v9, v2, v8
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 145
    .end local v7    # "j":I
    :cond_2
    add-int/lit8 v6, v6, 0x8

    goto :goto_1

    .line 153
    .end local v6    # "i":I
    :cond_3
    return-object v2

    .line 158
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "enc":[B
    .end local v4    # "dataTemp1":[B
    .end local v5    # "dataTemp2":[B
    :catch_0
    move-exception v1

    goto :goto_5

    .line 157
    :catch_1
    move-exception v1

    goto :goto_4

    .line 156
    :catch_2
    move-exception v1

    goto :goto_4

    .line 155
    :catch_3
    move-exception v1

    goto :goto_4

    .line 154
    :catch_4
    move-exception v1

    .line 159
    :goto_4
    nop

    .line 161
    :goto_5
    const/4 v1, 0x0

    return-object v1
.end method
