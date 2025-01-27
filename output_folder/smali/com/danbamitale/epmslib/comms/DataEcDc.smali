.class public final Lcom/danbamitale/epmslib/comms/DataEcDc;
.super Ljava/lang/Object;
.source "DataEcDc.kt"

# interfaces
.implements Lcom/danbamitale/epmslib/domain/DataEc;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\u0002R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/comms/DataEcDc;",
        "Lcom/danbamitale/epmslib/domain/DataEc;",
        "secretKey",
        "",
        "iv",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "decrypt",
        "",
        "data",
        "key",
        "decryptData",
        "encryptedData",
        "encrypt",
        "encryptData",
        "getKey",
        "hexToString",
        "stringToHex",
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


# instance fields
.field private final iv:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "secretKey"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;

    const-string/jumbo v0, "secretKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/danbamitale/epmslib/comms/DataEcDc;->secretKey:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/danbamitale/epmslib/comms/DataEcDc;->iv:Ljava/lang/String;

    .line 10
    return-void
.end method

.method private final decrypt([B[B)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "key"    # [B

    .line 105
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p2}, Lcom/danbamitale/epmslib/comms/DataEcDc;->getKey([B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 106
    .local v0, "sk":Ljavax/crypto/SecretKey;
    nop

    .line 108
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 107
    nop

    .line 109
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    move-object v3, v0

    check-cast v3, Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 110
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 115
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v1

    goto :goto_0

    .line 113
    :catch_2
    move-exception v1

    goto :goto_0

    .line 112
    :catch_3
    move-exception v1

    goto :goto_0

    .line 111
    :catch_4
    move-exception v1

    .line 117
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final encrypt([B[B)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "key"    # [B

    .line 89
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/danbamitale/epmslib/comms/DataEcDc;->getKey([B)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 90
    .local v0, "sk":Ljavax/crypto/SecretKey;
    nop

    .line 92
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 91
    nop

    .line 93
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    move-object v3, v0

    check-cast v3, Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 99
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    goto :goto_0

    .line 97
    :catch_2
    move-exception v1

    goto :goto_0

    .line 96
    :catch_3
    move-exception v1

    goto :goto_0

    .line 95
    :catch_4
    move-exception v1

    .line 101
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getKey([B)[B
    .locals 5
    .param p1, "key"    # [B

    .line 32
    const/16 v0, 0x18

    new-array v1, v0, [B

    .local v1, "bKey":[B
    const/4 v2, 0x0

    .line 34
    .local v2, "i":I
    array-length v3, p1

    const/16 v4, 0x8

    sparse-switch v3, :sswitch_data_0

    goto :goto_3

    .line 54
    :sswitch_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-ge v2, v0, :cond_0

    .line 56
    aget-byte v3, p1, v2

    aput-byte v3, v1, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :sswitch_1
    const/4 v0, 0x0

    move v2, v0

    .line 46
    :goto_1
    if-ge v2, v4, :cond_0

    .line 47
    aget-byte v0, p1, v2

    aput-byte v0, v1, v2

    .line 48
    add-int/lit8 v0, v2, 0x8

    add-int/lit8 v3, v2, 0x8

    aget-byte v3, p1, v3

    aput-byte v3, v1, v0

    .line 49
    add-int/lit8 v0, v2, 0x10

    aget-byte v3, p1, v2

    aput-byte v3, v1, v0

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    :sswitch_2
    const/4 v0, 0x0

    move v2, v0

    .line 37
    :goto_2
    if-ge v2, v4, :cond_0

    .line 38
    aget-byte v0, p1, v2

    aput-byte v0, v1, v2

    .line 39
    add-int/lit8 v0, v2, 0x8

    aget-byte v3, p1, v2

    aput-byte v3, v1, v0

    .line 40
    add-int/lit8 v0, v2, 0x10

    aget-byte v3, p1, v2

    aput-byte v3, v1, v0

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 61
    :cond_0
    :goto_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private final hexToString([B)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # [B

    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v0, ""

    return-object v0

    .line 78
    :cond_0
    const-string v0, ""

    .line 79
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 80
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    .line 81
    .local v3, "tmp":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v3, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0xf

    int-to-byte v3, v4

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v3, 0xf

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .end local v3    # "tmp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private final stringToHex(Ljava/lang/String;)[B
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 66
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 67
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    .line 69
    goto :goto_0

    .line 71
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encryptedData"    # Ljava/lang/String;

    const-string v0, "encryptedData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/danbamitale/epmslib/comms/DataEcDc;->stringToHex(Ljava/lang/String;)[B

    move-result-object v0

    .line 25
    .local v0, "bData":[B
    iget-object v1, p0, Lcom/danbamitale/epmslib/comms/DataEcDc;->secretKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/danbamitale/epmslib/comms/DataEcDc;->stringToHex(Ljava/lang/String;)[B

    move-result-object v1

    .line 26
    .local v1, "bKey":[B
    invoke-direct {p0, v0, v1}, Lcom/danbamitale/epmslib/comms/DataEcDc;->decrypt([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .local v2, "bOutput":[B
    invoke-direct {p0, v2}, Lcom/danbamitale/epmslib/comms/DataEcDc;->hexToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v3
.end method

.method public encryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .local v0, "bData":[B
    iget-object v2, p0, Lcom/danbamitale/epmslib/comms/DataEcDc;->secretKey:Ljava/lang/String;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 18
    .local v1, "bKey":[B
    invoke-direct {p0, v0, v1}, Lcom/danbamitale/epmslib/comms/DataEcDc;->encrypt([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .local v2, "bOutput":[B
    invoke-direct {p0, v2}, Lcom/danbamitale/epmslib/comms/DataEcDc;->hexToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v3
.end method
