.class public Lcom/dspread/xpos/utils/c;
.super Ljava/lang/Object;
.source "EnvelopeGenerater.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)B
    .locals 1

    .line 61
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x5

    add-int/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    new-array v4, v0, [B

    .line 65
    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/2addr v7, v1

    add-int/2addr v7, v3

    invoke-static {v7}, Lcom/dspread/xpos/Util;->int2Byte(I)[B

    move-result-object v7

    .line 68
    array-length v8, v7

    invoke-static {v7, v6, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-static {p0}, Lcom/dspread/xpos/utils/c;->a(Ljava/lang/String;)[B

    move-result-object p0

    int-to-byte p2, p2

    .line 72
    aput-byte p2, v4, v2

    .line 73
    array-length p2, v7

    add-int/2addr p2, v3

    add-int/2addr p2, v3

    array-length v2, p0

    invoke-static {p0, v6, v4, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-array p0, v5, [B

    aput-byte v3, p0, v6

    aput-byte v1, p0, v3

    aput-byte v6, p0, v1

    const/4 p2, 0x3

    aput-byte v6, p0, p2

    add-int/lit8 p2, v0, 0x8

    .line 76
    new-array p2, p2, [B

    .line 77
    invoke-static {p0, v6, p2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-static {v0}, Lcom/dspread/xpos/Util;->int2Byte(I)[B

    move-result-object p0

    .line 79
    array-length v1, p0

    invoke-static {p0, v6, p2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length p0, p0

    add-int/2addr p0, v5

    invoke-static {v4, v6, p2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const-string p0, "MIICeQIBADANBgkqhkiG9w0BAQEFAASCAmMwggJfAgEAAoGBAJecAsUKhEjzQVrn\nD5BjaAWkZDb5hKz+uiOhIMXrhl9J+Gj2kDluJtHAd/TtweGDH36HKspY3ibAy46J\ngB1BPXnBbvMOuuh7Y6E70fmN4D0/xOMWZmaIDFRGUxqWe7GX867yAde/M5ExIbqS\n3dBCrRsL9Mdf/C9pBl6GIY1Zt0EXAgMBAAECgYAgpoaqLMOkek7e5tghPmdOn8K9\nXCtInmsz9SV7umdr6iBHaqJQ2/ocPhkXdITGrliABVgfz9e3/NlZzx7ZOpLRdfwi\nhrxi6xSVqG25teQbiFZwknGwApm6ALLpXx9N6/Au6ni6WMvmN+lFxCxzqdKG93ON\nfbbJYeIwhfIvG/wqkQJFAJkAvZDQBhDt6JiF6H540Gz1+bFYFE3m+WGqjxazHUAt\nZ1JYiSnhAxYt1TCS9Klm+QrWiGLbcKzAJBieynpJPXX/xnbbAj0A/ashWQXeHY1A\n12TBT2tFORmJjR5Vamp2RZRn5fOfticmPbXoAcutNrjB0vBhqR/vGioBDggA6fLk\nDn11AkRqeppycmMWWwt5Qg/YHGooulJH+l0/DdRWBOXJzWM466AxLY5fh8mnIMRy\nJoOAdToyMbT+32qdvqYgQDn3Oos8WIGc6wI8ffIopYWnSW7nocoRvLfa78XBKMLF\n0Ac538QWbfKu+oankv4tSi7xOnkzKuNU6d7EHW57hZbttTp2hsc9AkQvBkl4zIML\nl7TbtDbJH1aUh7zUdbmXrxdfB3QEsFPJ4FIzPJIU8QrecpHUBEKkt06oZXFzpLkW\nnt0xfbAa1l/GoOKK6w=="

    invoke-static {p0}, Lcom/dspread/xpos/utils/c;->b(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p0

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRSA_public_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/dspread/xpos/utils/c;->c(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    .line 90
    invoke-static {p2, p0, p1}, Lcom/dspread/xpos/utils/c;->b([BLjava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 92
    sget-object p0, Lcom/dspread/xpos/utils/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/dspread/xpos/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 4
    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 6
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    new-instance p0, Lcom/dspread/xpos/utils/c;

    invoke-direct {p0}, Lcom/dspread/xpos/utils/c;-><init>()V

    .line 63
    const-string v0, "A000000003BE9E1FA5E9A803852999C4AB432DB28600DCD9DAB76DFAAA47355A0FE37B1508AC6BF38860D3C6C2E5B12A3CAAF2A7005A7241EBAA7771112C74CF9A0634652FBCA0E5980C54A64761EA101A114E0F0B5572ADD57D010B7C9C887E104CA4EE1272DA66D997B9A90B5A6D624AB6C57E73C8F919000EB5F684898EF8C3DBEFB330C62660BED88EA78E909AFF05F6DA627B000003"

    invoke-static {v0}, Lcom/dspread/xpos/utils/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/utils/c;->e([B)[B

    return-void
.end method

.method public static a()[B
    .locals 1

    .line 2
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_1

    .line 52
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 56
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 60
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/dspread/xpos/utils/c;->a(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/dspread/xpos/utils/c;->a(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BLjava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lcom/dspread/xpos/utils/c;->a([BLjava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const-string v1, "RSA/None/NoPadding"

    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 18
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 19
    invoke-static {}, Lcom/dspread/xpos/utils/c;->a()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Envelope:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcom/dspread/xpos/utils/c;->c([B)[B

    move-result-object p0

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    array-length v0, p2

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 27
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    array-length v1, p2

    array-length v3, p0

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 31
    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 32
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 34
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    array-length v1, p0

    add-int/2addr v0, v1

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 35
    array-length v1, p2

    array-length v3, p0

    add-int/2addr v1, v3

    array-length v3, p1

    add-int/2addr v1, v3

    .line 36
    invoke-static {v1}, Lcom/dspread/xpos/Util;->int2Byte(I)[B

    move-result-object v1

    const/16 v3, 0x800

    if-ne p3, v3, :cond_0

    const/4 p3, 0x3

    const/16 v3, -0x80

    .line 38
    aput-byte v3, v1, p3

    .line 40
    :cond_0
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypedTdesKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nencrypedMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nsignedMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    array-length p3, v1

    invoke-static {v1, v2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    array-length p3, v1

    array-length v3, p2

    invoke-static {p2, v2, v0, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    array-length p3, v1

    array-length v3, p2

    add-int/2addr p3, v3

    array-length v3, p0

    invoke-static {p0, v2, v0, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    array-length p3, v1

    array-length p2, p2

    add-int/2addr p3, p2

    array-length p0, p0

    add-int/2addr p3, p0

    array-length p0, p1

    invoke-static {p1, v2, v0, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static a([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 46
    new-instance p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const-string v1, "DESede/CBC/NoPadding"

    invoke-static {v1, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 47
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 48
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 50
    array-length v5, p1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1

    .line 51
    invoke-virtual {p0, v0, p1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x5

    mul-int/2addr v4, v3

    new-array v6, v4, [B

    move-object v8, p0

    move v7, v1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "message5:"

    if-ge v7, v9, :cond_3

    .line 8
    :try_start_1
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_0

    move-object v8, p0

    goto :goto_1

    :cond_0
    if-ne v9, v2, :cond_1

    move-object/from16 v8, p2

    goto :goto_1

    :cond_1
    if-ne v9, v3, :cond_2

    move-object/from16 v8, p1

    .line 17
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    div-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x5

    new-array v12, v11, [B

    int-to-byte v9, v9

    .line 18
    aput-byte v9, v12, v1

    .line 19
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    div-int/2addr v9, v5

    invoke-static {v9}, Lcom/dspread/xpos/Util;->int2Byte(I)[B

    move-result-object v9

    .line 20
    array-length v13, v9

    invoke-static {v9, v1, v12, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-static {v8}, Lcom/dspread/xpos/utils/c;->a(Ljava/lang/String;)[B

    move-result-object v13

    .line 22
    array-length v9, v9

    add-int/2addr v9, v2

    array-length v14, v13

    invoke-static {v13, v1, v12, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v9, v11, v7

    .line 23
    invoke-static {v12, v1, v6, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 27
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 28
    new-array v7, v0, [B

    aput-byte v2, v7, v1

    aput-byte v5, v7, v2

    aput-byte v1, v7, v5

    aput-byte v1, v7, v3

    add-int/lit8 v2, v4, 0x8

    .line 29
    new-array v2, v2, [B

    .line 30
    invoke-static {v7, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-static {v4}, Lcom/dspread/xpos/Util;->int2Byte(I)[B

    move-result-object v3

    .line 32
    array-length v5, v3

    invoke-static {v3, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    array-length v3, v3

    add-int/2addr v3, v0

    invoke-static {v6, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message6:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    const-string v0, "MIICeQIBADANBgkqhkiG9w0BAQEFAASCAmMwggJfAgEAAoGBAJecAsUKhEjzQVrn\nD5BjaAWkZDb5hKz+uiOhIMXrhl9J+Gj2kDluJtHAd/TtweGDH36HKspY3ibAy46J\ngB1BPXnBbvMOuuh7Y6E70fmN4D0/xOMWZmaIDFRGUxqWe7GX867yAde/M5ExIbqS\n3dBCrRsL9Mdf/C9pBl6GIY1Zt0EXAgMBAAECgYAgpoaqLMOkek7e5tghPmdOn8K9\nXCtInmsz9SV7umdr6iBHaqJQ2/ocPhkXdITGrliABVgfz9e3/NlZzx7ZOpLRdfwi\nhrxi6xSVqG25teQbiFZwknGwApm6ALLpXx9N6/Au6ni6WMvmN+lFxCxzqdKG93ON\nfbbJYeIwhfIvG/wqkQJFAJkAvZDQBhDt6JiF6H540Gz1+bFYFE3m+WGqjxazHUAt\nZ1JYiSnhAxYt1TCS9Klm+QrWiGLbcKzAJBieynpJPXX/xnbbAj0A/ashWQXeHY1A\n12TBT2tFORmJjR5Vamp2RZRn5fOfticmPbXoAcutNrjB0vBhqR/vGioBDggA6fLk\nDn11AkRqeppycmMWWwt5Qg/YHGooulJH+l0/DdRWBOXJzWM466AxLY5fh8mnIMRy\nJoOAdToyMbT+32qdvqYgQDn3Oos8WIGc6wI8ffIopYWnSW7nocoRvLfa78XBKMLF\n0Ac538QWbfKu+oankv4tSi7xOnkzKuNU6d7EHW57hZbttTp2hsc9AkQvBkl4zIML\nl7TbtDbJH1aUh7zUdbmXrxdfB3QEsFPJ4FIzPJIU8QrecpHUBEKkt06oZXFzpLkW\nnt0xfbAa1l/GoOKK6w=="

    invoke-static {v0}, Lcom/dspread/xpos/utils/c;->b(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    .line 38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRSA_public_key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    invoke-static/range {p3 .. p3}, Lcom/dspread/xpos/utils/c;->c(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    .line 43
    invoke-static {v2, v0, v1}, Lcom/dspread/xpos/utils/c;->b([BLjava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 45
    sget-object v0, Lcom/dspread/xpos/utils/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 6

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 47
    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    .line 48
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 49
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b([BLjava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 3

    .line 75
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/dspread/xpos/utils/c;->a([BLjava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p0

    .line 77
    array-length p1, p0

    div-int/lit16 p1, p1, 0x100

    .line 78
    array-length p2, p0

    rem-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    mul-int/lit16 p1, p1, 0x100

    .line 82
    new-array p2, p1, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    const/4 v2, -0x1

    .line 86
    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_2
    array-length v1, p0

    invoke-static {p0, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "de:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\npde:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p2}, Lcom/dspread/xpos/utils/c;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-static {p2}, Lcom/dspread/xpos/utils/c;->a([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/dspread/xpos/utils/c;->a:Ljava/lang/String;

    .line 97
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/dspread/xpos/utils/c;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "digitalEnvelopStr:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/dspread/xpos/utils/c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object p0, Lcom/dspread/xpos/utils/c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    sget-object p0, Lcom/dspread/xpos/utils/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance v0, Lcom/dspread/xpos/utils/BASE64Decoder;

    invoke-direct {v0}, Lcom/dspread/xpos/utils/BASE64Decoder;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object p0

    .line 61
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 62
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 63
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 71
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u79c1\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 72
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u79c1\u94a5\u6570\u636e\u5185\u5bb9\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    .line 73
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u79c1\u94a5\u975e\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    .line 74
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 25
    new-instance p0, Ljava/math/BigInteger;

    const-string v3, "010001"

    invoke-direct {p0, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 27
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v1, p0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    return-object p0
.end method

.method public static c([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/dspread/xpos/utils/c;->d([B)[B

    move-result-object p0

    .line 2
    array-length v0, p0

    const/16 v1, 0x8

    div-int/2addr v0, v1

    .line 3
    array-length v2, p0

    rem-int/2addr v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    mul-int/lit8 v2, v0, 0x8

    .line 7
    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    const/4 v6, -0x1

    .line 11
    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_1
    array-length v5, p0

    invoke-static {p0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    new-array p0, v2, [B

    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_2

    .line 18
    new-array v5, v1, [B

    mul-int/lit8 v6, v2, 0x8

    .line 20
    invoke-static {v3, v6, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-static {}, Lcom/dspread/xpos/utils/c;->a()[B

    move-result-object v7

    invoke-static {v7, v5}, Lcom/dspread/xpos/utils/c;->a([B[B)[B

    move-result-object v5

    .line 22
    invoke-static {v5, v4, p0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static d([B)[B
    .locals 5

    .line 42
    array-length v0, p0

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 45
    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->int2Byte(I)[B

    move-result-object v0

    .line 49
    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    array-length v0, p0

    invoke-static {p0, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public d(Ljava/lang/String;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 6
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_5

    .line 27
    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_1

    .line 28
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 35
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 40
    :goto_3
    throw p1

    :catch_4
    move-exception p1

    :goto_4
    if-eqz v2, :cond_2

    .line 41
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 27
    :cond_2
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 41
    :goto_6
    return-object v1
.end method

.method public e(Ljava/lang/String;)[B
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/utils/c;->e([B)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 4
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlainText message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/dspread/xpos/utils/c;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sha-1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/dspread/xpos/utils/c;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-object v0
.end method
