.class public abstract enum Lcom/mastercard/terminalsdk/emv/Tag$Rule;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/emv/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/emv/Tag$Rule;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MOD4:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

.field public static final enum NONE:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

.field public static final enum VAR_MIN:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

.field private static final synthetic b:[Lcom/mastercard/terminalsdk/emv/Tag$Rule;

.field private static c:I

.field private static d:I

.field private static e:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    const/4 v1, 0x1

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    invoke-static {}, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c()V

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const-string v4, "\u0001\u0001\u0001\u0001"

    invoke-static {v4, v3, v1}, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v3, v5, v0

    const/16 v3, 0x63ba

    const/16 v6, 0x25

    invoke-static {v6, v6, v3}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mastercard/terminalsdk/emv/Tag$Rule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sput-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->NONE:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    const-string v7, "\u0000\u0000\u0001\u0000"

    invoke-static {v7, v5, v1}, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :try_start_1
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v5, v7, v0

    const/16 v5, 0x4a

    invoke-static {v6, v5, v0}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mastercard/terminalsdk/emv/Tag$Rule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sput-object v5, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->MOD4:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    const-string v7, "\u0000\u0001\u0001\u0000\u0000\u0001\u0000"

    invoke-static {v7, v2, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c(Ljava/lang/String;[IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :try_start_2
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v2, v7, v0

    const/16 v2, 0x6f

    const/16 v8, 0x610

    invoke-static {v6, v2, v8}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mastercard/terminalsdk/emv/Tag$Rule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-object v2, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->VAR_MIN:Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    aput-object v3, v6, v0

    aput-object v5, v6, v1

    aput-object v2, v6, v4

    sput-object v6, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->b:[Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    rem-int/2addr v0, v4

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    throw v1

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    :array_0
    .array-data 4
        0x0
        0x4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x7
        0x5b
        0x6
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mastercard/terminalsdk/emv/Tag$Rule;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static c(Ljava/lang/String;[IZ)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    const/16 v0, 0x4e

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    :pswitch_0
    check-cast p0, [B

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v6, p1, v6

    sget-object v7, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->e:[C

    new-array v8, v3, [C

    invoke-static {v7, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p0, :cond_5

    new-array v1, v3, [C

    move v7, v0

    move v9, v7

    :goto_1
    if-ge v7, v3, :cond_1

    move v10, v2

    goto :goto_2

    :cond_1
    move v10, v0

    :goto_2
    packed-switch v10, :pswitch_data_1

    sget v10, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    add-int/lit8 v10, v10, 0x37

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    rem-int/2addr v10, v4

    if-eqz v10, :cond_2

    goto :goto_3

    :pswitch_1
    move-object v8, v1

    goto :goto_9

    :goto_3
    const/16 v10, 0xe

    goto :goto_4

    :cond_2
    const/16 v10, 0x54

    :goto_4
    packed-switch v10, :pswitch_data_2

    aget-byte v10, p0, v7

    if-nez v10, :cond_3

    goto :goto_5

    :pswitch_2
    aget-byte v10, p0, v7

    if-ne v10, v2, :cond_4

    goto :goto_7

    :goto_5
    const/16 v10, 0x12

    goto :goto_6

    :cond_3
    const/16 v10, 0x17

    :goto_6
    packed-switch v10, :pswitch_data_3

    goto :goto_7

    :cond_4
    :pswitch_3
    aget-char v10, v8, v7

    shl-int/2addr v10, v2

    sub-int/2addr v10, v9

    int-to-char v9, v10

    aput-char v9, v1, v7

    goto :goto_8

    :goto_7
    add-int/lit8 v11, v11, 0x5

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    rem-int/2addr v11, v4

    aget-char v10, v8, v7

    shl-int/2addr v10, v2

    add-int/2addr v10, v2

    sub-int/2addr v10, v9

    int-to-char v9, v10

    aput-char v9, v1, v7

    :goto_8
    aget-char v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_9
    if-lez v6, :cond_7

    sget p0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    rem-int/2addr p0, v4

    if-eqz p0, :cond_6

    new-array p0, v3, [C

    invoke-static {v8, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v1, v3, v6

    invoke-static {p0, v0, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int v1, v3, v6

    invoke-static {p0, v6, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_6
    new-array p0, v3, [C

    invoke-static {v8, v0, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v3, v6

    invoke-static {p0, v0, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v6, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_a
    if-eqz p2, :cond_8

    move p0, v0

    goto :goto_b

    :cond_8
    move p0, v2

    :goto_b
    packed-switch p0, :pswitch_data_4

    new-array p0, v3, [C

    move p2, v0

    :goto_c
    if-ge p2, v3, :cond_9

    sub-int v1, v3, p2

    sub-int/2addr v1, v2

    aget-char v1, v8, v1

    aput-char v1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_9
    move-object v8, p0

    :pswitch_4
    if-lez v5, :cond_a

    sget p0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    rem-int/2addr p0, v4

    :goto_d
    if-ge v0, v3, :cond_a

    aget-char p0, v8, v0

    aget p2, p1, v4

    sub-int/2addr p0, p2

    int-to-char p0, p0

    aput-char p0, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v8}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x54
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method static c()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->e:[C

    return-void

    :array_0
    .array-data 2
        0x22s
        0x49s
        0x4es
        0x4es
        0x1as
        0x3cs
        0x49s
        0x4es
        0x4es
        0xa4s
        0xb3s
        0xb1s
        0xa6s
        0xa6s
        0xads
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/emv/Tag$Rule;
    .locals 2

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/emv/Tag$Rule;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->b:[Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/emv/Tag$Rule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/emv/Tag$Rule;

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->d:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag$Rule;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x27

    goto :goto_0

    :cond_0
    const/16 v1, 0x54

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/16 v1, 0x29

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract processRule([B)Z
.end method
