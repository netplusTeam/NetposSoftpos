.class public Lcom/dspread/august/common/wbaes/AESEncrypt;
.super Ljava/lang/Object;
.source "AESEncrypt.java"


# static fields
.field public static pkcs5PaddingBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dspread/august/common/wbaes/AESEncrypt;->pkcs5PaddingBytes:[B

    return-void

    :array_0
    .array-data 1
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
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt([B[BLjava/lang/String;)[B
    .locals 11

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/io/ObjectInputStream;

    invoke-direct {p2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dspread/august/common/wbaes/AES;

    .line 4
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->close()V

    .line 5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    array-length p2, p0

    const/16 v0, 0x10

    rem-int/2addr p2, v0

    rsub-int/lit8 p2, p2, 0x10

    .line 16
    array-length v1, p0

    div-int/2addr v1, v0

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-nez p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 22
    :cond_0
    sget-object v4, Lcom/dspread/august/common/wbaes/AESEncrypt;->pkcs5PaddingBytes:[B

    add-int/lit8 v5, p2, -0x1

    aget-byte v4, v4, v5

    mul-int/lit8 v5, v1, 0x10

    .line 24
    new-array v5, v5, [B

    .line 29
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_5

    add-int/lit8 v8, v1, -0x1

    if-ne v7, v8, :cond_2

    .line 35
    new-array v8, v0, [B

    move v9, v6

    :goto_1
    if-ge v9, v0, :cond_3

    rsub-int/lit8 v10, p2, 0x10

    if-ge v9, v10, :cond_1

    mul-int/lit8 v10, v7, 0x10

    add-int/2addr v10, v9

    .line 38
    aget-byte v10, p0, v10

    aput-byte v10, v8, v9

    goto :goto_2

    .line 41
    :cond_1
    aput-byte v4, v8, v9

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v8, v7, 0x10

    add-int/lit8 v9, v8, 0x10

    .line 46
    invoke-static {p0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 50
    :cond_3
    invoke-static {v8, p1}, Lcom/dspread/august/common/wbaes/AESEncrypt;->xor([B[B)[B

    move-result-object p1

    .line 52
    new-instance v8, Lcom/dspread/august/common/wbaes/State;

    invoke-direct {v8, p1, v3, v6}, Lcom/dspread/august/common/wbaes/State;-><init>([BZZ)V

    .line 53
    invoke-virtual {v8}, Lcom/dspread/august/common/wbaes/State;->transpose()Lcom/dspread/august/common/wbaes/State;

    .line 55
    invoke-virtual {v2, v8}, Lcom/dspread/august/common/wbaes/AES;->crypt(Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    .line 57
    invoke-virtual {v8}, Lcom/dspread/august/common/wbaes/State;->getStateCopy()[B

    move-result-object p1

    move v8, v6

    :goto_3
    if-ge v8, v0, :cond_4

    mul-int/lit8 v9, v7, 0x10

    add-int/2addr v9, v8

    .line 61
    aget-byte v10, p1, v8

    aput-byte v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v5

    :catch_0
    move-exception p0

    return-object v0

    :catch_1
    move-exception p0

    return-object v0
.end method

.method public static xor([B[B)[B
    .locals 5

    .line 1
    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
