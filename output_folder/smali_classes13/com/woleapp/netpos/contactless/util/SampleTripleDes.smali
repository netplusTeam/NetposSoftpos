.class public Lcom/woleapp/netpos/contactless/util/SampleTripleDes;
.super Ljava/lang/Object;
.source "SampleTripleDes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 91
    const/16 v0, 0x18

    new-array v1, v0, [B

    .line 93
    .local v1, "bKey":[B
    array-length v2, p0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 95
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 96
    add-int/lit8 v2, v0, 0x8

    aget-byte v4, p0, v0

    aput-byte v4, v1, v2

    .line 97
    add-int/lit8 v2, v0, 0x10

    aget-byte v4, p0, v0

    aput-byte v4, v1, v2

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    array-length v2, p0

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    .line 100
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 101
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 102
    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v4, v0, 0x8

    aget-byte v4, p0, v4

    aput-byte v4, v1, v2

    .line 103
    add-int/lit8 v2, v0, 0x10

    aget-byte v4, p0, v0

    aput-byte v4, v1, v2

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    :cond_1
    array-length v2, p0

    if-ne v2, v0, :cond_2

    .line 106
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 107
    aget-byte v3, p0, v2

    aput-byte v3, v1, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
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

    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string v0, ""

    return-object v0

    .line 39
    :cond_0
    const-string v0, ""

    .line 41
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 42
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    .line 43
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

    .line 44
    aget-byte v3, p0, v1

    and-int/lit8 v2, v3, 0xf

    .line 45
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

    .line 41
    .end local v2    # "tmp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
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

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 55
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 56
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 55
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 59
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

    .line 28
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->String2Hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 30
    .local v0, "bData":[B
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->String2Hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 31
    .local v1, "bKey":[B
    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->decrypt([B[B)[B

    move-result-object v2

    .line 32
    .local v2, "bOutput":[B
    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->Hex2String([B)Ljava/lang/String;

    move-result-object v3

    .line 33
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

    .line 76
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->GetKey([B)[B

    move-result-object v1

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 79
    .local v0, "sk":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 80
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 81
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v2, "enc":[B
    return-object v2

    .line 83
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "enc":[B
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 84
    .local v1, "var5":Ljava/security/GeneralSecurityException;
    :goto_0
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 87
    .end local v1    # "var5":Ljava/security/GeneralSecurityException;
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

    .line 20
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->String2Hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 21
    .local v0, "bData":[B
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->String2Hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 22
    .local v1, "bKey":[B
    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->encrypt([B[B)[B

    move-result-object v2

    .line 23
    .local v2, "bOutput":[B
    invoke-static {v2}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->Hex2String([B)Ljava/lang/String;

    move-result-object v3

    .line 24
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

    .line 62
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/SampleTripleDes;->GetKey([B)[B

    move-result-object v1

    const-string v2, "DESede"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 65
    .local v0, "sk":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v1, "DESede/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 66
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 67
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v2, "enc":[B
    return-object v2

    .line 69
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "enc":[B
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    .line 72
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
