.class public abstract Lcom/mastercard/terminalsdk/utility/PINUtility;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;
    }
.end annotation


# static fields
.field private static a:[I

.field private static c:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x51fca939
        0x7f237d0e
        -0x517afc73
        0x3e8f9007
        0x587b8d83
        0x50d3ad26
        -0x7592cdb2
        -0x162e34fd
        0x580e23d3
        0x23de876c
        0x24dc6ffa
        0x201c03bd
        -0x505a1826
        -0x15d1cdcb
        -0x290dc72a
        0x73f97a60
        0x36f27fce
        0xb2cbd04
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b(Ljava/lang/StringBuffer;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/PINUtility;->isPinValid(Ljava/lang/StringBuffer;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    new-array p0, v2, [B

    goto/16 :goto_6

    :pswitch_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    int-to-byte v3, v3

    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    const/16 v4, 0x16

    goto :goto_1

    :cond_1
    const/16 v4, 0x4e

    :goto_1
    const/16 v5, 0x10

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    sget v4, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v4, v4, 0xf

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const/16 v4, 0x5a

    goto :goto_2

    :cond_2
    const/16 v4, 0x13

    :goto_2
    packed-switch v4, :pswitch_data_2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    goto :goto_4

    :pswitch_2
    const/16 v4, 0x43

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    goto :goto_3

    :goto_4
    new-array v4, v2, [B

    or-int/2addr v3, v5

    int-to-byte v3, v3

    const/4 v6, 0x0

    aput-byte v3, v4, v6

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    array-length v3, p0

    invoke-static {p0, v6, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v3, ""

    move-object v7, v3

    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    array-length v9, p0

    add-int/2addr v9, v1

    rsub-int/lit8 v9, v9, 0x8

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    if-ne v7, v3, :cond_3

    sget v7, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    add-int/lit8 v7, v7, 0x9

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/lit8 v7, v7, 0x2

    move-object v7, v8

    goto :goto_5

    :cond_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_4
    invoke-static {v7}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, p0

    add-int/2addr v3, v1

    array-length p0, p0

    add-int/2addr p0, v1

    sub-int/2addr v2, p0

    invoke-static {v0, v6, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5a
        :pswitch_2
    .end packed-switch
.end method

.method private static final b([B[BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz p0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz p1, :cond_2

    new-array v0, p2, [B

    const/16 v2, 0x7f

    const/4 v3, 0x0

    :try_start_0
    aput-byte v2, v0, v3

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v2, v1

    array-length v4, p1

    invoke-static {p1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length p1, p1

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    sub-int/2addr p2, p0

    invoke-static {p2}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->generateRandomBytes(I)[B

    move-result-object p1

    invoke-static {p1, v3, v0, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget p0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 p1, p0, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 p1, p1, 0x2

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    move v1, v3

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/16 p0, 0x44

    :try_start_1
    div-int/2addr p0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F48:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_2
    :pswitch_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F42:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static final c(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)[B
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->toHexString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility;->d([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, p0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/16 v2, 0x51

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v2, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    const/16 v2, 0xf

    goto :goto_1

    :cond_1
    const/16 v2, 0x35

    :goto_1
    packed-switch v2, :pswitch_data_1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-static {v2, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility;->d([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-static {v2, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility;->d([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v5, 0xc

    if-le v2, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    goto :goto_3

    :cond_2
    move v2, v4

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    array-length v2, p0

    if-le v2, v0, :cond_3

    sget v2, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/2addr v2, v3

    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    array-length v2, p0

    sub-int/2addr v0, v2

    array-length v2, p0

    invoke-static {p0, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        -0x19cabf5f
        -0x4dd5b3df
    .end array-data

    :array_1
    .array-data 4
        -0x29f28690
        0x6b8ff214
    .end array-data

    :array_2
    .array-data 4
        -0x29f28690
        0x6b8ff214
    .end array-data
.end method

.method private static d([II)Ljava/lang/String;
    .locals 11

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_0

    new-array v0, v4, [C

    array-length v5, p0

    rem-int/2addr v5, v3

    new-array v5, v5, [C

    sget-object v6, Lcom/mastercard/terminalsdk/utility/PINUtility;->a:[I

    invoke-virtual {v6}, [I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move v7, v3

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [C

    array-length v5, p0

    shl-int/2addr v5, v3

    new-array v5, v5, [C

    sget-object v6, Lcom/mastercard/terminalsdk/utility/PINUtility;->a:[I

    invoke-virtual {v6}, [I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move v7, v2

    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    move v8, v3

    :goto_2
    packed-switch v8, :pswitch_data_1

    sget v8, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    add-int/lit8 v8, v8, 0x1d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/2addr v8, v1

    goto :goto_3

    :pswitch_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :goto_3
    aget v8, p0, v7

    shr-int/lit8 v9, v8, 0x10

    int-to-char v9, v9

    aput-char v9, v0, v2

    int-to-char v8, v8

    aput-char v8, v0, v3

    add-int/lit8 v8, v7, 0x1

    aget v8, p0, v8

    shr-int/lit8 v9, v8, 0x10

    int-to-char v9, v9

    aput-char v9, v0, v1

    int-to-char v8, v8

    aput-char v8, v0, v4

    invoke-static {v0, v6, v2}, Lcom/mastercard/terminalsdk/internal/j;->c([C[IZ)[I

    shl-int/lit8 v8, v7, 0x1

    aget-char v9, v0, v2

    aput-char v9, v5, v8

    add-int/lit8 v9, v8, 0x1

    aget-char v10, v0, v3

    aput-char v10, v5, v9

    add-int/lit8 v9, v8, 0x2

    aget-char v10, v0, v1

    aput-char v10, v5, v9

    add-int/2addr v8, v4

    aget-char v9, v0, v4

    aput-char v9, v5, v8

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static final encryptOnlinePIN([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    const-class v0, [B

    sget v1, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-eqz p1, :cond_0

    const/16 v1, 0x60

    goto :goto_0

    :cond_0
    const/16 v1, 0x2c

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-eqz p0, :cond_7

    array-length v1, p0

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    const/16 v1, 0x2b

    goto :goto_1

    :cond_1
    const/16 v1, 0x2f

    :goto_1
    packed-switch v1, :pswitch_data_1

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    packed-switch v5, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_3

    array-length p0, p2

    goto/16 :goto_4

    :pswitch_2
    array-length v2, p2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    new-instance v6, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {v6, p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-static {v6}, Lcom/mastercard/terminalsdk/utility/PINUtility;->c(Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)[B

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {v2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object p2

    array-length v2, p0

    invoke-static {p0, v4, v2, p2, v4}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->doXOR([BII[BI)[B

    move-result-object p0

    const/16 p2, 0x2205

    const/16 v2, 0x26

    :try_start_0
    invoke-static {v2, p2, v4}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const-string v6, "d"

    invoke-virtual {p2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    array-length v6, p0

    const/4 v7, 0x4

    :try_start_1
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v8, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    aput-object p0, v8, v1

    aput-object p1, v8, v4

    const/16 p0, 0x22ef

    invoke-static {v2, p0, v4}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    const-string p1, "b"

    new-array v2, v7, [Ljava/lang/Class;

    aput-object v0, v2, v4

    aput-object v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v9

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget p1, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/2addr p1, v3

    if-eqz p1, :cond_4

    return-object p0

    :cond_4
    :try_start_2
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    throw p1

    :cond_5
    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    throw p1

    :cond_6
    throw p0

    :goto_4
    :try_start_3
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    throw p0

    :cond_7
    :goto_5
    :pswitch_3
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F42:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static final encryptPIN(Ljava/lang/StringBuffer;Ljava/security/PublicKey;Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;[BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    if-eqz p3, :cond_1

    const/16 v2, 0x3e

    goto :goto_1

    :cond_1
    const/16 v2, 0x2d

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    sget v2, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v2, v2, 0x37

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-eqz p1, :cond_4

    invoke-static {p0, p2}, Lcom/mastercard/terminalsdk/utility/PINUtility;->makePINBlock(Ljava/lang/StringBuffer;Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;)[B

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/mastercard/terminalsdk/utility/PINUtility;->b([B[BI)[B

    move-result-object p0

    const/16 p2, 0x2205

    const/16 p3, 0x26

    :try_start_0
    invoke-static {p3, p2, v1}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const-string v2, "c"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x4

    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, v3

    aput-object p0, v4, v0

    aput-object p1, v4, v1

    const/16 p0, 0x22c9

    const p1, 0xc41b

    invoke-static {p3, p0, p1}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    const-string p1, "e"

    new-array p3, v2, [Ljava/lang/Class;

    const-class p4, Ljava/security/Key;

    aput-object p4, p3, v1

    const-class p4, [B

    aput-object p4, p3, v0

    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p4, p3, v3

    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p4, p3, v5

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget p1, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/2addr p1, v3

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    throw p1

    :cond_3
    throw p0

    :cond_4
    :goto_2
    :pswitch_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F42:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public static final formatPINtoFormat0or2(Ljava/lang/StringBuffer;Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/PINUtility;->isPinValid(Ljava/lang/StringBuffer;)Z

    goto/16 :goto_5

    :pswitch_0
    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/PINUtility;->isPinValid(Ljava/lang/StringBuffer;)Z

    move-result v0

    const/16 v4, 0x8

    if-nez v0, :cond_1

    new-array p0, v4, [B

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    int-to-byte v0, v0

    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2

    sget v5, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v5, v5, 0x75

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/2addr v5, v1

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    invoke-static {v5, v2}, Lcom/mastercard/terminalsdk/utility/PINUtility;->d([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    new-array v5, v4, [B

    sget-object v6, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->ISO_Format0:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    if-ne p1, v6, :cond_4

    sget p1, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v6, p1, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_1

    or-int/lit8 p1, v0, 0x0

    int-to-byte p1, p1

    aput-byte p1, v5, v3

    goto :goto_3

    :pswitch_1
    and-int/lit8 p1, v0, 0x0

    int-to-byte p1, p1

    aput-byte p1, v5, v2

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->ISO_Format2:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    if-ne p1, v6, :cond_5

    const/16 p1, 0x61

    goto :goto_2

    :cond_5
    const/16 p1, 0x43

    :goto_2
    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    or-int/lit8 p1, v0, 0x20

    int-to-byte p1, p1

    aput-byte p1, v5, v3

    :goto_3
    array-length p1, p0

    invoke-static {p0, v3, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    add-int/2addr p0, v2

    :goto_4
    if-ge p0, v4, :cond_6

    const/4 p1, -0x1

    aput-byte p1, v5, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_6
    sget p0, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/2addr p0, v1

    return-object v5

    :goto_5
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        -0x19cabf5f
        -0x4dd5b3df
    .end array-data
.end method

.method public static final formatPINtoFormat3(Ljava/lang/StringBuffer;Ljava/util/Random;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/PINUtility;->isPinValid(Ljava/lang/StringBuffer;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    sget p0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    new-array p0, v1, [B

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    int-to-byte v0, v0

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/16 v2, 0x34

    goto :goto_0

    :cond_1
    const/16 v2, 0x47

    :goto_0
    const/4 v3, 0x6

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5f

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    new-array v4, v1, [B

    or-int/lit8 p0, v0, 0x30

    int-to-byte p0, p0

    const/4 v0, 0x0

    aput-byte p0, v4, v0

    array-length p0, v2

    const/4 v5, 0x1

    invoke-static {v2, v0, v4, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v6, ""

    move-object p0, v6

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    array-length v8, v2

    add-int/2addr v8, v5

    rsub-int/lit8 v8, v8, 0x8

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_3

    const/16 v7, 0x1f

    goto :goto_3

    :cond_3
    const/16 v7, 0x4e

    :goto_3
    packed-switch v7, :pswitch_data_1

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0xa

    if-ne p0, v6, :cond_4

    goto :goto_4

    :pswitch_1
    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    array-length p1, v2

    add-int/2addr p1, v5

    array-length v2, v2

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v7, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v7, v7, 0x69

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/PINUtility;->isPinValid(Ljava/lang/StringBuffer;)Z

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e
        :pswitch_1
    .end packed-switch
.end method

.method public static final getICCPINPublicKey([B[B[B)Ljava/security/PublicKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    const-class v0, [B

    sget v1, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x51

    :goto_0
    const-string v3, "b"

    const v4, 0x80ff

    const/16 v5, 0x216d

    const/16 v6, 0x26

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    new-array v1, v10, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p1, v1, v9

    aput-object p0, v1, v8

    invoke-static {v6, v5, v4}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    new-array p1, v10, [Ljava/lang/Class;

    aput-object v0, p1, v8

    aput-object v0, p1, v9

    aput-object v0, p1, v2

    invoke-virtual {p0, v3, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/PublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :cond_1
    throw p0

    :goto_1
    :try_start_2
    new-array v1, v10, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p1, v1, v9

    aput-object p0, v1, v8

    invoke-static {v6, v5, v4}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    new-array p1, v10, [Ljava/lang/Class;

    aput-object v0, p1, v8

    aput-object v0, p1, v9

    aput-object v0, p1, v2

    invoke-virtual {p0, v3, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/PublicKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public static final isPinValid(Ljava/lang/StringBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/mastercard/terminalsdk/utility/PINUtility;->d([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    sget p0, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/lit8 p0, p0, 0x2

    return v3

    :cond_2
    :goto_2
    :pswitch_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F48:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F42:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        -0x51a54e77
        -0x6e01760e
        0x4a2197ac    # 2647531.0f
        0x3c7fe8fb
    .end array-data
.end method

.method public static final makePINBlock(Ljava/lang/StringBuffer;Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x26

    invoke-static {v1, v1, v0}, Lcom/mastercard/terminalsdk/internal/do;->d(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x8

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->generateRandomBytes(I)[B

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/PINUtility;->formatPINtoFormat3(Ljava/lang/StringBuffer;Ljava/util/Random;)[B

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/PINUtility;->e:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/PINUtility;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x27

    goto :goto_0

    :cond_0
    const/16 p1, 0x45

    :goto_0
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/PINUtility;->b(Ljava/lang/StringBuffer;)[B

    move-result-object p0

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/PINUtility;->formatPINtoFormat0or2(Ljava/lang/StringBuffer;Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;)[B

    move-result-object p0

    :goto_1
    :pswitch_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_3
    .end packed-switch
.end method
