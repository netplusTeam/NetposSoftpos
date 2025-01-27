.class public Lcom/dspread/august/common/wbaes/WhiteBoxAESUtil;
.super Ljava/lang/Object;
.source "WhiteBoxAESUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static ivTime:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMddHH"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/dspread/august/common/wbaes/WhiteBoxAESUtil;->ivTime:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ivSetter(Ljava/lang/String;Z)[B
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 3
    const/16 v1, 0x10

    new-array v2, v1, [B

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_3

    :cond_0
    nop

    .line 11
    new-array v2, v1, [B

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    :goto_0
    if-ge v4, v1, :cond_3

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    aget-byte p1, p1, v4

    aput-byte p1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aget-byte v3, v3, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 21
    sget-object p1, Lcom/dspread/august/common/wbaes/WhiteBoxAESUtil;->ivTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge v4, v0, :cond_3

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v4

    aget-byte v1, v1, v3

    aput-byte v1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v2
.end method

.method public static readAESTable(Landroid/content/Context;)Lcom/dspread/august/common/wbaes/AES;
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "aes-table-table"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dspread/august/common/wbaes/AES;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :try_start_3
    const-string/jumbo v0, "tt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aes-table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 18
    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    move-object v1, v0

    goto :goto_5

    .line 14
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 18
    :catch_3
    move-exception v1

    move-object v1, v0

    :goto_1
    move-object v0, p0

    goto :goto_4

    .line 14
    :catchall_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 18
    :goto_3
    throw v0

    :catch_5
    move-exception p0

    move-object v1, v0

    :goto_4
    move-object p0, v0

    .line 14
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    .line 18
    :goto_6
    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    add-int/lit8 v5, v2, 0x1

    .line 8
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 9
    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 2
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 5
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static whiteBoxAESEncrypt(Lcom/dspread/august/common/wbaes/AES;[B[B)[B
    .locals 11

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x10

    .line 2
    array-length v2, p1

    div-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 5
    array-length v4, p1

    rem-int/2addr v4, v1

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 8
    :cond_0
    sget-object v4, Lcom/dspread/august/common/wbaes/AESEncrypt;->pkcs5PaddingBytes:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v4, v4, v5

    mul-int/lit8 v5, v2, 0x10

    .line 10
    new-array v5, v5, [B

    .line 15
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_4

    add-int/lit8 v8, v2, -0x1

    if-ne v7, v8, :cond_2

    .line 21
    new-array v8, v1, [B

    move v9, v6

    :goto_1
    if-ge v9, v1, :cond_3

    rsub-int/lit8 v10, v0, 0x10

    if-ge v9, v10, :cond_1

    mul-int/lit8 v10, v7, 0x10

    add-int/2addr v10, v9

    .line 24
    aget-byte v10, p1, v10

    aput-byte v10, v8, v9

    goto :goto_2

    .line 27
    :cond_1
    aput-byte v4, v8, v9

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v8, v7, 0x10

    add-int/lit8 v9, v8, 0x10

    .line 32
    invoke-static {p1, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 36
    :cond_3
    invoke-static {v8, p2}, Lcom/dspread/august/common/wbaes/AESEncrypt;->xor([B[B)[B

    move-result-object p2

    .line 38
    new-instance v8, Lcom/dspread/august/common/wbaes/State;

    invoke-direct {v8, p2, v3, v6}, Lcom/dspread/august/common/wbaes/State;-><init>([BZZ)V

    .line 39
    invoke-virtual {v8}, Lcom/dspread/august/common/wbaes/State;->transpose()Lcom/dspread/august/common/wbaes/State;

    .line 41
    invoke-virtual {p0, v8}, Lcom/dspread/august/common/wbaes/AES;->crypt(Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    .line 43
    invoke-virtual {v8}, Lcom/dspread/august/common/wbaes/State;->getStateCopy()[B

    move-result-object p2

    mul-int/lit8 v8, v7, 0x10

    .line 44
    invoke-static {p2, v6, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    return-object v5
.end method

.method public static whiteBoxDecrypt([BLcom/dspread/august/common/wbaes/AES;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    const/16 v1, 0x10

    div-int/2addr v0, v1

    .line 2
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v2, v4

    .line 3
    :goto_0
    array-length v5, p0

    div-int/2addr v5, v1

    if-ge v2, v5, :cond_1

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_0

    .line 5
    aget-object v6, v0, v2

    mul-int/lit8 v7, v2, 0x10

    add-int/2addr v7, v5

    aget-byte v7, p0, v7

    aput-byte v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    nop

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string p2, "com.dspread.mpos"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, ""

    if-nez p0, :cond_2

    .line 11
    return-object p2

    :cond_2
    move p0, v4

    .line 13
    :goto_2
    array-length v1, v0

    if-ge p0, v1, :cond_3

    .line 14
    new-instance v1, Lcom/dspread/august/common/wbaes/State;

    aget-object v2, v0, p0

    invoke-direct {v1, v2, v3, v4}, Lcom/dspread/august/common/wbaes/State;-><init>([BZZ)V

    .line 15
    invoke-virtual {v1}, Lcom/dspread/august/common/wbaes/State;->transpose()Lcom/dspread/august/common/wbaes/State;

    .line 16
    invoke-virtual {p1, v1}, Lcom/dspread/august/common/wbaes/AES;->crypt(Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    .line 17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/dspread/august/common/wbaes/State;->getStateCopy()[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/august/common/wbaes/WhiteBoxAESUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Lcom/dspread/august/common/wbaes/State;->getStateCopy()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/august/common/wbaes/WhiteBoxAESUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method public static whiteBoxEncrypt([BLcom/dspread/august/common/wbaes/AES;Landroid/content/Context;)[B
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/august/common/wbaes/State;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/dspread/august/common/wbaes/State;-><init>([BZZ)V

    .line 2
    invoke-virtual {v0}, Lcom/dspread/august/common/wbaes/State;->transpose()Lcom/dspread/august/common/wbaes/State;

    .line 3
    invoke-virtual {p1, v0}, Lcom/dspread/august/common/wbaes/AES;->crypt(Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    .line 4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encrypt result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/dspread/august/common/wbaes/State;->getState()[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/august/common/wbaes/WhiteBoxAESUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string p1, "com.dspread.mpos"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    new-array p0, v2, [B

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/august/common/wbaes/State;->getState()[B

    move-result-object p0

    return-object p0
.end method
