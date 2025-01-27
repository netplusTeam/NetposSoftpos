.class public abstract Lcom/mastercard/terminalsdk/utility/ByteUtility;
.super Ljava/lang/Object;


# static fields
.field private static a:C

.field private static b:[C

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    const/4 v0, 0x1

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->b:[C

    const/4 v0, 0x6

    sput-char v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->a:C

    return-void

    nop

    :array_0
    .array-data 2
        0x4cs
        0x65s
        0x66s
        0x74s
        0x20s
        0x53s
        0x68s
        0x69s
        0x6es
        0x67s
        0x6fs
        0x62s
        0x79s
        0x61s
        0x72s
        0x64s
        0x73s
        0x6ds
        0x70s
        0x6cs
        0x30s
        0x63s
        0x76s
        0x42s
        0x31s
        0x54s
        0x32s
        0x3as
        0x49s
        0x75s
        0x2ds
        0x34s
        0x4ds
        0x4es
        0x4fs
        0x50s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)[B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->c(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method public static a(JI)[B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->a(J)[B

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    new-array p1, p2, [B

    array-length v1, p0

    sub-int/2addr p2, v1

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static final addDESPadding([BIII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v0, 0x2193

    const v2, 0xe0f7

    const/16 v3, 0x26

    :try_start_0
    invoke-static {v3, v0, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v2, "a"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x3

    :try_start_1
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x0

    aput-object p0, v2, v5

    const/16 v7, 0x2205

    invoke-static {v3, v7, v5}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v9, "e"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v10, [B

    aput-object v10, v0, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v0, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v0, v1

    invoke-virtual {v8, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    if-lez p3, :cond_1

    rem-int v0, p2, p3

    int-to-byte v0, v0

    add-int v2, p2, p3

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    invoke-static {p0, p1, v2, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v7, v5}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    const-string p1, "b"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sub-int/2addr p3, v0

    invoke-static {p0, v5, v2, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/2addr p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v2

    :goto_1
    const/16 p0, 0x28

    :try_start_2
    div-int/2addr p0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE22:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE21:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    throw p1

    :cond_3
    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    throw p1

    :cond_4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static final asciiStringToByteArray(Ljava/lang/String;)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p0, :cond_0

    const/16 v1, 0x59

    goto :goto_0

    :cond_0
    const/16 v1, 0x46

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    const/16 v3, 0x5b

    goto :goto_2

    :cond_1
    const/16 v3, 0xe

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_0
    sget v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v3, v3, 0x71

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    aget-char v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0xd

    goto :goto_1

    :cond_2
    aget-char v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    :pswitch_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch
.end method

.method public static final asciiStringToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    const/16 v1, 0x33

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    sget v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v3, v3, 0x47

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    goto :goto_3

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    const/16 v3, 0x40

    goto :goto_4

    :cond_2
    const/16 v3, 0x27

    :goto_4
    packed-switch v3, :pswitch_data_2

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1c

    goto :goto_1

    :pswitch_1
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch
.end method

.method public static final bitWiseAnd([BI[BII)[B
    .locals 7

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    if-eqz p2, :cond_4

    array-length v3, p0

    add-int v4, p1, p4

    if-ne v3, v4, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_5

    :pswitch_0
    array-length v3, p2

    add-int v4, p3, p4

    if-ne v3, v4, :cond_4

    new-array v3, p4, [B

    move v4, v0

    :goto_2
    if-ge v4, p4, :cond_2

    move v5, v2

    goto :goto_3

    :cond_2
    move v5, v0

    :goto_3
    packed-switch v5, :pswitch_data_2

    sget v5, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v5, v5, 0x75

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v5, v5, 0x2

    goto :goto_4

    :pswitch_1
    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return-object v3

    :cond_3
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    add-int v5, p1, v4

    aget-byte v5, p0, v5

    add-int v6, p3, v4

    aget-byte v6, p2, v6

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_5
    :pswitch_2
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F46:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static final bitWiseOr([BI[BII)[B
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    if-eqz p2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    const/16 v1, 0x45

    :goto_1
    packed-switch v1, :pswitch_data_1

    sget v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v1, v1, 0x2

    array-length v1, p0

    add-int v3, p1, p4

    if-ne v1, v3, :cond_4

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v2, v2, 0x2

    array-length v1, p2

    if-nez v2, :cond_2

    sub-int v2, p3, p4

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_2
    add-int v2, p3, p4

    if-ne v1, v2, :cond_4

    :goto_2
    new-array v1, p4, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, p4, :cond_3

    move v4, v0

    goto :goto_4

    :cond_3
    move v4, v2

    :goto_4
    packed-switch v4, :pswitch_data_2

    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p3, v3

    aget-byte v5, p2, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_1
    return-object v1

    :cond_4
    :goto_5
    :pswitch_2
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F46:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static final byteArrayToAsciiString([B)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v3, v3, 0x2

    array-length v3, p0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget v5, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v5, v5, 0x5f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v4

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

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

.method public static final byteArrayToBigInteger([B)Ljava/math/BigInteger;
    .locals 5

    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4b

    const/4 v3, 0x2

    const-string/jumbo v4, "{{"

    invoke-static {v2, v3, v4}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e(BILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr p0, v3

    return-object v0
.end method

.method public static final byteArrayToHexString([B)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p0, :cond_1

    goto :goto_2

    :goto_1
    const/16 v0, 0x37

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :goto_2
    const-string p0, ""

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2d

    goto :goto_4

    :cond_2
    const/16 v2, 0x57

    :goto_4
    packed-switch v2, :pswitch_data_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :pswitch_1
    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x45ba

    const/16 v3, 0x49

    if-ge v2, v3, :cond_5

    goto :goto_6

    :cond_3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    const/16 v3, 0x24

    goto :goto_5

    :cond_4
    const/16 v3, 0x2b

    :goto_5
    packed-switch v3, :pswitch_data_2

    goto :goto_7

    :goto_6
    :pswitch_2
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :goto_8
    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_2
    .end packed-switch
.end method

.method public static final varargs byteArrayToInt([B)I
    .locals 4

    if-eqz p0, :cond_0

    const/16 v0, 0x56

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p0

    if-lez v0, :cond_2

    array-length v0, p0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    new-array v0, v2, [B

    array-length v3, p0

    sub-int/2addr v2, v3

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :cond_2
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F46:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :goto_1
    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    const/16 p0, 0x37

    goto :goto_2

    :cond_3
    const/16 p0, 0x30

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v1

    :goto_3
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
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch
.end method

.method public static final byteArrayToLong([B)J
    .locals 5

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x33

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    if-eqz p0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :pswitch_0
    array-length v0, p0

    if-nez v0, :cond_3

    const/16 v0, 0x1c

    goto :goto_2

    :cond_3
    const/16 v0, 0x45

    :goto_2
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_1
    array-length v0, p0

    if-lez v0, :cond_5

    array-length v0, p0

    const/4 v4, 0x4

    if-gt v0, v4, :cond_4

    move v2, v3

    :cond_4
    packed-switch v2, :pswitch_data_3

    goto :goto_3

    :pswitch_2
    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x8

    new-array v1, v0, [B

    array-length v2, p0

    sub-int/2addr v0, v2

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-wide v0

    :cond_5
    :goto_3
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F46:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :goto_4
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static final byteArrayToShort([B)S
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p0, :cond_3

    array-length v2, p0

    if-nez v2, :cond_0

    const/16 v2, 0x16

    goto :goto_0

    :cond_0
    const/16 v2, 0x51

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    array-length v2, p0

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr v2, v1

    array-length v2, p0

    if-gt v2, v1, :cond_2

    move v3, v0

    :cond_2
    packed-switch v3, :pswitch_data_2

    add-int/lit8 v4, v4, 0x39

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/2addr v4, v1

    new-array v2, v1, [B

    array-length v3, p0

    sub-int/2addr v1, v3

    array-length v3, p0

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0

    :goto_2
    :pswitch_2
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F46:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_3
    :goto_3
    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr p0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static final byteToHexString(B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0x10

    if-ge p0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/2addr v2, v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/16 v1, 0x56

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch
.end method

.method public static c(J)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2f

    const/4 v1, 0x1

    const-string v2, "_"

    invoke-static {v0, v1, v2}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e(BILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static final compareValues([BI[BII)B
    .locals 7

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    move v0, p1

    :goto_0
    add-int v2, p1, p4

    if-ge v0, v2, :cond_0

    const/16 v3, 0x5d

    goto :goto_1

    :cond_0
    const/16 v3, 0x1a

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/2addr v2, v1

    goto :goto_2

    :pswitch_0
    if-eq v0, v2, :cond_1

    move v5, v4

    :cond_1
    packed-switch v5, :pswitch_data_1

    return v4

    :pswitch_1
    return v1

    :goto_2
    aget-byte v2, p2, p3

    and-int/lit16 v2, v2, 0xff

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v2, v6

    if-lez v2, :cond_2

    move v6, v4

    goto :goto_3

    :cond_2
    move v6, v5

    :goto_3
    packed-switch v6, :pswitch_data_2

    const/4 p0, -0x1

    goto :goto_5

    :pswitch_2
    if-gez v2, :cond_3

    move v4, v5

    :cond_3
    packed-switch v4, :pswitch_data_3

    goto :goto_4

    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr v3, v1

    goto :goto_0

    :goto_4
    add-int/lit8 v3, v3, 0x1b

    rem-int/lit16 p0, v3, 0x80

    sput p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr v3, v1

    return v5

    :goto_5
    return p0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static final doXOR([BII[BI)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    move v0, p2

    const-class v1, [B

    const-string v2, "e"

    const/4 v3, 0x3

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/16 v8, 0x2205

    const/16 v9, 0x26

    invoke-static {v9, v8, v5}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    new-array v11, v3, [Ljava/lang/Class;

    aput-object v1, v11, v5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v7

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v6

    invoke-virtual {v10, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v7

    aput-object p3, v4, v5

    invoke-static {v9, v8, v5}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v1, v3, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v3, v7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v3, v6

    invoke-virtual {v8, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    new-array v1, v0, [B

    :goto_0
    if-ge v5, v0, :cond_0

    const/16 v2, 0x57

    goto :goto_1

    :cond_0
    const/16 v2, 0x46

    :goto_1
    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr v2, v6

    goto :goto_2

    :pswitch_0
    return-object v1

    :goto_2
    add-int v2, p1, v5

    aget-byte v2, p0, v2

    add-int v4, p4, v5

    aget-byte v4, p3, v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/2addr v3, v6

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE21:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {v0, v1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    :cond_3
    new-instance v0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE21:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {v0, v1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    throw v1

    :cond_4
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method

.method private static e(BILjava/lang/String;)Ljava/lang/String;
    .locals 13

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz p2, :cond_1

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    goto :goto_2

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    :goto_2
    check-cast p2, [C

    sget-object v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->b:[C

    sget-char v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->a:C

    new-array v2, p1, [C

    rem-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    sget v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    add-int/lit8 p1, p1, 0x23

    aget-char v3, p2, p1

    div-int/2addr v3, p0

    int-to-char v3, v3

    aput-char v3, v2, p1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget-char v3, p2, p1

    sub-int/2addr v3, p0

    int-to-char v3, v3

    aput-char v3, v2, p1

    :cond_3
    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le p1, v4, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_1
    sget v5, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v5, v5, 0x73

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v5, v5, 0x2

    move v5, v3

    :goto_5
    if-ge v5, p1, :cond_9

    aget-char v6, p2, v5

    add-int/lit8 v7, v5, 0x1

    aget-char v8, p2, v7

    if-ne v6, v8, :cond_5

    move v9, v3

    goto :goto_6

    :cond_5
    move v9, v4

    :goto_6
    packed-switch v9, :pswitch_data_2

    sget v9, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v9, v9, 0x49

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    goto :goto_7

    :pswitch_2
    invoke-static {v6, v1}, Lcom/mastercard/terminalsdk/internal/l;->d(II)I

    move-result v9

    invoke-static {v6, v1}, Lcom/mastercard/terminalsdk/internal/l;->a(II)I

    move-result v6

    invoke-static {v8, v1}, Lcom/mastercard/terminalsdk/internal/l;->d(II)I

    move-result v10

    invoke-static {v8, v1}, Lcom/mastercard/terminalsdk/internal/l;->a(II)I

    move-result v8

    if-ne v6, v8, :cond_6

    invoke-static {v9, v1}, Lcom/mastercard/terminalsdk/internal/l;->c(II)I

    move-result v9

    invoke-static {v10, v1}, Lcom/mastercard/terminalsdk/internal/l;->c(II)I

    move-result v10

    invoke-static {v9, v6, v1}, Lcom/mastercard/terminalsdk/internal/l;->e(III)I

    move-result v6

    invoke-static {v10, v8, v1}, Lcom/mastercard/terminalsdk/internal/l;->e(III)I

    move-result v8

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    aget-char v6, v0, v8

    aput-char v6, v2, v7

    goto :goto_8

    :cond_6
    if-ne v9, v10, :cond_7

    sget v11, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v11, v11, 0x9

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v11, v11, 0x2

    invoke-static {v6, v1}, Lcom/mastercard/terminalsdk/internal/l;->c(II)I

    move-result v6

    invoke-static {v8, v1}, Lcom/mastercard/terminalsdk/internal/l;->c(II)I

    move-result v8

    invoke-static {v9, v6, v1}, Lcom/mastercard/terminalsdk/internal/l;->e(III)I

    move-result v6

    invoke-static {v10, v8, v1}, Lcom/mastercard/terminalsdk/internal/l;->e(III)I

    move-result v8

    aget-char v6, v0, v6

    aput-char v6, v2, v5

    aget-char v6, v0, v8

    aput-char v6, v2, v7

    goto :goto_8

    :cond_7
    invoke-static {v9, v8, v1}, Lcom/mastercard/terminalsdk/internal/l;->e(III)I

    move-result v8

    invoke-static {v10, v6, v1}, Lcom/mastercard/terminalsdk/internal/l;->e(III)I

    move-result v6

    aget-char v8, v0, v8

    aput-char v8, v2, v5

    aget-char v6, v0, v6

    aput-char v6, v2, v7

    goto :goto_8

    :goto_7
    shr-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v2, v5

    div-int/lit8 v6, v5, 0x1

    sub-int/2addr v8, p0

    int-to-char v7, v8

    aput-char v7, v2, v6

    goto :goto_8

    :cond_8
    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v2, v5

    sub-int/2addr v8, p0

    int-to-char v6, v8

    aput-char v6, v2, v7

    :goto_8
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_5

    :cond_9
    :goto_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static e(J)[B
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x2

    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->a(J)[B

    move-result-object p0

    const/4 p1, 0x4

    new-array v0, p1, [B

    array-length v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v5, v2, 0x71

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr v5, v1

    array-length v5, p0

    if-gt v5, p1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_5

    :pswitch_0
    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_2

    const/4 p1, 0x5

    array-length v2, p0

    shl-int/2addr p1, v2

    array-length v2, p0

    invoke-static {p0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    array-length v2, p0

    sub-int/2addr p1, v2

    array-length v2, p0

    invoke-static {p0, v4, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_3

    const/16 p0, 0x9

    goto :goto_3

    :cond_3
    const/16 p0, 0x56

    :goto_3
    packed-switch p0, :pswitch_data_2

    goto :goto_4

    :pswitch_1
    return-object v0

    :goto_4
    const/16 p0, 0x29

    :try_start_0
    div-int/2addr p0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :goto_5
    :pswitch_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p1, 0x33

    const/16 v0, 0x44

    const-string v1, "\u0016\t\n\u0014\u0002\r\u0005\u0015\u000e\u0011\u0000\u0019\u0013\u001a\u000b\u0016\u000e\u0011\u0002\u0019\u0003\u001c\n\"\u0006\u0014\u001b\u0005\u0001\u0016\u000b\t\n\u0003\n\r\u0002\n\t\u0004\u0001\n\n\u0002\u0000\t\u0002\u0005\u000f\u000e\t\n\u0002\u0005\u0008\u0004\u0000\u001c\u0000\"\u0001\"\u0005\n\u000f\u0000\u0004\r"

    invoke-static {p1, v0, v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e(BILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch
.end method

.method public static final generateRandomBytes(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "a"

    const v3, 0xe0f7

    const/16 v4, 0x2193

    const/16 v5, 0x26

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    :try_start_0
    invoke-static {v5, v4, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez p0, :cond_3

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-array v2, p0, [B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    rem-int/lit8 v0, p0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-eqz p0, :cond_2

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x56

    goto :goto_1

    :cond_1
    const/16 p0, 0x40

    :goto_1
    packed-switch p0, :pswitch_data_1

    return-object v2

    :pswitch_1
    :try_start_1
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE11:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE22:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    throw v0

    :cond_4
    throw p0

    :goto_2
    :try_start_2
    invoke-static {v5, v4, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    throw p0

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    throw v0

    :cond_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch
.end method

.method public static final getSubByteArray([BI)[B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
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
.end method

.method public static final getSubByteArray([BII)[B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    array-length v1, p0

    sub-int/2addr v1, p1

    if-lt v1, p2, :cond_1

    new-array v1, p2, [B

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    return-object v1

    :cond_1
    :pswitch_0
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F46:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F46:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static final hexStringToAsciiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    sget v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    sget v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v3, v3, 0x19

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    packed-switch v4, :pswitch_data_1

    mul-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1c

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4b

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    :cond_2
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static final hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :cond_1
    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :pswitch_0
    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_3

    sget v5, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v5, v5, 0x77

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    packed-switch v5, :pswitch_data_1

    mul-int/lit8 v5, v4, 0x3

    shr-int/lit8 v6, v4, 0x3

    ushr-int/lit8 v6, v6, 0x3

    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :pswitch_1
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    const/16 v6, 0x5a

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    xor-int/lit16 v5, v5, 0x2432

    int-to-byte v5, v5

    aput-byte v5, v3, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x2c

    goto :goto_1

    :cond_3
    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    return-object v3

    :catch_0
    move-exception p0

    new-array p0, v2, [B

    return-object p0

    :cond_4
    :goto_4
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F63:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static final intToBerEncodedFixedLength(II)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToByteArray(I)[B

    move-result-object p0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    const/16 v0, 0x59

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    packed-switch v0, :pswitch_data_0

    array-length p1, p0

    add-int/lit8 p1, p1, 0x1

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    :pswitch_0
    new-array v0, p1, [B

    add-int/lit8 v1, p1, -0x1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    array-length v1, p0

    sub-int/2addr p1, v1

    array-length v1, p0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method public static final intToBerEncodedLength(I)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;
    .locals 5

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x80

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToByteArray(I)[B

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    array-length v0, p0

    if-gt v0, v2, :cond_1

    goto :goto_1

    :pswitch_0
    array-length v0, p0

    if-gt v0, v2, :cond_3

    goto :goto_3

    :goto_1
    const/16 v0, 0x36

    goto :goto_2

    :cond_1
    const/16 v0, 0x28

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/2addr v0, v2

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xc5

    const/16 v4, 0x4fa9

    if-ne v0, v4, :cond_4

    goto :goto_4

    :cond_2
    aget-byte v0, p0, v1

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    :cond_3
    :goto_4
    :pswitch_1
    array-length v0, p0

    add-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v4, p0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    return-object p0

    :cond_4
    new-instance v0, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {v0, p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch
.end method

.method public static final intToByteArray(I)[B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->numberToHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static final isBitSet(BI)Z
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x52

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sget v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-le p1, v1, :cond_3

    goto :goto_5

    :cond_1
    const/16 v1, 0x8

    if-le p1, v1, :cond_2

    const/16 v1, 0x24

    goto :goto_1

    :cond_2
    const/16 v1, 0x3b

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :cond_3
    :pswitch_1
    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    packed-switch p0, :pswitch_data_2

    :goto_3
    move v0, v2

    goto :goto_4

    :pswitch_2
    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 p0, v3, 0x80

    sput p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    return v0

    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static final isHexString(Ljava/lang/String;)Z
    .locals 8

    if-eqz p0, :cond_a

    const/16 v0, 0xa5

    int-to-byte v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v1, p0, 0x71

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, -0x5b

    if-ne v0, v1, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, p0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_2
    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return v0

    :goto_4
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_9

    not-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    move v4, v3

    :goto_5
    if-ge v4, v1, :cond_4

    move v5, v3

    goto :goto_6

    :cond_4
    move v5, v2

    :goto_6
    packed-switch v5, :pswitch_data_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_7

    goto :goto_8

    :pswitch_2
    const/16 p0, 0x5a

    if-ne v0, p0, :cond_5

    goto :goto_7

    :cond_5
    move v2, v3

    :goto_7
    return v2

    :goto_8
    const/16 v6, 0x39

    if-le v5, v6, :cond_6

    move v6, v3

    goto :goto_9

    :cond_6
    move v6, v2

    :goto_9
    packed-switch v6, :pswitch_data_3

    goto :goto_a

    :cond_7
    :pswitch_3
    const/16 v6, 0x61

    if-lt v5, v6, :cond_8

    sget v6, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v6, v6, 0x15

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v6, v6, 0x2

    const/16 v6, 0x66

    if-gt v5, v6, :cond_8

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F63:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F62:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_a
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F42:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, v0}, Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static final leftShift(BB)B
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v1, v0, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2f

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    packed-switch v1, :pswitch_data_0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, p1

    :goto_1
    int-to-byte p0, p0

    goto :goto_2

    :pswitch_0
    or-int/lit16 p0, p0, 0x2e63

    sub-int/2addr p0, p1

    goto :goto_1

    :goto_2
    add-int/2addr v0, v2

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public static final leftShift([BB)[B
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const/16 p1, 0x13

    const/16 v0, 0x33

    const-string v1, "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\u0008\u0003\u0004\u0008\t\n\u0003\u0008\u0004\u0005\n\u000f\u0000\u0002\u0005\u000e\u000f\u000f\u000e\u0010\u0000\u0007\u0002\u0003\r\u0016\n\u0004\t\u0005\n\u0002\u0005\u000b\r\u0013\u0014\u0005\r\u0002\u0007\u0004\u0002w"

    invoke-static {p1, v0, v1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e(BILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final longToBcd(J)[B
    .locals 11

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    move-wide v1, p0

    move v3, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    const-wide/16 v5, 0xa

    if-eqz v4, :cond_1

    sget v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v4, v4, 0x2f

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/16 v4, 0x36

    goto :goto_1

    :cond_0
    const/16 v4, 0x2a

    :goto_1
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v3, v3, 0x1

    div-long/2addr v1, v5

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v3, 0x4

    sub-long/2addr v1, v5

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v3, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    packed-switch v1, :pswitch_data_1

    div-int/lit8 v1, v3, 0x2

    goto :goto_3

    :pswitch_1
    add-int/lit8 v1, v3, 0x1

    div-int/lit8 v1, v1, 0x2

    :goto_3
    new-array v4, v1, [B

    sget v7, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v7, v7, 0x41

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v7, v7, 0x2

    move v7, v0

    :goto_4
    if-ge v7, v3, :cond_4

    rem-long v8, p0, v5

    long-to-int v8, v8

    int-to-byte v8, v8

    rem-int/lit8 v9, v7, 0x2

    if-nez v9, :cond_3

    div-int/lit8 v9, v7, 0x2

    aput-byte v8, v4, v9

    sget v8, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v8, v8, 0x4d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v8, v8, 0x2

    goto :goto_5

    :cond_3
    div-int/lit8 v9, v7, 0x2

    aget-byte v10, v4, v9

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v9

    :goto_5
    div-long/2addr p0, v5

    add-int/lit8 v7, v7, 0x1

    sget v8, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v8, v8, 0xb

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v8, v8, 0x2

    goto :goto_4

    :cond_4
    move p0, v0

    :goto_6
    div-int/lit8 p1, v1, 0x2

    if-ge p0, p1, :cond_5

    move p1, v0

    goto :goto_7

    :cond_5
    move p1, v2

    :goto_7
    packed-switch p1, :pswitch_data_2

    return-object v4

    :pswitch_2
    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    aget-byte p1, v4, p0

    mul-int v3, v1, p0

    ushr-int/2addr v3, v2

    aget-byte v3, v4, v3

    aput-byte v3, v4, p0

    rem-int v3, v1, p0

    div-int/2addr v3, v0

    aput-byte p1, v4, v3

    add-int/lit8 p0, p0, 0x72

    goto :goto_6

    :cond_6
    aget-byte p1, v4, p0

    sub-int v3, v1, p0

    sub-int/2addr v3, v2

    aget-byte v5, v4, v3

    aput-byte v5, v4, p0

    aput-byte p1, v4, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static final longToBcd(JI)[B
    .locals 11

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    move-wide v1, p0

    move v3, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    const-wide/16 v5, 0xa

    if-eqz v4, :cond_1

    sget v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v4, v4, 0x7d

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/16 v4, 0x52

    goto :goto_1

    :cond_0
    const/16 v4, 0x33

    :goto_1
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v3, v3, 0x1

    div-long/2addr v1, v5

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v3, 0x72

    mul-long/2addr v1, v5

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v3, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    packed-switch v1, :pswitch_data_1

    div-int/lit8 v1, v3, 0x2

    goto :goto_3

    :pswitch_1
    add-int/lit8 v1, v3, 0x1

    div-int/lit8 v1, v1, 0x2

    :goto_3
    new-array v4, v1, [B

    move v7, v0

    :goto_4
    if-ge v7, v3, :cond_3

    const/16 v8, 0x10

    goto :goto_5

    :cond_3
    const/16 v8, 0x4e

    :goto_5
    packed-switch v8, :pswitch_data_2

    move p0, v0

    goto :goto_a

    :pswitch_2
    sget v8, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v8, v8, 0x31

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    move v8, v0

    goto :goto_6

    :cond_4
    move v8, v2

    :goto_6
    packed-switch v8, :pswitch_data_3

    div-long v8, p0, v5

    long-to-int v8, v8

    int-to-byte v8, v8

    add-int/lit8 v9, v7, 0x4

    if-nez v9, :cond_6

    goto :goto_8

    :pswitch_3
    rem-long v8, p0, v5

    long-to-int v8, v8

    int-to-byte v8, v8

    rem-int/lit8 v9, v7, 0x2

    if-nez v9, :cond_5

    move v9, v0

    goto :goto_7

    :cond_5
    move v9, v2

    :goto_7
    packed-switch v9, :pswitch_data_4

    :goto_8
    div-int/lit8 v9, v7, 0x2

    aput-byte v8, v4, v9

    goto :goto_9

    :cond_6
    :pswitch_4
    div-int/lit8 v9, v7, 0x2

    aget-byte v10, v4, v9

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v9

    :goto_9
    div-long/2addr p0, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :goto_a
    div-int/lit8 p1, v1, 0x2

    if-ge p0, p1, :cond_7

    aget-byte p1, v4, p0

    sub-int v3, v1, p0

    sub-int/2addr v3, v2

    aget-byte v5, v4, v3

    aput-byte v5, v4, p0

    aput-byte p1, v4, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_7
    if-le p2, v1, :cond_8

    new-array p0, p2, [B

    sub-int/2addr p2, v1

    invoke-static {v4, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_8
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public static final max(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x54

    goto :goto_0

    :cond_0
    const/16 p1, 0x38

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :cond_1
    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    :pswitch_0
    move p0, p1

    :goto_2
    :pswitch_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static final min(FF)F
    .locals 5

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    cmpg-float v0, p0, p1

    const/16 v4, 0x36

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    move v2, v3

    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_2

    move v2, v3

    :cond_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :goto_0
    :pswitch_0
    move p0, p1

    goto :goto_2

    :goto_1
    :pswitch_1
    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 p1, 0x28

    :try_start_1
    div-int/2addr p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    throw p0

    :cond_3
    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static final varargs numberOfNonZeroBits([B)I
    .locals 9

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    array-length v0, p0

    move v3, v1

    move v4, v3

    goto :goto_1

    :pswitch_0
    array-length v0, p0

    move v3, v1

    move v4, v2

    :goto_1
    if-ge v3, v0, :cond_3

    aget-byte v5, p0, v3

    move v6, v1

    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    shr-int v7, v5, v6

    and-int/2addr v7, v2

    int-to-byte v7, v7

    if-ne v7, v2, :cond_1

    const/16 v7, 0x5b

    goto :goto_3

    :cond_1
    const/16 v7, 0xc

    :goto_3
    packed-switch v7, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    sget v7, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v7, v7, 0x19

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v7, v7, 0x2

    add-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget p0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    return v4

    :cond_4
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch
.end method

.method public static final numberToHexFixed(II)[B
    .locals 2

    invoke-static {p0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->intToByteArray(I)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-array v1, p1, [B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    sub-int/2addr v0, p1

    array-length p1, p0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method public static final numberToHexString(I)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    const/4 v2, 0x1

    const-string v3, "_"

    invoke-static {v1, v2, v3}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e(BILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public static final padData([BILcom/mastercard/terminalsdk/emv/Tag$Format;)[B
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    array-length v0, p0

    if-le v0, p1, :cond_2

    goto :goto_2

    :pswitch_0
    array-length v0, p0

    const/16 v3, 0x1d

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, p1, :cond_1

    const/16 v0, 0x15

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    :cond_2
    :pswitch_1
    const/16 v0, 0x26

    const v1, 0xc0fe

    invoke-static {v2, v0, v1}, Lcom/mastercard/terminalsdk/internal/do;->d(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p2}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_2

    :pswitch_2
    new-instance p2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p2, p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    array-length p0, p0

    sub-int/2addr p1, p0

    new-array p0, p1, [B

    invoke-virtual {p2, p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    goto :goto_3

    :pswitch_3
    new-instance p2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {p2, p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    array-length p0, p0

    sub-int/2addr p1, p0

    new-array p0, p1, [B

    const/4 p1, -0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p2, p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    goto :goto_3

    :pswitch_4
    new-instance p2, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    array-length v0, p0

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    invoke-direct {p2, p1}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>([B)V

    invoke-virtual {p2, p0}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->append([B)V

    :goto_3
    invoke-virtual {p2}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;->getBytes()[B

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final removeDESPadding([BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "a"

    const v2, 0xe0f7

    const/16 v3, 0x2193

    const/16 v4, 0x26

    const/4 v5, 0x0

    if-nez v0, :cond_7

    :try_start_0
    invoke-static {v4, v3, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_5

    if-lez p1, :cond_5

    array-length v0, p0

    rem-int/2addr v0, p1

    if-nez v0, :cond_5

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v2, v2, 0x2

    move v2, v0

    :goto_0
    sub-int v3, v0, p1

    const/4 v4, 0x0

    if-le v2, v3, :cond_3

    aget-byte v3, p0, v2

    const/16 v5, -0x80

    if-ne v3, v5, :cond_1

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    move v1, v4

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 p1, 0x45

    :try_start_1
    div-int/2addr p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_4

    new-array p1, v2, [B

    invoke-static {p0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_4
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE21:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->XCE21:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    throw p1

    :cond_6
    throw p0

    :cond_7
    :try_start_2
    invoke-static {v4, v3, v2}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    throw p0

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    throw p1

    :cond_8
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static final rightShift(BB)B
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v0, v0, 0x2

    and-int/lit16 p0, p0, 0xff

    shr-int/2addr p0, p1

    int-to-byte p0, p0

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static final rightShift([BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    if-eqz p0, :cond_8

    if-ltz p1, :cond_7

    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    move p1, v1

    goto :goto_1

    :pswitch_0
    move p1, v2

    :goto_1
    array-length v3, p0

    new-array v3, v3, [B

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    move p1, v1

    :goto_2
    packed-switch p1, :pswitch_data_1

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_3

    :pswitch_1
    array-length p1, p0

    invoke-static {p0, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :goto_3
    array-length p1, p0

    sub-int/2addr p1, v2

    :goto_4
    if-ltz p1, :cond_3

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    if-eqz p1, :cond_2

    add-int/lit8 v5, p1, -0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    goto :goto_5

    :cond_2
    move v5, v1

    :goto_5
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_3
    :goto_6
    array-length p0, p0

    sub-int/2addr p0, v2

    :goto_7
    if-ltz p0, :cond_6

    if-eqz v0, :cond_4

    const/16 p1, 0x61

    goto :goto_8

    :cond_4
    const/16 p1, 0x14

    :goto_8
    packed-switch p1, :pswitch_data_2

    goto :goto_b

    :pswitch_2
    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    add-int/lit8 v2, p1, 0x1b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 v2, v2, 0x2

    sub-int v2, p0, v0

    if-ltz v2, :cond_5

    const/16 v4, 0x27

    goto :goto_9

    :cond_5
    const/16 v4, 0x17

    :goto_9
    packed-switch v4, :pswitch_data_3

    aget-byte v2, v3, v2

    aput-byte v2, v3, p0

    goto :goto_a

    :pswitch_3
    aput-byte v1, v3, p0

    :goto_a
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_7

    :cond_6
    :goto_b
    return-object v3

    :cond_7
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F61:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object p1, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F60:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p0, p1}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

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

    :pswitch_data_3
    .packed-switch 0x17
        :pswitch_3
    .end packed-switch
.end method

.method public static final setBit(BI)B
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v1, v0, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    add-int/2addr p1, v2

    and-int/2addr p0, p1

    :goto_1
    int-to-byte p0, p0

    goto :goto_2

    :pswitch_0
    shl-int p1, v2, p1

    or-int/2addr p0, p1

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static final stringArrayToEnums([Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    check-cast v0, [Ljava/lang/Enum;

    :goto_1
    array-length v2, p0

    const/16 v3, 0x11

    if-ge v1, v2, :cond_1

    const/16 v2, 0x39

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget v2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x6d

    goto :goto_1

    :cond_2
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
    .end packed-switch
.end method

.method public static final truncateData([BILcom/mastercard/terminalsdk/emv/Tag$Format;)[B
    .locals 6

    sget v0, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "e"

    const v3, 0xc0fe

    const/16 v4, 0x26

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v4, v3}, Lcom/mastercard/terminalsdk/internal/do;->d(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p2}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    invoke-static {v1, v4, v3}, Lcom/mastercard/terminalsdk/internal/do;->d(IIC)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-virtual {p2}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :try_start_0
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_1
    array-length p2, p0

    sub-int/2addr p2, p1

    invoke-static {p0, p2, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    sget p1, Lcom/mastercard/terminalsdk/utility/ByteUtility;->e:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/ByteUtility;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x60

    goto :goto_1

    :cond_1
    const/16 p1, 0x2d

    :goto_1
    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :goto_2
    invoke-static {p0, v1, p1}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->getSubByteArray([BII)[B

    move-result-object p0

    :goto_3
    :pswitch_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_2
    .end packed-switch
.end method
