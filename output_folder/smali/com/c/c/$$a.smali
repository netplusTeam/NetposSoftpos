.class public Lcom/c/c/$$a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessResult:B

.field public static access$300:[B

.field public static getData:[B

.field public static final getError:I

.field private static getFinalOutcome:J

.field private static getInternalData:I

.field private static getLastApdu:I

.field private static setData:Ljava/lang/Object;

.field public static final setError:[B

.field private static setFinalOutcome:Ljava/lang/Object;


# direct methods
.method public static $$a(ICI)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/c/c/$$a;->getLastApdu:I

    xor-int/lit8 v1, v0, 0x79

    and-int/lit8 v0, v0, 0x79

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/c/c/$$a;->getInternalData:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-eqz v1, :cond_0

    const/16 v1, 0x4f

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v5, 0x3d

    :try_start_0
    div-int/2addr v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    xor-int/lit8 v5, v0, 0x55

    and-int/lit8 v0, v0, 0x55

    shl-int/2addr v0, v2

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/2addr v5, v3

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_3

    :cond_1
    move v5, v4

    :goto_3
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x16

    sub-int/2addr v0, v2

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/c/c/$$a;->getInternalData:I

    rem-int/2addr v0, v3

    const/4 v0, 0x3

    :try_start_1
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    sget-object p0, Lcom/c/c/$$a;->setError:[B

    const/16 p1, 0xb4

    aget-byte p1, p0, p1

    neg-int p1, p1

    int-to-short p1, p1

    const/16 p2, 0x34c

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    const/16 v6, 0x52

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {p1, p2, v6}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/c/c/$$a;->setData:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p1, v2, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    sget p2, Lcom/c/c/$$a;->getError:I

    or-int/lit16 p2, p2, 0xf5

    int-to-short p2, p2

    const/16 v6, 0x13

    aget-byte v6, p0, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x83

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {p2, v6, p0}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v4

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v3

    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static $$d(SII)Ljava/lang/String;
    .locals 8

    sget v0, Lcom/c/c/$$a;->getInternalData:I

    add-int/lit8 v1, v0, 0x5e

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x4d

    goto :goto_0

    :cond_0
    const/16 v1, 0x58

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x14

    shr-int p2, v1, p2

    neg-int p0, p0

    xor-int/lit16 v1, p0, 0x7717

    and-int/lit16 p0, p0, 0x7717

    shl-int/2addr p0, v2

    add-int/2addr v1, p0

    add-int/lit8 p0, p1, 0x5e

    sget-object p1, Lcom/c/c/$$a;->setError:[B

    new-array v4, p2, [B

    if-nez p1, :cond_2

    goto :goto_2

    :pswitch_0
    rsub-int/lit8 p2, p2, 0x24

    neg-int p0, p0

    xor-int/lit16 v1, p0, 0x373

    and-int/lit16 p0, p0, 0x373

    shl-int/2addr p0, v2

    add-int/2addr v1, p0

    and-int/lit8 p0, p1, 0x29

    or-int/lit8 p1, p1, 0x29

    add-int/2addr p0, p1

    sget-object p1, Lcom/c/c/$$a;->setError:[B

    new-array v4, p2, [B

    if-nez p1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    packed-switch v5, :pswitch_data_1

    move v0, v1

    move v5, v3

    goto :goto_4

    :pswitch_1
    move v5, v3

    goto :goto_5

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_2
    move v5, v3

    :goto_3
    packed-switch v5, :pswitch_data_2

    move v5, v2

    goto :goto_5

    :pswitch_2
    move v0, v1

    move v5, v2

    :goto_4
    move v1, p0

    goto :goto_8

    :goto_5
    or-int/lit8 v6, v0, 0x9

    shl-int/2addr v6, v2

    xor-int/lit8 v0, v0, 0x9

    sub-int/2addr v6, v0

    rem-int/lit16 v0, v6, 0x80

    sput v0, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    move v0, v3

    goto :goto_6

    :cond_3
    move v0, v2

    :goto_6
    packed-switch v0, :pswitch_data_3

    :pswitch_3
    move v0, v1

    :goto_7
    not-int p0, p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v2

    or-int/lit8 p0, v0, 0x1

    shl-int/2addr p0, v2

    xor-int/2addr v0, v2

    sub-int/2addr p0, v0

    or-int/lit8 v0, v1, -0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/c/c/$$a;->getLastApdu:I

    and-int/lit8 v6, v1, 0x63

    or-int/lit8 v1, v1, 0x63

    add-int/2addr v6, v1

    rem-int/lit16 v1, v6, 0x80

    sput v1, Lcom/c/c/$$a;->getInternalData:I

    rem-int/lit8 v6, v6, 0x2

    move v1, v0

    move v0, p0

    :goto_8
    add-int/lit8 p0, v5, -0x31

    sub-int/2addr p0, v2

    xor-int/lit8 v6, p0, 0x33

    and-int/lit8 p0, p0, 0x33

    shl-int/2addr p0, v2

    add-int/2addr p0, v6

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    if-ne p0, p2, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lcom/c/c/$$a;->getInternalData:I

    and-int/lit8 p2, p1, 0x73

    or-int/lit8 p1, p1, 0x73

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 p2, p2, 0x2

    return-object p0

    :cond_4
    aget-byte v5, p1, v0

    move v7, v5

    move v5, p0

    move p0, v7

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x58
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

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 49

    const-class v1, [B

    const/4 v2, 0x0

    .line 3597
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 0
    sput v2, Lcom/c/c/$$a;->getInternalData:I

    const/4 v4, 0x1

    sput v4, Lcom/c/c/$$a;->getLastApdu:I

    invoke-static {}, Lcom/c/c/$$a;->init$0()V

    .line 1000
    const/16 v5, 0x76

    sput-byte v5, Lcom/c/c/$$a;->ContactlessResult:B

    const-wide v6, -0x18537047a1af89deL

    sput-wide v6, Lcom/c/c/$$a;->getFinalOutcome:J

    .line 77
    const/16 v6, 0x16d

    int-to-short v6, v6

    :try_start_0
    sget-object v7, Lcom/c/c/$$a;->setError:[B

    const/16 v8, 0x34c

    aget-byte v9, v7, v8

    int-to-byte v9, v9

    const/16 v10, 0x52

    aget-byte v11, v7, v10

    int-to-byte v11, v11

    invoke-static {v6, v9, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    .line 81
    sget-object v9, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    const/16 v11, 0x10

    const/4 v12, 0x0

    if-nez v9, :cond_0

    const/16 v9, 0x57

    aget-byte v9, v7, v9

    add-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v4

    int-to-short v9, v9

    aget-byte v13, v7, v8

    int-to-byte v13, v13

    aget-byte v14, v7, v11

    int-to-byte v14, v14

    invoke-static {v9, v13, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    goto :goto_0

    :cond_0
    move-object v9, v12

    .line 84
    :goto_0
    nop

    .line 1767
    nop

    .line 1771
    const/16 v13, 0x118

    int-to-short v13, v13

    const/16 v14, 0x47

    const/16 v15, 0x11e

    :try_start_1
    aget-byte v14, v7, v14

    int-to-byte v14, v14

    sget v4, Lcom/c/c/$$a;->getError:I

    int-to-byte v4, v4

    invoke-static {v13, v14, v4}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    .line 1772
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v13, 0x346

    int-to-short v13, v13

    aget-byte v14, v7, v8

    int-to-byte v14, v14

    const/16 v17, 0x182

    aget-byte v7, v7, v17

    int-to-byte v7, v7

    invoke-static {v13, v14, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    new-array v13, v2, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v4, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v7, v12

    check-cast v7, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v4, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1776
    if-eqz v4, :cond_1

    .line 1778
    goto :goto_3

    :cond_1
    nop

    .line 272
    goto :goto_1

    .line 1778
    :catch_0
    move-exception v0

    move-object v4, v12

    .line 1785
    :goto_1
    const/16 v7, 0x21c

    int-to-short v7, v7

    :try_start_2
    sget-object v13, Lcom/c/c/$$a;->setError:[B

    const/16 v14, 0x47

    aget-byte v14, v13, v14

    int-to-byte v14, v14

    aget-byte v8, v13, v11

    int-to-byte v8, v8

    invoke-static {v7, v14, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    .line 1786
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0xa7

    int-to-short v8, v8

    aget-byte v14, v13, v15

    int-to-byte v14, v14

    aget-byte v13, v13, v10

    int-to-byte v13, v13

    invoke-static {v8, v14, v13}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    new-array v13, v2, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v7, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v8, v12

    check-cast v8, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v7, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1792
    :goto_2
    nop

    .line 86
    :goto_3
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 95
    if-eqz v4, :cond_2

    .line 229
    const/4 v7, 0x1

    goto :goto_4

    :cond_2
    move v7, v2

    :goto_4
    packed-switch v7, :pswitch_data_0

    .line 97
    nop

    .line 98
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_5

    .line 229
    :pswitch_0
    move-object v7, v12

    goto :goto_6

    .line 98
    :goto_5
    const/16 v8, 0x2c6

    int-to-short v8, v8

    sget-object v13, Lcom/c/c/$$a;->setError:[B

    aget-byte v14, v13, v15

    int-to-byte v14, v14

    aget-byte v13, v13, v5

    int-to-byte v13, v13

    invoke-static {v8, v14, v13}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    move-object v13, v12

    check-cast v13, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v7, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v8, v12

    check-cast v8, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v7, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_6
    goto :goto_7

    :catch_2
    move-exception v0

    move-object v7, v12

    .line 107
    :goto_7
    if-eqz v4, :cond_3

    .line 229
    const/16 v8, 0x55

    goto :goto_8

    :cond_3
    const/16 v8, 0xb

    :goto_8
    packed-switch v8, :pswitch_data_1

    move-object v8, v12

    goto :goto_9

    .line 109
    :pswitch_1
    nop

    .line 110
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget v13, Lcom/c/c/$$a;->getError:I

    or-int/lit16 v13, v13, 0x265

    int-to-short v13, v13

    sget-object v14, Lcom/c/c/$$a;->setError:[B

    aget-byte v10, v14, v15

    int-to-byte v10, v10

    const/16 v19, 0xb

    aget-byte v14, v14, v19

    int-to-byte v14, v14

    invoke-static {v13, v10, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    move-object v13, v12

    check-cast v13, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v10, v12

    check-cast v10, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v8, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v8, v12

    goto :goto_a

    :goto_9
    nop

    .line 119
    :goto_a
    if-eqz v4, :cond_4

    .line 121
    nop

    .line 122
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/16 v13, 0x2b8

    int-to-short v13, v13

    sget-object v14, Lcom/c/c/$$a;->setError:[B

    aget-byte v11, v14, v15

    int-to-byte v11, v11

    aget-byte v14, v14, v5

    int-to-byte v14, v14

    invoke-static {v13, v11, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v11

    move-object v13, v12

    check-cast v13, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v11, v12

    check-cast v11, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v10, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v4, v12

    goto :goto_c

    .line 119
    :cond_4
    move-object v4, v12

    .line 124
    :goto_b
    nop

    .line 130
    :goto_c
    const/16 v10, 0x1c8

    const/16 v11, 0x42

    const/4 v13, 0x2

    if-eqz v7, :cond_5

    :goto_d
    goto :goto_f

    :cond_5
    if-nez v9, :cond_6

    .line 229
    const/16 v7, 0x2f

    goto :goto_e

    :cond_6
    const/16 v7, 0x25

    :goto_e
    packed-switch v7, :pswitch_data_2

    .line 130
    const/4 v7, 0x0

    goto :goto_f

    :pswitch_2
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x186

    int-to-short v14, v14

    sget-object v20, Lcom/c/c/$$a;->setError:[B

    const/16 v21, 0x16

    aget-byte v12, v20, v21

    int-to-byte v12, v12

    aget-byte v15, v20, v5

    int-to-byte v15, v15

    invoke-static {v14, v12, v15}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 3600
    sget v9, Lcom/c/c/$$a;->getLastApdu:I

    and-int/lit8 v12, v9, 0x39

    or-int/lit8 v9, v9, 0x39

    add-int/2addr v12, v9

    rem-int/lit16 v9, v12, 0x80

    sput v9, Lcom/c/c/$$a;->getInternalData:I

    rem-int/2addr v12, v13

    if-eqz v12, :cond_7

    .line 130
    :cond_7
    const/4 v9, 0x1

    :try_start_7
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v7, v12, v2

    const/16 v7, 0x93

    int-to-short v7, v7

    aget-byte v9, v20, v11

    int-to-byte v9, v9

    aget-byte v14, v20, v10

    int-to-byte v14, v14

    invoke-static {v7, v9, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v14, v2

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_8

    throw v2

    :cond_8
    throw v1

    .line 134
    :goto_f
    const/4 v9, 0x5

    if-eqz v4, :cond_9

    :goto_10
    goto :goto_11

    :cond_9
    const/16 v4, 0x13d

    int-to-short v4, v4

    sget-object v12, Lcom/c/c/$$a;->setError:[B

    aget-byte v14, v12, v11

    int-to-byte v14, v14

    aget-byte v15, v12, v9

    int-to-byte v15, v15

    invoke-static {v4, v14, v15}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    const/4 v14, 0x1

    :try_start_9
    new-array v15, v14, [Ljava/lang/Object;

    aput-object v4, v15, v2

    const/16 v4, 0x355

    int-to-short v4, v4

    aget-byte v14, v12, v11

    int-to-byte v14, v14

    const/16 v20, 0x3a

    aget-byte v9, v12, v20

    int-to-byte v9, v9

    invoke-static {v4, v14, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x130

    int-to-short v9, v9

    const/16 v14, 0x11e

    aget-byte v13, v12, v14

    int-to-byte v13, v13

    aget-byte v14, v12, v5

    int-to-byte v14, v14

    invoke-static {v9, v13, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v14, v2

    invoke-virtual {v4, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5e

    const/4 v9, 0x1

    :try_start_a
    new-array v13, v9, [Ljava/lang/Object;

    aput-object v4, v13, v2

    const/16 v4, 0x93

    int-to-short v4, v4

    aget-byte v9, v12, v11

    int-to-byte v9, v9

    aget-byte v12, v12, v10

    int-to-byte v12, v12

    invoke-static {v4, v9, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v12, v2

    invoke-virtual {v4, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5d

    goto :goto_10

    .line 141
    :goto_11
    if-nez v8, :cond_a

    .line 229
    move v9, v2

    goto :goto_12

    :cond_a
    const/4 v9, 0x1

    :goto_12
    packed-switch v9, :pswitch_data_3

    goto :goto_14

    .line 141
    :pswitch_3
    if-eqz v7, :cond_d

    .line 144
    const/16 v8, 0x297

    int-to-short v8, v8

    :try_start_b
    sget-object v9, Lcom/c/c/$$a;->setError:[B

    const/16 v12, 0x34c

    aget-byte v13, v9, v12

    int-to-byte v12, v13

    const/16 v13, 0x13

    aget-byte v13, v9, v13

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v8, v12, v13}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    .line 229
    sget v12, Lcom/c/c/$$a;->getInternalData:I

    and-int/lit8 v13, v12, 0x61

    or-int/lit8 v12, v12, 0x61

    add-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v12, 0x2

    rem-int/2addr v13, v12

    if-nez v13, :cond_b

    .line 144
    :cond_b
    :try_start_c
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x1

    aput-object v8, v13, v12

    aput-object v7, v13, v2

    const/16 v8, 0x93

    int-to-short v8, v8

    aget-byte v12, v9, v11

    int-to-byte v12, v12

    aget-byte v14, v9, v10

    int-to-byte v14, v14

    invoke-static {v8, v12, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    aget-byte v14, v9, v11

    int-to-byte v14, v14

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v8, v14, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v15, v2

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v15, v9

    invoke-virtual {v12, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_c

    :goto_13
    throw v2

    :cond_c
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :cond_d
    :goto_14
    const/16 v9, 0x1b5

    int-to-short v9, v9

    :try_start_e
    sget-object v12, Lcom/c/c/$$a;->setError:[B

    const/16 v13, 0x47

    aget-byte v13, v12, v13

    int-to-byte v13, v13

    const/16 v14, 0x10

    aget-byte v15, v12, v14

    int-to-byte v14, v15

    invoke-static {v9, v13, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v13, 0x207

    int-to-short v13, v13

    const/16 v14, 0x11e

    aget-byte v15, v12, v14

    int-to-byte v14, v15

    const/16 v15, 0x2c

    aget-byte v15, v12, v15

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v14, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5c

    .line 148
    const/16 v13, 0x93

    int-to-short v13, v13

    :try_start_f
    aget-byte v14, v12, v11

    int-to-byte v14, v14

    aget-byte v15, v12, v10

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/16 v15, 0x9

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v22, v14, v2

    const/16 v16, 0x1

    aput-object v8, v14, v16

    const/16 v20, 0x2

    aput-object v7, v14, v20

    const/4 v5, 0x3

    aput-object v4, v14, v5

    const/4 v10, 0x4

    aput-object v9, v14, v10

    const/16 v23, 0x5

    aput-object v8, v14, v23

    const/4 v8, 0x6

    aput-object v7, v14, v8

    const/4 v7, 0x7

    aput-object v4, v14, v7

    const/16 v4, 0x8

    aput-object v9, v14, v4

    .line 190
    new-array v4, v15, [Z

    aput-boolean v2, v4, v2

    const/4 v7, 0x1

    aput-boolean v7, v4, v7

    const/4 v8, 0x2

    aput-boolean v7, v4, v8

    aput-boolean v7, v4, v5

    aput-boolean v7, v4, v10

    const/4 v8, 0x5

    aput-boolean v7, v4, v8

    const/4 v8, 0x6

    aput-boolean v7, v4, v8

    const/4 v8, 0x7

    aput-boolean v7, v4, v8

    const/16 v8, 0x8

    aput-boolean v7, v4, v8

    .line 194
    new-array v8, v15, [Z

    aput-boolean v2, v8, v2

    aput-boolean v2, v8, v7

    const/4 v7, 0x2

    aput-boolean v2, v8, v7

    aput-boolean v2, v8, v5

    aput-boolean v2, v8, v10

    const/4 v7, 0x5

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    const/4 v7, 0x6

    aput-boolean v9, v8, v7

    const/4 v7, 0x7

    aput-boolean v9, v8, v7

    const/16 v7, 0x8

    aput-boolean v9, v8, v7

    .line 198
    new-array v7, v15, [Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v9

    const/16 v16, 0x2

    aput-boolean v9, v7, v16

    aput-boolean v9, v7, v5

    aput-boolean v2, v7, v10

    const/16 v16, 0x5

    aput-boolean v2, v7, v16

    const/16 v16, 0x6

    aput-boolean v9, v7, v16

    const/16 v16, 0x7

    aput-boolean v9, v7, v16

    const/16 v9, 0x8

    aput-boolean v2, v7, v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 204
    const/16 v9, 0x323

    int-to-short v9, v9

    const/16 v25, 0x47

    const/16 v26, 0x83

    :try_start_10
    aget-byte v5, v12, v25

    int-to-byte v5, v5

    aget-byte v11, v12, v26

    int-to-byte v11, v11

    invoke-static {v9, v5, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 205
    const/16 v9, 0x173

    int-to-short v9, v9

    const/16 v11, 0x9b

    aget-byte v11, v12, v11

    int-to-byte v11, v11

    const/16 v27, 0x2fa

    aget-byte v12, v12, v27

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 208
    const/16 v9, 0x1a

    if-lt v5, v9, :cond_e

    const/4 v9, 0x1

    goto :goto_15

    :cond_e
    move v9, v2

    :goto_15
    aput-boolean v9, v7, v2
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 211
    const/16 v9, 0x15

    if-lt v5, v9, :cond_f

    .line 229
    const/4 v9, 0x1

    goto :goto_16

    :cond_f
    move v9, v2

    :goto_16
    packed-switch v9, :pswitch_data_4

    .line 211
    move v9, v2

    goto :goto_17

    .line 229
    :pswitch_4
    sget v9, Lcom/c/c/$$a;->getInternalData:I

    and-int/lit8 v11, v9, 0x3b

    or-int/lit8 v9, v9, 0x3b

    add-int/2addr v11, v9

    rem-int/lit16 v9, v11, 0x80

    sput v9, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v9, 0x2

    rem-int/2addr v11, v9

    .line 272
    const/4 v9, 0x1

    .line 211
    :goto_17
    const/4 v11, 0x1

    :try_start_11
    aput-boolean v9, v7, v11

    .line 212
    const/16 v9, 0x15

    if-lt v5, v9, :cond_10

    const/4 v9, 0x1

    goto :goto_18

    :cond_10
    move v9, v2

    :goto_18
    const/4 v11, 0x5

    aput-boolean v9, v7, v11

    .line 215
    const/16 v9, 0x10

    if-ge v5, v9, :cond_11

    .line 229
    move v9, v2

    goto :goto_19

    :cond_11
    const/4 v9, 0x1

    :goto_19
    packed-switch v9, :pswitch_data_5

    .line 215
    move v9, v2

    goto :goto_1a

    :pswitch_5
    const/4 v9, 0x1

    :goto_1a
    aput-boolean v9, v7, v10

    .line 216
    const/16 v9, 0x8

    const/16 v11, 0x10

    if-ge v5, v11, :cond_12

    const/4 v5, 0x1

    goto :goto_1b

    :cond_12
    move v5, v2

    :goto_1b
    aput-boolean v5, v7, v9
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    goto :goto_1c

    .line 218
    :catch_5
    move-exception v0

    .line 224
    :goto_1c
    nop

    .line 225
    move v5, v2

    move v9, v5

    .line 226
    :goto_1d
    if-nez v9, :cond_72

    if-ge v5, v15, :cond_72

    .line 3600
    sget v11, Lcom/c/c/$$a;->getInternalData:I

    add-int/lit8 v11, v11, 0x4a

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v12, 0x2

    rem-int/2addr v11, v12

    if-nez v11, :cond_14

    .line 229
    :try_start_12
    aget-boolean v11, v7, v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    const/16 v12, 0x15

    :try_start_13
    div-int/2addr v12, v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v11, :cond_13

    :goto_1e
    goto :goto_20

    :cond_13
    :pswitch_6
    move-object/from16 v31, v4

    move/from16 v42, v5

    move-object/from16 v33, v6

    move-object/from16 v41, v7

    move-object/from16 v37, v8

    move/from16 v35, v9

    move/from16 v28, v13

    move-object/from16 v36, v14

    move v4, v15

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move v6, v2

    const/16 v2, 0x42

    goto/16 :goto_7f

    .line 3600
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 229
    :cond_14
    :try_start_14
    aget-boolean v11, v7, v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    if-eqz v11, :cond_15

    const/16 v11, 0x3f

    goto :goto_1f

    :cond_15
    const/4 v11, 0x2

    :goto_1f
    packed-switch v11, :pswitch_data_6

    goto :goto_1e

    .line 233
    :goto_20
    :try_start_15
    aget-boolean v27, v4, v5

    aget-object v15, v14, v5

    aget-boolean v28, v8, v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5a

    .line 2306
    const/16 v29, 0xf

    const/16 v30, 0xbe

    if-eqz v27, :cond_1a

    if-eqz v15, :cond_16

    .line 229
    move/from16 v31, v2

    goto :goto_21

    :cond_16
    const/16 v31, 0x1

    :goto_21
    packed-switch v31, :pswitch_data_7

    .line 2306
    :try_start_16
    sget-object v31, Lcom/c/c/$$a;->setError:[B

    const/16 v25, 0x42

    aget-byte v10, v31, v25

    int-to-byte v10, v10

    const/16 v24, 0x1c8

    aget-byte v11, v31, v24

    int-to-byte v11, v11

    invoke-static {v13, v10, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v11, 0xc7

    int-to-short v11, v11

    const/16 v17, 0x34c

    aget-byte v12, v31, v17

    int-to-byte v12, v12

    const/16 v33, 0x8f

    aget-byte v2, v31, v33

    int-to-byte v2, v2

    invoke-static {v11, v12, v2}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v2, :cond_17

    move-object/from16 v31, v4

    goto/16 :goto_23

    .line 2310
    :cond_17
    :pswitch_7
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x23c

    int-to-short v10, v10

    sget-object v11, Lcom/c/c/$$a;->setError:[B

    const/16 v12, 0x8f

    aget-byte v12, v11, v12
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    int-to-byte v12, v12

    move-object/from16 v31, v4

    :try_start_18
    aget-byte v4, v11, v30

    int-to-byte v4, v4

    invoke-static {v10, v12, v4}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/c/c/$$a;->getError:I

    xor-int/lit16 v10, v4, 0x2a1

    and-int/lit16 v4, v4, 0x2a1

    or-int/2addr v4, v10

    int-to-short v4, v4

    aget-byte v10, v11, v29

    int-to-byte v10, v10

    const/16 v12, 0x246

    aget-byte v12, v11, v12

    int-to-byte v12, v12

    invoke-static {v4, v10, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    const/4 v4, 0x1

    :try_start_19
    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v10, v4

    const/16 v2, 0xc0

    int-to-short v2, v2

    const/16 v4, 0x42

    aget-byte v12, v11, v4

    int-to-byte v4, v12

    const/16 v12, 0x222

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v2, v4, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_18

    throw v4

    :cond_18
    throw v2

    .line 240
    :catchall_4
    move-exception v0

    move-object/from16 v31, v4

    :goto_22
    move-object v2, v0

    move/from16 v42, v5

    move-object/from16 v33, v6

    move-object/from16 v41, v7

    move-object/from16 v37, v8

    move/from16 v35, v9

    move/from16 v28, v13

    move-object/from16 v36, v14

    goto/16 :goto_3d

    .line 2306
    :catchall_5
    move-exception v0

    move-object/from16 v31, v4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_19

    throw v4

    :cond_19
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 240
    :catchall_6
    move-exception v0

    goto :goto_22

    .line 2306
    :cond_1a
    move-object/from16 v31, v4

    .line 2313
    :goto_23
    nop

    .line 2314
    nop

    .line 2316
    nop

    .line 2317
    nop

    .line 2320
    nop

    .line 2323
    if-eqz v27, :cond_31

    .line 2325
    :try_start_1b
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    .line 2326
    const/16 v4, 0x355

    int-to-short v4, v4

    :try_start_1c
    sget-object v10, Lcom/c/c/$$a;->setError:[B

    const/16 v11, 0x42

    aget-byte v12, v10, v11

    int-to-byte v11, v12

    const/16 v12, 0x3a

    aget-byte v12, v10, v12

    int-to-byte v12, v12

    invoke-static {v4, v11, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    const/16 v11, 0x84

    int-to-short v11, v11

    move-object/from16 v33, v6

    const/16 v12, 0x34c

    :try_start_1d
    aget-byte v6, v10, v12

    int-to-byte v6, v6

    const/16 v12, 0x2d

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v11, v6, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    const-wide/32 v34, 0x7e895cfb

    xor-long v10, v10, v34

    :try_start_1e
    invoke-virtual {v2, v10, v11}, Ljava/util/Random;->setSeed(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2330
    :goto_24
    if-nez v4, :cond_2f

    .line 2334
    if-nez v6, :cond_1b

    const/4 v12, 0x6

    move-object/from16 v34, v4

    goto :goto_26

    :cond_1b
    if-nez v10, :cond_1c

    .line 229
    const/16 v12, 0x5d

    goto :goto_25

    :cond_1c
    const/16 v12, 0x5c

    :goto_25
    packed-switch v12, :pswitch_data_8

    .line 2334
    move-object/from16 v34, v4

    const/4 v12, 0x5

    goto :goto_26

    :pswitch_8
    if-nez v11, :cond_1e

    .line 229
    sget v12, Lcom/c/c/$$a;->getLastApdu:I

    add-int/lit8 v12, v12, 0xc

    const/16 v16, 0x1

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v34, v4

    rem-int/lit16 v4, v12, 0x80

    sput v4, Lcom/c/c/$$a;->getInternalData:I

    const/4 v4, 0x2

    rem-int/2addr v12, v4

    if-eqz v12, :cond_1d

    .line 2334
    :cond_1d
    const/4 v12, 0x4

    goto :goto_26

    :cond_1e
    move-object/from16 v34, v4

    .line 272
    const/4 v12, 0x3

    .line 2344
    :goto_26
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    and-int/lit8 v35, v12, 0x1

    or-int/lit8 v36, v12, 0x1

    move-object/from16 v37, v8

    add-int v8, v35, v36

    :try_start_20
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2346
    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2348
    const/4 v8, 0x0

    :goto_27
    if-ge v8, v12, :cond_1f

    .line 229
    const/16 v35, 0x1

    goto :goto_28

    :cond_1f
    const/16 v35, 0x0

    :goto_28
    packed-switch v35, :pswitch_data_9

    .line 2350
    move-object/from16 v38, v6

    move-object/from16 v41, v7

    move/from16 v35, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v36, v14

    if-eqz v28, :cond_2e

    goto/16 :goto_34

    .line 2367
    :pswitch_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    .line 2369
    if-nez v6, :cond_20

    .line 229
    const/4 v8, 0x0

    goto :goto_29

    :cond_20
    const/4 v8, 0x1

    :goto_29
    packed-switch v8, :pswitch_data_a

    .line 2373
    move/from16 v35, v9

    move-object/from16 v36, v14

    if-nez v10, :cond_23

    goto :goto_2c

    .line 2371
    :pswitch_a
    const/4 v6, 0x2

    :try_start_21
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v8, v6

    const/4 v4, 0x0

    aput-object v15, v8, v4

    sget-object v4, Lcom/c/c/$$a;->setError:[B

    const/16 v6, 0x42

    aget-byte v12, v4, v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    int-to-byte v6, v12

    move/from16 v35, v9

    const/16 v12, 0x1c8

    :try_start_22
    aget-byte v9, v4, v12

    int-to-byte v9, v9

    invoke-static {v13, v6, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Class;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    move-object/from16 v36, v14

    const/16 v9, 0x42

    :try_start_23
    aget-byte v14, v4, v9

    int-to-byte v9, v14

    const/16 v14, 0x1c8

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    invoke-static {v13, v9, v4}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v12, v9

    const-class v4, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v4, v12, v9

    invoke-virtual {v6, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    move-object v6, v4

    move-object/from16 v41, v7

    move-object/from16 v4, v34

    goto/16 :goto_33

    :catchall_7
    move-exception v0

    goto :goto_2b

    :catchall_8
    move-exception v0

    goto :goto_2a

    :catchall_9
    move-exception v0

    move/from16 v35, v9

    :goto_2a
    move-object/from16 v36, v14

    :goto_2b
    move-object v2, v0

    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_21

    throw v4

    :cond_21
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 240
    :catchall_a
    move-exception v0

    move-object v2, v0

    move/from16 v42, v5

    move-object/from16 v41, v7

    goto/16 :goto_3c

    .line 2375
    :goto_2c
    const/4 v8, 0x2

    :try_start_25
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v4, v9, v8

    const/4 v4, 0x0

    aput-object v15, v9, v4

    sget-object v4, Lcom/c/c/$$a;->setError:[B

    const/16 v8, 0x42

    aget-byte v10, v4, v8

    int-to-byte v8, v10

    const/16 v10, 0x1c8

    aget-byte v12, v4, v10

    int-to-byte v10, v12

    invoke-static {v13, v8, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Class;

    const/16 v10, 0x42

    aget-byte v14, v4, v10

    int-to-byte v10, v14

    const/16 v14, 0x1c8

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    invoke-static {v13, v10, v4}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v12, v10

    const-class v4, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v4, v12, v10

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    move-object v10, v4

    move-object/from16 v41, v7

    move-object/from16 v4, v34

    goto/16 :goto_33

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_22

    throw v4

    :cond_22
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 2377
    :cond_23
    if-nez v11, :cond_24

    .line 229
    const/4 v8, 0x0

    goto :goto_2d

    :cond_24
    const/4 v8, 0x1

    :goto_2d
    packed-switch v8, :pswitch_data_b

    .line 272
    move-object/from16 v38, v6

    move-object/from16 v41, v7

    move-object/from16 v39, v10

    sget v6, Lcom/c/c/$$a;->getLastApdu:I

    or-int/lit8 v7, v6, 0x41

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    xor-int/lit8 v6, v6, 0x41

    sub-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/c/c/$$a;->getInternalData:I

    const/4 v6, 0x2

    rem-int/2addr v7, v6

    if-eqz v7, :cond_2a

    goto/16 :goto_30

    .line 2383
    :pswitch_b
    nop

    .line 229
    sget v8, Lcom/c/c/$$a;->getInternalData:I

    add-int/lit8 v8, v8, 0x34

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v9, 0x2

    rem-int/2addr v8, v9

    if-nez v8, :cond_25

    .line 2383
    :cond_25
    :try_start_27
    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v4, 0x0

    aput-object v15, v8, v4

    sget-object v4, Lcom/c/c/$$a;->setError:[B

    const/16 v9, 0x42

    aget-byte v12, v4, v9

    int-to-byte v9, v12

    const/16 v12, 0x1c8

    aget-byte v14, v4, v12

    int-to-byte v12, v14

    invoke-static {v13, v9, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Class;

    move-object/from16 v38, v6

    const/16 v12, 0x42

    aget-byte v6, v4, v12

    int-to-byte v6, v6

    move-object/from16 v39, v10

    const/16 v12, 0x1c8

    aget-byte v10, v4, v12

    int-to-byte v10, v10

    invoke-static {v13, v6, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v14, v10

    const-class v6, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v6, v14, v10

    invoke-virtual {v9, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 2388
    nop

    .line 229
    sget v8, Lcom/c/c/$$a;->getInternalData:I

    xor-int/lit8 v9, v8, 0x25

    and-int/lit8 v8, v8, 0x25

    const/4 v10, 0x1

    shl-int/2addr v8, v10

    add-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v8, 0x2

    rem-int/2addr v9, v8

    if-nez v9, :cond_26

    .line 2388
    :cond_26
    const/4 v8, 0x1

    :try_start_28
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v9, v8

    const/16 v8, 0xe8

    int-to-short v8, v8

    const/16 v10, 0x42

    aget-byte v12, v4, v10

    int-to-byte v10, v12

    aget-byte v12, v4, v26

    int-to-byte v12, v12

    invoke-static {v8, v10, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    move-object/from16 v40, v11

    const/16 v12, 0x42

    aget-byte v11, v4, v12
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    int-to-byte v11, v11

    move-object/from16 v41, v7

    const/16 v12, 0x1c8

    :try_start_29
    aget-byte v7, v4, v12

    int-to-byte v7, v7

    invoke-static {v13, v11, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v14, v11

    invoke-virtual {v10, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    const/16 v9, 0x42

    :try_start_2a
    aget-byte v10, v4, v9

    int-to-byte v9, v10

    aget-byte v10, v4, v26

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x141

    int-to-short v9, v9

    const/16 v10, 0x34c

    aget-byte v11, v4, v10

    int-to-byte v10, v11

    aget-byte v4, v4, v30

    int-to-byte v4, v4

    invoke-static {v9, v10, v4}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    move-object v4, v6

    move-object/from16 v6, v38

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    goto/16 :goto_33

    :catchall_c
    move-exception v0

    move-object v2, v0

    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_27

    :goto_2e
    throw v4

    :cond_27
    throw v2

    :catchall_d
    move-exception v0

    goto :goto_2f

    :catchall_e
    move-exception v0

    move-object/from16 v41, v7

    :goto_2f
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_6
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    if-eqz v4, :cond_27

    goto :goto_2e

    .line 2390
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 2392
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x88

    int-to-short v7, v7

    sget-object v8, Lcom/c/c/$$a;->setError:[B

    const/16 v9, 0x8f

    aget-byte v9, v8, v9

    int-to-byte v9, v9

    aget-byte v10, v8, v30

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/c/c/$$a;->getError:I

    xor-int/lit16 v7, v6, 0x2a1

    and-int/lit16 v6, v6, 0x2a1

    or-int/2addr v6, v7

    int-to-short v6, v6

    aget-byte v7, v8, v29

    int-to-byte v7, v7

    const/16 v9, 0x246

    aget-byte v9, v8, v9

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    const/4 v6, 0x2

    :try_start_2d
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x0

    aput-object v4, v7, v2

    const/16 v2, 0xc0

    int-to-short v2, v2

    const/16 v4, 0x42

    aget-byte v6, v8, v4

    int-to-byte v4, v6

    const/16 v6, 0x222

    aget-byte v8, v8, v6

    int-to-byte v6, v8

    invoke-static {v2, v4, v6}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    const-class v4, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v4, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    :catchall_f
    move-exception v0

    move-object v2, v0

    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_28

    throw v4

    :cond_28
    throw v2

    .line 2383
    :catchall_10
    move-exception v0

    move-object/from16 v41, v7

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_29

    throw v4

    :cond_29
    throw v2

    .line 229
    :goto_30
    const/16 v6, 0x36

    goto :goto_31

    :cond_2a
    const/16 v6, 0x1f

    :goto_31
    packed-switch v6, :pswitch_data_c

    .line 2379
    const/16 v6, 0x33

    const/4 v7, 0x0

    div-int/2addr v6, v7
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_16

    goto :goto_32

    :pswitch_c
    const/4 v7, 0x0

    :goto_32
    const/4 v6, 0x2

    :try_start_2f
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v8, v6

    aput-object v15, v8, v7

    sget-object v4, Lcom/c/c/$$a;->setError:[B

    const/16 v6, 0x42

    aget-byte v7, v4, v6

    int-to-byte v6, v7

    const/16 v7, 0x1c8

    aget-byte v9, v4, v7

    int-to-byte v7, v9

    invoke-static {v13, v6, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Class;

    const/16 v7, 0x42

    aget-byte v10, v4, v7

    int-to-byte v7, v10

    const/16 v10, 0x1c8

    aget-byte v4, v4, v10

    int-to-byte v4, v4

    invoke-static {v13, v7, v4}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v9, v7

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v9, v7

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    move-object v11, v4

    move-object/from16 v4, v34

    move-object/from16 v6, v38

    move-object/from16 v10, v39

    .line 2392
    :goto_33
    move/from16 v9, v35

    move-object/from16 v14, v36

    move-object/from16 v8, v37

    move-object/from16 v7, v41

    goto/16 :goto_24

    .line 2379
    :catchall_11
    move-exception v0

    move-object v2, v0

    :try_start_30
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2b

    throw v4

    :cond_2b
    throw v2

    .line 2352
    :goto_34
    const/16 v6, 0x1a

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 2353
    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v7
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_16

    .line 2355
    if-eqz v7, :cond_2c

    .line 229
    const/16 v7, 0x23

    goto :goto_35

    :cond_2c
    const/16 v7, 0x48

    :goto_35
    packed-switch v7, :pswitch_data_d

    .line 2355
    xor-int/lit8 v7, v6, 0x60

    and-int/lit8 v6, v6, 0x60

    const/4 v9, 0x1

    shl-int/2addr v6, v9

    add-int/2addr v6, v7

    goto :goto_36

    .line 229
    :pswitch_d
    sget v7, Lcom/c/c/$$a;->getInternalData:I

    add-int/lit8 v7, v7, 0x29

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v9, 0x2

    rem-int/2addr v7, v9

    if-nez v7, :cond_2d

    .line 2355
    :cond_2d
    add-int/lit8 v6, v6, 0x41

    .line 2358
    :goto_36
    int-to-char v6, v6

    :try_start_31
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    goto :goto_37

    .line 2362
    :cond_2e
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    xor-int/lit16 v7, v6, 0x2000

    and-int/lit16 v6, v6, 0x2000

    const/4 v9, 0x1

    shl-int/2addr v6, v9

    add-int/2addr v7, v6

    .line 2363
    int-to-char v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2348
    :goto_37
    add-int/lit8 v8, v8, 0x64

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x61

    sub-int/2addr v8, v9

    move/from16 v9, v35

    move-object/from16 v14, v36

    move-object/from16 v6, v38

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    move-object/from16 v7, v41

    goto/16 :goto_27

    .line 240
    :catchall_12
    move-exception v0

    move-object/from16 v41, v7

    goto :goto_3a

    .line 2330
    :cond_2f
    move-object/from16 v34, v4

    move-object/from16 v38, v6

    move-object/from16 v41, v7

    move-object/from16 v37, v8

    move/from16 v35, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v36, v14

    move-object/from16 v9, v38

    goto :goto_3f

    .line 240
    :catchall_13
    move-exception v0

    goto :goto_39

    .line 2326
    :catchall_14
    move-exception v0

    goto :goto_38

    :catchall_15
    move-exception v0

    move-object/from16 v33, v6

    :goto_38
    move-object/from16 v41, v7

    move-object/from16 v37, v8

    move/from16 v35, v9

    move-object/from16 v36, v14

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_30

    throw v4

    :cond_30
    throw v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    .line 240
    :catchall_16
    move-exception v0

    goto :goto_3b

    :catchall_17
    move-exception v0

    move-object/from16 v33, v6

    :goto_39
    move-object/from16 v41, v7

    move-object/from16 v37, v8

    :goto_3a
    move/from16 v35, v9

    move-object/from16 v36, v14

    :goto_3b
    move-object v2, v0

    move/from16 v42, v5

    :goto_3c
    move/from16 v28, v13

    :goto_3d
    const/16 v10, 0x34c

    const/4 v14, 0x5

    :goto_3e
    const/16 v18, 0x76

    goto/16 :goto_79

    .line 2323
    :cond_31
    move-object/from16 v33, v6

    move-object/from16 v41, v7

    move-object/from16 v37, v8

    move/from16 v35, v9

    move-object/from16 v36, v14

    const/4 v9, 0x0

    const/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    .line 2399
    :goto_3f
    nop

    .line 2405
    const/16 v2, 0x1a80

    :try_start_32
    new-array v2, v2, [B

    .line 2406
    const-class v4, Lcom/c/c/$$a;

    const/16 v6, 0xd1

    int-to-short v6, v6

    sget-object v7, Lcom/c/c/$$a;->setError:[B

    const/16 v8, 0x16

    aget-byte v8, v7, v8
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_59

    int-to-byte v8, v8

    const/16 v10, 0x76

    :try_start_33
    aget-byte v11, v7, v10
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_58

    int-to-byte v10, v11

    :try_start_34
    invoke-static {v6, v8, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    .line 2407
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_59

    const/4 v6, 0x1

    :try_start_35
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v8, v6

    const/16 v4, 0x1ed

    int-to-short v4, v4

    const/16 v6, 0x42

    aget-byte v10, v7, v6

    int-to-byte v6, v10

    const/16 v10, 0x1d

    aget-byte v11, v7, v10

    int-to-byte v10, v11

    invoke-static {v4, v6, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    aget-byte v10, v7, v29

    int-to-short v10, v10

    const/16 v12, 0x42

    aget-byte v14, v7, v12

    int-to-byte v12, v14

    const/16 v14, 0x222

    aget-byte v15, v7, v14

    int-to-byte v14, v15

    invoke-static {v10, v12, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_56

    .line 2408
    const/4 v8, 0x1

    :try_start_36
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v10, v8

    const/16 v8, 0x42

    aget-byte v11, v7, v8

    int-to-byte v8, v11

    const/16 v11, 0x1d

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    invoke-static {v4, v8, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget v11, Lcom/c/c/$$a;->getError:I

    xor-int/lit16 v12, v11, 0x2c4

    and-int/lit16 v11, v11, 0x2c4

    or-int/2addr v11, v12

    int-to-short v11, v11

    const/16 v12, 0x333

    aget-byte v12, v7, v12

    int-to-byte v12, v12

    const/16 v14, 0x2c8

    aget-byte v14, v7, v14

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    invoke-virtual {v8, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_55

    .line 2409
    const/16 v8, 0x42

    :try_start_37
    aget-byte v10, v7, v8

    int-to-byte v8, v10

    const/16 v10, 0x1d

    aget-byte v11, v7, v10

    int-to-byte v10, v11

    invoke-static {v4, v8, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_54

    const/16 v8, 0x141

    int-to-short v8, v8

    const/16 v10, 0x34c

    :try_start_38
    aget-byte v11, v7, v10
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_53

    int-to-byte v10, v11

    :try_start_39
    aget-byte v7, v7, v30

    int-to-byte v7, v7

    invoke-static {v8, v10, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_54

    .line 2412
    nop

    .line 2413
    nop

    .line 2414
    const/16 v4, 0x1a5c

    move-object/from16 v7, v33

    const/4 v6, 0x0

    const/16 v14, 0x10

    .line 2421
    :goto_40
    add-int/lit8 v8, v14, 0x6e

    add-int/lit16 v10, v14, 0x52b

    :try_start_3a
    aget-byte v10, v2, v10

    xor-int/lit8 v11, v10, 0x7e

    and-int/lit8 v10, v10, 0x7e

    const/4 v12, 0x1

    shl-int/2addr v10, v12

    add-int/2addr v11, v10

    int-to-byte v10, v11

    aput-byte v10, v2, v8

    .line 2426
    array-length v8, v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_59

    sub-int/2addr v8, v14

    const/4 v10, 0x3

    :try_start_3b
    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v11, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v11, v10

    const/4 v8, 0x0

    aput-object v2, v11, v8

    const/16 v2, 0x30c

    int-to-short v2, v2

    sget-object v8, Lcom/c/c/$$a;->setError:[B

    const/16 v10, 0x42

    aget-byte v12, v8, v10

    int-to-byte v10, v12

    const/16 v12, 0x96

    aget-byte v12, v8, v12

    int-to-byte v12, v12

    invoke-static {v2, v10, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v12, v10

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v10, v12, v15

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v10, v12, v15

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_52

    .line 2432
    :try_start_3c
    sget-object v10, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_59

    if-nez v10, :cond_32

    .line 2436
    const/16 v10, 0x10

    :try_start_3d
    new-array v11, v10, [B

    const/16 v10, -0x59

    const/4 v12, 0x0

    aput-byte v10, v11, v12

    const/16 v10, 0x35

    const/4 v12, 0x1

    aput-byte v10, v11, v12

    const/16 v10, 0x5e

    const/4 v12, 0x2

    aput-byte v10, v11, v12

    const/16 v10, -0x49

    const/4 v12, 0x3

    aput-byte v10, v11, v12

    const/16 v10, -0x46

    const/4 v12, 0x4

    aput-byte v10, v11, v12
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_16

    const/16 v10, 0x7d

    const/4 v12, 0x5

    :try_start_3e
    aput-byte v10, v11, v12
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_19

    const/4 v10, 0x6

    const/16 v12, -0x70

    :try_start_3f
    aput-byte v12, v11, v10

    const/4 v10, 0x7

    const/16 v12, -0x5c

    aput-byte v12, v11, v10

    const/16 v10, 0x8

    const/16 v12, -0xb

    aput-byte v12, v11, v10

    const/16 v10, -0x2e

    const/16 v12, 0x9

    aput-byte v10, v11, v12

    const/16 v10, 0xa

    const/16 v12, 0x15

    aput-byte v12, v11, v10

    const/16 v10, 0xb

    const/16 v12, -0x2a

    aput-byte v12, v11, v10

    const/16 v10, 0xc

    const/16 v12, -0x4c

    aput-byte v12, v11, v10

    const/16 v10, 0xd

    const/16 v12, -0x80

    aput-byte v12, v11, v10

    const/16 v10, 0xe

    const/16 v12, -0x5d

    aput-byte v12, v11, v10

    const/16 v10, 0x34

    aput-byte v10, v11, v29

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v12

    xor-int/lit8 v10, v12, 0x9

    const/16 v15, 0x9

    and-int/2addr v12, v15

    const/4 v15, 0x1

    shl-int/2addr v12, v15

    add-int/2addr v10, v12

    const v12, 0x4ee49339

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v16

    const/16 v19, 0x10

    shr-int/lit8 v15, v16, 0x10

    neg-int v15, v15

    or-int v16, v15, v12

    const/16 v28, 0x1

    shl-int/lit8 v38, v16, 0x1

    xor-int/2addr v12, v15

    sub-int v38, v38, v12

    .line 3110
    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 3112
    sget-byte v12, Lcom/c/c/$$a;->ContactlessResult:B
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_16

    move/from16 v28, v4

    move v15, v5

    :try_start_40
    sget-wide v4, Lcom/c/c/$$a;->getFinalOutcome:J

    invoke-static {v11, v12, v4, v5}, Lcom/c/c/clear;->ContactlessConfiguration([BBJ)V

    .line 3116
    invoke-static/range {v38 .. v38}, Lcom/c/c/ContactlessKernel;->$$a(I)[[B

    move-result-object v4

    .line 3119
    new-instance v5, Lcom/c/c/ContactlessConfiguration;

    invoke-direct {v5, v2, v10, v11, v4}, Lcom/c/c/ContactlessConfiguration;-><init>(Ljava/io/InputStream;I[B[[B)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_18

    .line 2436
    move-object/from16 v38, v9

    move/from16 v42, v15

    goto/16 :goto_42

    .line 240
    :catchall_18
    move-exception v0

    move-object v2, v0

    move/from16 v28, v13

    move/from16 v42, v15

    goto/16 :goto_3d

    :catchall_19
    move-exception v0

    move-object v2, v0

    move/from16 v42, v5

    move v14, v12

    move/from16 v28, v13

    :goto_41
    const/16 v10, 0x34c

    goto/16 :goto_3e

    .line 2432
    :cond_32
    move/from16 v28, v4

    move v15, v5

    .line 2443
    const v4, 0x4f4c079a    # 3.42305024E9f

    const-wide/16 v11, 0x0

    :try_start_41
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    not-int v5, v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const v5, -0x1f3e1898

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v11

    const/16 v12, 0x10

    shr-int/2addr v11, v12

    add-int/2addr v11, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_51

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    neg-int v5, v5

    or-int/lit8 v12, v5, 0x5

    const/16 v16, 0x1

    shl-int/lit8 v12, v12, 0x1

    const/16 v23, 0x5

    xor-int/lit8 v5, v5, 0x5

    sub-int/2addr v12, v5

    int-to-short v5, v12

    move-object/from16 v38, v9

    const/4 v12, 0x4

    :try_start_42
    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v12, 0x3

    aput-object v5, v9, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x2

    aput-object v5, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    const/4 v4, 0x0

    aput-object v2, v9, v4

    const/16 v2, 0xb4

    aget-byte v2, v8, v2
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_50

    neg-int v2, v2

    int-to-short v2, v2

    const/16 v4, 0x34c

    :try_start_43
    aget-byte v5, v8, v4
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_4f

    int-to-byte v4, v5

    const/16 v5, 0x52

    :try_start_44
    aget-byte v11, v8, v5

    int-to-byte v5, v11

    invoke-static {v2, v4, v5}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/c/c/$$a;->setData:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    invoke-static {v2, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x132

    aget-byte v4, v8, v4

    int-to-short v4, v4

    const/16 v5, 0x11e

    aget-byte v11, v8, v5
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_50

    int-to-byte v5, v11

    const/16 v11, 0x76

    :try_start_45
    aget-byte v12, v8, v11
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_4e

    int-to-byte v11, v12

    :try_start_46
    invoke-static {v4, v5, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v11, v5, [Ljava/lang/Class;

    aget-byte v12, v8, v29

    int-to-short v12, v12

    const/16 v25, 0x42

    aget-byte v5, v8, v25
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_50

    int-to-byte v5, v5

    move/from16 v42, v15

    const/16 v32, 0x222

    :try_start_47
    aget-byte v15, v8, v32

    int-to-byte v15, v15

    invoke-static {v12, v5, v15}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v11, v12

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v5, v11, v12

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v5, v11, v12

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v5, v11, v12

    invoke-virtual {v2, v4, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/io/InputStream;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_4d

    .line 272
    nop

    .line 2446
    :goto_42
    const/16 v2, 0x10

    int-to-long v9, v2

    .line 3600
    sget v2, Lcom/c/c/$$a;->getLastApdu:I

    const/16 v4, 0x1d

    add-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/c/c/$$a;->getInternalData:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-eqz v2, :cond_33

    .line 2446
    :cond_33
    const/4 v2, 0x1

    :try_start_48
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v4, v9

    aget-byte v2, v8, v29

    int-to-short v2, v2

    const/16 v9, 0x42

    aget-byte v10, v8, v9

    int-to-byte v9, v10

    const/16 v10, 0x222

    aget-byte v11, v8, v10

    int-to-byte v10, v11

    invoke-static {v2, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v9, 0x196

    int-to-short v9, v9

    const/16 v10, 0x136

    aget-byte v10, v8, v10

    neg-int v10, v10

    int-to-byte v10, v10

    const/16 v11, 0xf3

    aget-byte v11, v8, v11

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {v2, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_4c

    .line 2450
    if-eqz v27, :cond_34

    .line 229
    const/4 v2, 0x1

    goto :goto_43

    :cond_34
    const/4 v2, 0x0

    :goto_43
    packed-switch v2, :pswitch_data_e

    .line 2461
    move-object/from16 v43, v6

    move-object/from16 v45, v7

    move/from16 v44, v14

    const/16 v7, 0x1c8

    .line 3657
    :try_start_49
    new-instance v2, Ljava/util/zip/ZipInputStream;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_4b

    goto/16 :goto_59

    .line 2452
    :pswitch_e
    :try_start_4a
    sget-object v2, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2c

    if-nez v2, :cond_35

    move-object/from16 v4, v38

    goto :goto_44

    :cond_35
    move-object/from16 v4, v39

    :goto_44
    if-nez v2, :cond_36

    move-object/from16 v2, v40

    goto :goto_45

    :cond_36
    move-object/from16 v2, v34

    .line 3588
    :goto_45
    nop

    .line 272
    sget v9, Lcom/c/c/$$a;->getLastApdu:I

    add-int/lit8 v9, v9, 0x41

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/c/c/$$a;->getInternalData:I

    const/4 v10, 0x2

    rem-int/2addr v9, v10

    if-eqz v9, :cond_37

    .line 229
    const/4 v9, 0x1

    goto :goto_46

    :cond_37
    const/4 v9, 0x0

    :goto_46
    packed-switch v9, :pswitch_data_f

    .line 272
    :pswitch_f
    nop

    .line 3588
    const/4 v9, 0x1

    :try_start_4b
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v10, v9

    const/16 v9, 0xe8

    int-to-short v9, v9

    const/16 v11, 0x42

    aget-byte v12, v8, v11

    int-to-byte v11, v12

    aget-byte v12, v8, v26

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Class;

    move-object/from16 v43, v6

    const/16 v12, 0x42

    aget-byte v6, v8, v12

    int-to-byte v6, v6

    const/16 v12, 0x1c8

    aget-byte v8, v8, v12

    int-to-byte v8, v8

    invoke-static {v13, v6, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v15, v8

    invoke-virtual {v11, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_25

    .line 3594
    const/16 v8, 0x400

    :try_start_4c
    new-array v10, v8, [B
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_26

    move/from16 v11, v28

    .line 3596
    :goto_47
    if-lez v11, :cond_38

    .line 229
    const/4 v12, 0x1

    goto :goto_48

    :cond_38
    const/4 v12, 0x0

    :goto_48
    packed-switch v12, :pswitch_data_10

    .line 2379
    sget v12, Lcom/c/c/$$a;->getLastApdu:I

    add-int/lit8 v12, v12, 0x6

    const/4 v15, 0x1

    sub-int/2addr v12, v15

    rem-int/lit16 v15, v12, 0x80

    sput v15, Lcom/c/c/$$a;->getInternalData:I

    const/4 v15, 0x2

    rem-int/2addr v12, v15

    if-eqz v12, :cond_39

    goto :goto_49

    .line 229
    :pswitch_10
    move-object/from16 v45, v7

    move/from16 v44, v14

    goto/16 :goto_4b

    .line 3596
    :cond_39
    :goto_49
    nop

    .line 3597
    :try_start_4d
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v12
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_26

    const/4 v15, 0x3

    :try_start_4e
    new-array v8, v15, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x2

    aput-object v12, v8, v15

    const/4 v12, 0x1

    aput-object v3, v8, v12

    const/4 v12, 0x0

    aput-object v10, v8, v12

    sget-object v12, Lcom/c/c/$$a;->setError:[B

    aget-byte v15, v12, v29

    int-to-short v15, v15

    move/from16 v44, v14

    const/16 v25, 0x42

    aget-byte v14, v12, v25

    int-to-byte v14, v14

    move-object/from16 v45, v7

    const/16 v32, 0x222

    aget-byte v7, v12, v32

    int-to-byte v7, v7

    invoke-static {v15, v14, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget v14, Lcom/c/c/$$a;->getError:I

    or-int/lit16 v14, v14, 0x2a4

    int-to-short v14, v14

    const/16 v15, 0x333

    aget-byte v15, v12, v15

    int-to-byte v15, v15

    const/16 v46, 0xf3

    move/from16 v47, v11

    aget-byte v11, v12, v46

    int-to-byte v11, v11

    invoke-static {v14, v15, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v14, v15, v16

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x2

    aput-object v14, v15, v20

    invoke-virtual {v7, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_24

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3a

    .line 229
    const/4 v8, 0x0

    goto :goto_4a

    :cond_3a
    const/4 v8, 0x1

    :goto_4a
    packed-switch v8, :pswitch_data_11

    .line 2379
    const/16 v11, 0x10

    sget v8, Lcom/c/c/$$a;->getLastApdu:I

    add-int/lit8 v8, v8, 0x25

    rem-int/lit16 v14, v8, 0x80

    sput v14, Lcom/c/c/$$a;->getInternalData:I

    const/4 v14, 0x2

    rem-int/2addr v8, v14

    if-eqz v8, :cond_44

    goto/16 :goto_53

    .line 3606
    :goto_4b
    :pswitch_11
    :try_start_4f
    sget-object v5, Lcom/c/c/$$a;->setError:[B

    const/16 v7, 0x42

    aget-byte v8, v5, v7

    int-to-byte v7, v8

    aget-byte v8, v5, v26

    int-to-byte v8, v8

    invoke-static {v9, v7, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x177

    int-to-short v8, v8

    const/16 v10, 0x11e

    aget-byte v11, v5, v10

    int-to-byte v10, v11

    aget-byte v11, v5, v30

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_22

    const/16 v8, 0x74

    int-to-short v8, v8

    const/16 v10, 0x42

    :try_start_50
    aget-byte v11, v5, v10
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_21

    int-to-byte v10, v11

    const/16 v11, 0x10

    :try_start_51
    aget-byte v12, v5, v11

    int-to-byte v12, v12

    invoke-static {v8, v10, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v10, 0x261

    int-to-short v10, v10

    const/16 v12, 0x136

    aget-byte v12, v5, v12

    neg-int v12, v12

    int-to-byte v12, v12

    const/16 v14, 0xf3

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    invoke-static {v10, v12, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_20

    .line 3607
    const/16 v7, 0x42

    :try_start_52
    aget-byte v8, v5, v7

    int-to-byte v7, v8

    aget-byte v8, v5, v26

    int-to-byte v8, v8

    invoke-static {v9, v7, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x141

    int-to-short v8, v8

    const/16 v9, 0x34c

    aget-byte v10, v5, v9

    int-to-byte v9, v10

    aget-byte v10, v5, v30

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_1f

    .line 3619
    :try_start_53
    sget v6, Lcom/c/c/$$a;->getError:I

    or-int/lit16 v7, v6, 0x2a1

    int-to-short v7, v7

    xor-int/lit8 v8, v6, 0x31

    and-int/lit8 v9, v6, 0x31

    or-int/2addr v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x52

    aget-byte v10, v5, v9

    int-to-byte v9, v10

    invoke-static {v7, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 3620
    const/16 v8, 0x1d7

    int-to-short v8, v8

    and-int/lit8 v9, v8, 0x6b

    int-to-byte v9, v9

    const/16 v10, 0x2fa

    aget-byte v10, v5, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v10, v12

    const-class v9, Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v9, v10, v12

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v9, v10, v12

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3624
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_26

    .line 272
    sget v8, Lcom/c/c/$$a;->getLastApdu:I

    or-int/lit8 v10, v8, 0x57

    const/4 v12, 0x1

    shl-int/2addr v10, v12

    xor-int/lit8 v8, v8, 0x57

    sub-int/2addr v10, v8

    rem-int/lit16 v8, v10, 0x80

    sput v8, Lcom/c/c/$$a;->getInternalData:I

    const/4 v8, 0x2

    rem-int/2addr v10, v8

    if-eqz v10, :cond_3b

    .line 3624
    :cond_3b
    const/16 v8, 0x42

    :try_start_54
    aget-byte v10, v5, v8

    int-to-byte v8, v10

    const/16 v10, 0x1c8

    aget-byte v12, v5, v10

    int-to-byte v10, v12

    invoke-static {v13, v8, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v10, 0x126

    int-to-short v10, v10

    const/16 v12, 0x11e

    aget-byte v14, v5, v12

    int-to-byte v12, v14

    const/16 v14, 0xb

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    invoke-static {v10, v12, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1e

    const/4 v12, 0x0

    :try_start_55
    aput-object v8, v9, v12
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_26

    const/16 v8, 0x42

    :try_start_56
    aget-byte v12, v5, v8

    int-to-byte v8, v12

    const/16 v12, 0x1c8

    aget-byte v14, v5, v12

    int-to-byte v12, v14

    invoke-static {v13, v8, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v12, 0x11e

    aget-byte v14, v5, v12

    int-to-byte v12, v14

    const/16 v14, 0xb

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    invoke-static {v10, v12, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1d

    const/4 v10, 0x1

    :try_start_57
    aput-object v8, v9, v10

    .line 3627
    const/4 v8, 0x2

    aput-object v3, v9, v8

    .line 3624
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_26

    .line 3633
    const/16 v8, 0x42

    :try_start_58
    aget-byte v9, v5, v8

    int-to-byte v8, v9

    const/16 v9, 0x1c8

    aget-byte v10, v5, v9

    int-to-byte v9, v10

    invoke-static {v13, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x17c

    int-to-short v9, v9

    xor-int/lit8 v10, v6, 0x31

    and-int/lit8 v12, v6, 0x31

    or-int/2addr v10, v12

    int-to-byte v10, v10

    const/16 v12, 0x18e

    aget-byte v12, v5, v12

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1c

    .line 3634
    nop

    .line 229
    sget v4, Lcom/c/c/$$a;->getLastApdu:I

    or-int/lit8 v8, v4, 0x5b

    const/4 v10, 0x1

    shl-int/2addr v8, v10

    xor-int/lit8 v4, v4, 0x5b

    sub-int/2addr v8, v4

    rem-int/lit16 v4, v8, 0x80

    sput v4, Lcom/c/c/$$a;->getInternalData:I

    const/4 v4, 0x2

    rem-int/2addr v8, v4

    if-eqz v8, :cond_3c

    .line 3634
    :cond_3c
    const/16 v4, 0x42

    :try_start_59
    aget-byte v8, v5, v4

    int-to-byte v4, v8

    const/16 v8, 0x1c8

    aget-byte v10, v5, v8

    int-to-byte v8, v10

    invoke-static {v13, v4, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    or-int/lit8 v6, v6, 0x31

    int-to-byte v6, v6

    const/16 v8, 0x18e

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    invoke-static {v9, v6, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1b

    .line 3639
    :try_start_5a
    sget-object v2, Lcom/c/c/$$a;->setData:Ljava/lang/Object;

    if-nez v2, :cond_3d

    .line 229
    const/16 v2, 0x3e

    goto :goto_4c

    :cond_3d
    const/16 v2, 0x51

    :goto_4c
    packed-switch v2, :pswitch_data_12

    goto :goto_4d

    .line 3641
    :pswitch_12
    const-class v2, Lcom/c/c/$$a;
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2c

    :try_start_5b
    const-class v4, Ljava/lang/Class;

    const/16 v6, 0x193

    int-to-short v6, v6

    const/16 v8, 0x11e

    aget-byte v9, v5, v8

    int-to-byte v8, v9

    const/4 v9, 0x5

    aget-byte v5, v5, v9

    int-to-byte v5, v5

    invoke-static {v6, v8, v5}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1a

    :try_start_5c
    sput-object v2, Lcom/c/c/$$a;->setData:Ljava/lang/Object;

    .line 272
    goto :goto_4d

    .line 3641
    :catchall_1a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3e

    throw v4

    :cond_3e
    throw v2

    .line 3644
    :goto_4d
    nop

    .line 2452
    move/from16 v28, v13

    const/4 v13, 0x3

    goto/16 :goto_62

    .line 3634
    :catchall_1b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3f

    :goto_4e
    throw v4

    :cond_3f
    throw v2

    .line 3633
    :catchall_1c
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_40

    :goto_4f
    throw v4

    :cond_40
    throw v2
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_2c

    .line 3624
    :catchall_1d
    move-exception v0

    move-object v5, v0

    :try_start_5d
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_41

    :goto_50
    throw v6

    :cond_41
    throw v5

    :catchall_1e
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_41

    goto :goto_50

    .line 3607
    :catchall_1f
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_42

    throw v6

    :cond_42
    throw v5

    .line 3606
    :catchall_20
    move-exception v0

    goto :goto_51

    :catchall_21
    move-exception v0

    const/16 v11, 0x10

    :goto_51
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_43

    :goto_52
    throw v6

    :cond_43
    throw v5

    :catchall_22
    move-exception v0

    const/16 v11, 0x10

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_26

    if-eqz v6, :cond_43

    goto :goto_52

    .line 229
    :goto_53
    const/4 v8, 0x1

    goto :goto_54

    :cond_44
    const/4 v8, 0x0

    :goto_54
    packed-switch v8, :pswitch_data_13

    .line 3600
    const/4 v8, 0x1

    goto :goto_55

    :pswitch_13
    const/4 v8, 0x0

    :goto_55
    const/4 v14, 0x3

    :try_start_5e
    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2

    aput-object v14, v15, v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v15, v14

    const/4 v8, 0x0

    aput-object v10, v15, v8

    const/16 v8, 0x42

    aget-byte v14, v12, v8

    int-to-byte v8, v14

    aget-byte v14, v12, v26

    int-to-byte v14, v14

    invoke-static {v9, v8, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v14, 0x2bc

    int-to-short v14, v14

    const/16 v19, 0x127

    aget-byte v11, v12, v19

    neg-int v11, v11

    int-to-byte v11, v11

    aget-byte v12, v12, v30

    int-to-byte v12, v12

    invoke-static {v14, v11, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v12, v14, v16

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v12, v14, v19

    invoke-virtual {v8, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_23

    .line 3601
    neg-int v7, v7

    and-int v8, v47, v7

    or-int v7, v47, v7

    add-int v11, v8, v7

    move/from16 v14, v44

    move-object/from16 v7, v45

    const/16 v8, 0x400

    goto/16 :goto_47

    .line 3600
    :catchall_23
    move-exception v0

    move-object v5, v0

    :try_start_5f
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_45

    throw v6

    :cond_45
    throw v5

    .line 3597
    :catchall_24
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_46

    throw v6

    :cond_46
    throw v5
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_26

    .line 3588
    :catchall_25
    move-exception v0

    move-object v5, v0

    :try_start_60
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_47

    throw v6

    :cond_47
    throw v5
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_7
    .catchall {:try_start_60 .. :try_end_60} :catchall_26

    .line 3633
    :catchall_26
    move-exception v0

    move-object v5, v0

    goto/16 :goto_56

    .line 3590
    :catch_7
    move-exception v0

    move-object v5, v0

    .line 3592
    :try_start_61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x238

    int-to-short v7, v7

    sget-object v8, Lcom/c/c/$$a;->setError:[B

    const/16 v9, 0x8f

    aget-byte v9, v8, v9

    int-to-byte v9, v9

    aget-byte v10, v8, v30

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/c/c/$$a;->getError:I

    or-int/lit16 v7, v7, 0x2a1

    int-to-short v7, v7

    aget-byte v9, v8, v29

    int-to-byte v9, v9

    const/16 v10, 0x246

    aget-byte v10, v8, v10

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_26

    const/4 v7, 0x2

    :try_start_62
    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v9, v7

    const/4 v5, 0x0

    aput-object v6, v9, v5

    const/16 v5, 0xc0

    int-to-short v5, v5

    const/16 v6, 0x42

    aget-byte v7, v8, v6

    int-to-byte v6, v7

    const/16 v7, 0x222

    aget-byte v8, v8, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const-class v6, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_27

    :catchall_27
    move-exception v0

    move-object v5, v0

    :try_start_63
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_48

    throw v6

    :cond_48
    throw v5
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_26

    .line 3633
    :goto_56
    :try_start_64
    sget-object v6, Lcom/c/c/$$a;->setError:[B

    const/16 v7, 0x42

    aget-byte v8, v6, v7
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_2b

    int-to-byte v7, v8

    const/16 v8, 0x1c8

    :try_start_65
    aget-byte v9, v6, v8
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2a

    int-to-byte v8, v9

    :try_start_66
    invoke-static {v13, v7, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x17c

    int-to-short v8, v8

    sget v9, Lcom/c/c/$$a;->getError:I

    xor-int/lit8 v10, v9, 0x31

    and-int/lit8 v11, v9, 0x31

    or-int/2addr v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x18e

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_2b

    .line 3634
    nop

    .line 272
    sget v4, Lcom/c/c/$$a;->getInternalData:I

    or-int/lit8 v7, v4, 0x71

    const/4 v10, 0x1

    shl-int/2addr v7, v10

    xor-int/lit8 v4, v4, 0x71

    sub-int/2addr v7, v4

    rem-int/lit16 v4, v7, 0x80

    sput v4, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v4, 0x2

    rem-int/2addr v7, v4

    if-nez v7, :cond_49

    .line 3634
    :cond_49
    const/16 v4, 0x42

    :try_start_67
    aget-byte v7, v6, v4
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_29

    int-to-byte v4, v7

    const/16 v7, 0x1c8

    :try_start_68
    aget-byte v10, v6, v7

    int-to-byte v10, v10

    invoke-static {v13, v4, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    xor-int/lit8 v10, v9, 0x31

    and-int/lit8 v9, v9, 0x31

    or-int/2addr v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x18e

    aget-byte v6, v6, v10

    int-to-byte v6, v6

    invoke-static {v8, v9, v6}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_28

    .line 3635
    :try_start_69
    throw v5

    .line 3634
    :catchall_28
    move-exception v0

    goto :goto_57

    :catchall_29
    move-exception v0

    const/16 v7, 0x1c8

    :goto_57
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3f

    goto/16 :goto_4e

    .line 3633
    :catchall_2a
    move-exception v0

    move v7, v8

    goto :goto_58

    :catchall_2b
    move-exception v0

    const/16 v7, 0x1c8

    :goto_58
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2c

    if-eqz v4, :cond_40

    goto/16 :goto_4f

    .line 240
    :catchall_2c
    move-exception v0

    move-object v2, v0

    goto/16 :goto_3c

    .line 3657
    :goto_59
    :try_start_6a
    invoke-direct {v2, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_4b

    .line 3660
    const/4 v5, 0x1

    :try_start_6b
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    sget v2, Lcom/c/c/$$a;->getError:I

    xor-int/lit16 v5, v2, 0x365

    and-int/lit16 v2, v2, 0x365

    or-int/2addr v2, v5

    int-to-short v2, v2

    const/16 v5, 0x42

    aget-byte v9, v8, v5

    int-to-byte v5, v9

    const/16 v9, 0x2c

    aget-byte v9, v8, v9

    int-to-byte v9, v9

    invoke-static {v2, v5, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Class;

    aget-byte v5, v8, v29

    int-to-short v5, v5

    const/16 v10, 0x42

    aget-byte v11, v8, v10

    int-to-byte v10, v11

    const/16 v11, 0x222

    aget-byte v12, v8, v11

    int-to-byte v11, v12

    invoke-static {v5, v10, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_4a

    const/16 v5, 0x1d1

    int-to-short v5, v5

    const/16 v6, 0x42

    :try_start_6c
    aget-byte v9, v8, v6

    int-to-byte v6, v9

    const/16 v9, 0x9

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_49

    .line 3663
    const/16 v8, 0x400

    :try_start_6d
    new-array v8, v8, [B
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_4b

    .line 3664
    nop

    .line 272
    const/4 v9, 0x0

    .line 3666
    :goto_5a
    const/4 v10, 0x1

    :try_start_6e
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    sget v10, Lcom/c/c/$$a;->getError:I

    xor-int/lit16 v12, v10, 0x365

    and-int/lit16 v14, v10, 0x365

    or-int/2addr v12, v14

    int-to-short v12, v12

    sget-object v14, Lcom/c/c/$$a;->setError:[B

    const/16 v15, 0x42

    aget-byte v7, v14, v15

    int-to-byte v7, v7

    const/16 v15, 0x2c

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    invoke-static {v12, v7, v15}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    or-int/lit16 v12, v10, 0x2a4

    int-to-short v12, v12

    const/16 v15, 0x333

    aget-byte v15, v14, v15
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_48

    int-to-byte v15, v15

    const/16 v19, 0xf3

    move/from16 v28, v13

    :try_start_6f
    aget-byte v13, v14, v19

    int-to-byte v13, v13

    invoke-static {v12, v15, v13}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v7, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_47

    if-lez v7, :cond_4d

    .line 3600
    sget v11, Lcom/c/c/$$a;->getInternalData:I

    xor-int/lit8 v12, v11, 0x6b

    and-int/lit8 v11, v11, 0x6b

    const/4 v13, 0x1

    shl-int/2addr v11, v13

    add-int/2addr v12, v11

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v11, 0x2

    rem-int/2addr v12, v11

    if-nez v12, :cond_4a

    .line 3666
    :cond_4a
    int-to-long v11, v9

    .line 3667
    :try_start_70
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v47
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_30

    cmp-long v11, v11, v47

    if-gez v11, :cond_4c

    .line 3669
    const/4 v10, 0x3

    :try_start_71
    new-array v11, v10, [Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_2f

    :try_start_72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v10, 0x1

    aput-object v3, v11, v10

    const/4 v10, 0x0

    aput-object v8, v11, v10

    const/16 v10, 0x42

    aget-byte v12, v14, v10

    int-to-byte v10, v12

    const/16 v12, 0x9

    aget-byte v13, v14, v12

    int-to-byte v12, v13

    invoke-static {v5, v10, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v12, 0x2bc

    int-to-short v12, v12

    const/16 v13, 0x127

    aget-byte v13, v14, v13

    neg-int v13, v13

    int-to-byte v13, v13

    aget-byte v14, v14, v30

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v12
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_2e

    const/4 v13, 0x3

    :try_start_73
    new-array v14, v13, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v15, v14, v19

    invoke-virtual {v10, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_2d

    .line 3670
    not-int v7, v7

    sub-int/2addr v9, v7

    const/4 v7, 0x1

    sub-int/2addr v9, v7

    move/from16 v13, v28

    const/16 v7, 0x1c8

    goto/16 :goto_5a

    .line 3669
    :catchall_2d
    move-exception v0

    goto :goto_5b

    :catchall_2e
    move-exception v0

    const/4 v13, 0x3

    goto :goto_5b

    :catchall_2f
    move-exception v0

    move v13, v10

    :goto_5b
    move-object v2, v0

    :try_start_74
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4b

    throw v4

    :cond_4b
    throw v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_30

    .line 3667
    :cond_4c
    const/4 v13, 0x3

    goto :goto_5c

    .line 240
    :catchall_30
    move-exception v0

    move-object v2, v0

    goto/16 :goto_3d

    .line 3666
    :cond_4d
    const/4 v13, 0x3

    .line 3672
    :goto_5c
    const/16 v4, 0x42

    :try_start_75
    aget-byte v7, v14, v4

    int-to-byte v4, v7

    const/16 v7, 0x9

    aget-byte v8, v14, v7

    int-to-byte v7, v8

    invoke-static {v5, v4, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_46

    xor-int/lit8 v7, v10, 0x55

    and-int/lit8 v8, v10, 0x55

    or-int/2addr v7, v8

    int-to-short v7, v7

    and-int/lit16 v8, v7, 0x1eb

    int-to-byte v8, v8

    const/16 v9, 0x76

    :try_start_76
    aget-byte v11, v14, v9
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_45

    int-to-byte v9, v11

    :try_start_77
    invoke-static {v7, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_46

    .line 3676
    nop

    .line 229
    sget v7, Lcom/c/c/$$a;->getLastApdu:I

    xor-int/lit8 v8, v7, 0x29

    and-int/lit8 v7, v7, 0x29

    const/4 v9, 0x1

    shl-int/2addr v7, v9

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/c/c/$$a;->getInternalData:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    if-eqz v8, :cond_4e

    .line 3676
    :cond_4e
    xor-int/lit16 v7, v10, 0x365

    and-int/lit16 v8, v10, 0x365

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x42

    :try_start_78
    aget-byte v9, v14, v8

    int-to-byte v8, v9

    const/16 v9, 0x2c

    aget-byte v9, v14, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x141

    int-to-short v8, v8

    const/16 v9, 0x34c

    aget-byte v10, v14, v9

    int-to-byte v9, v10

    aget-byte v10, v14, v30

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_31

    goto :goto_5d

    :catchall_31
    move-exception v0

    move-object v2, v0

    :try_start_79
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_4f

    throw v7

    :cond_4f
    throw v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_79} :catch_8
    .catchall {:try_start_79 .. :try_end_79} :catchall_30

    :catch_8
    move-exception v0

    .line 3682
    :goto_5d
    :try_start_7a
    sget-object v2, Lcom/c/c/$$a;->setError:[B

    const/16 v7, 0x42

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x9

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v5, v7, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x141

    int-to-short v7, v7

    const/16 v8, 0x34c

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    aget-byte v2, v2, v30

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_32

    goto :goto_5e

    :catchall_32
    move-exception v0

    move-object v2, v0

    :try_start_7b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_50

    throw v5

    :cond_50
    throw v2
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7b} :catch_9
    .catchall {:try_start_7b .. :try_end_7b} :catchall_30

    :catch_9
    move-exception v0

    .line 3686
    :goto_5e
    :try_start_7c
    const-class v2, Lcom/c/c/$$a;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_44

    :try_start_7d
    const-class v5, Ljava/lang/Class;

    const/16 v6, 0x193

    int-to-short v6, v6

    sget-object v7, Lcom/c/c/$$a;->setError:[B

    const/16 v8, 0x11e

    aget-byte v9, v7, v8
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_43

    int-to-byte v8, v9

    const/4 v9, 0x5

    :try_start_7e
    aget-byte v10, v7, v9
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_42

    int-to-byte v9, v10

    :try_start_7f
    invoke-static {v6, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_43

    .line 3691
    const/16 v5, 0x2f1

    int-to-short v5, v5

    :try_start_80
    sget v6, Lcom/c/c/$$a;->getError:I

    xor-int/lit8 v8, v6, 0x31

    and-int/lit8 v9, v6, 0x31

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aget-byte v9, v7, v29

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3692
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const/16 v8, 0x335

    int-to-short v8, v8

    const/16 v10, 0x42

    aget-byte v11, v7, v10

    int-to-byte v10, v11

    const/16 v11, 0x222

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    invoke-static {v8, v10, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/16 v10, 0x230

    int-to-short v10, v10

    const/16 v11, 0x42

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    const/16 v12, 0x52

    aget-byte v14, v7, v12

    int-to-byte v12, v14

    invoke-static {v10, v11, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 3694
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_44

    :try_start_81
    new-array v9, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    const/16 v4, 0x42

    aget-byte v11, v7, v4

    int-to-byte v4, v11

    const/16 v11, 0x222

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    invoke-static {v8, v4, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x13

    aget-byte v8, v7, v8

    neg-int v8, v8

    int-to-short v8, v8

    const/16 v11, 0x127

    aget-byte v11, v7, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v12, 0xf3

    aget-byte v12, v7, v12

    int-to-byte v12, v12

    invoke-static {v8, v11, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v12, v11

    invoke-virtual {v4, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_41

    :try_start_82
    aput-object v4, v10, v11

    const/4 v4, 0x1

    aput-object v2, v10, v4

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_44

    .line 3707
    or-int/lit16 v5, v6, 0x284

    int-to-short v5, v5

    xor-int/lit8 v8, v6, 0x31

    and-int/lit8 v9, v6, 0x31

    or-int/2addr v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x5d

    :try_start_83
    aget-byte v9, v7, v9

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3708
    xor-int/lit16 v8, v6, 0xa4

    and-int/lit16 v6, v6, 0xa4

    or-int/2addr v6, v8

    int-to-short v6, v6

    const/4 v8, 0x2

    aget-byte v9, v7, v8

    int-to-byte v8, v9

    const/16 v9, 0x8f

    aget-byte v9, v7, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 3709
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3711
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3712
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3714
    const/16 v9, 0xd5

    aget-byte v9, v7, v9

    int-to-short v9, v9

    const/16 v10, 0x88

    aget-byte v10, v7, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    int-to-byte v10, v10

    aget-byte v11, v7, v26

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 3715
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3717
    const/16 v10, 0x159

    int-to-short v10, v10

    const/16 v11, 0x88

    aget-byte v11, v7, v11

    const/4 v12, 0x0

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    int-to-byte v11, v11

    const/16 v12, 0x84

    aget-byte v7, v7, v12

    int-to-byte v7, v7

    invoke-static {v10, v11, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3718
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3720
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3721
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3723
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3726
    new-instance v10, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3728
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3729
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 3731
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    .line 3732
    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_d
    .catchall {:try_start_83 .. :try_end_83} :catchall_44

    .line 3733
    const/4 v12, 0x0

    :goto_5f
    if-ge v12, v11, :cond_51

    .line 3735
    :try_start_84
    invoke-static {v6, v12}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v12, v14}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_a
    .catchall {:try_start_84 .. :try_end_84} :catchall_30

    .line 3733
    add-int/lit8 v12, v12, 0x1

    goto :goto_5f

    .line 3741
    :catch_a
    move-exception v0

    move-object v4, v0

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    goto/16 :goto_6c

    .line 3738
    :cond_51
    :try_start_85
    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_d
    .catchall {:try_start_85 .. :try_end_85} :catchall_44

    .line 3749
    :try_start_86
    sget-object v2, Lcom/c/c/$$a;->setData:Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_44

    if-nez v2, :cond_52

    .line 229
    const/4 v2, 0x1

    goto :goto_60

    :cond_52
    const/4 v2, 0x0

    :goto_60
    packed-switch v2, :pswitch_data_14

    goto :goto_61

    .line 3751
    :pswitch_14
    :try_start_87
    sput-object v4, Lcom/c/c/$$a;->setData:Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_30

    .line 3754
    :goto_61
    nop

    .line 2461
    move-object v7, v4

    .line 2467
    :goto_62
    if-eqz v27, :cond_56

    .line 2471
    :try_start_88
    sget v2, Lcom/c/c/$$a;->getError:I

    or-int/lit16 v4, v2, 0x2a1

    int-to-short v4, v4

    xor-int/lit8 v5, v2, 0x31

    and-int/lit8 v2, v2, 0x31

    or-int/2addr v2, v5

    int-to-byte v2, v2

    sget-object v5, Lcom/c/c/$$a;->setError:[B

    const/16 v6, 0x52

    aget-byte v8, v5, v6

    int-to-byte v6, v8

    invoke-static {v4, v2, v6}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2472
    const/16 v4, 0x55

    int-to-short v4, v4

    const/16 v6, 0x57

    aget-byte v6, v5, v6

    xor-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    and-int/2addr v6, v9

    shl-int/2addr v6, v9

    add-int/2addr v8, v6

    int-to-byte v6, v8

    const/16 v8, 0x2c8

    aget-byte v8, v5, v8

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v4, v6, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/16 v6, 0x230

    int-to-short v6, v6

    const/16 v9, 0x42

    aget-byte v10, v5, v9

    int-to-byte v9, v10

    const/16 v10, 0x52

    aget-byte v11, v5, v10

    int-to-byte v10, v11

    invoke-static {v6, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2475
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v45, v8, v6

    const-class v6, Lcom/c/c/$$a;
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_37

    .line 229
    sget v9, Lcom/c/c/$$a;->getInternalData:I

    add-int/lit8 v9, v9, 0x54

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v10, 0x2

    rem-int/2addr v9, v10

    if-nez v9, :cond_53

    .line 2475
    :cond_53
    :try_start_89
    const-class v9, Ljava/lang/Class;
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_36

    const/16 v10, 0x193

    int-to-short v10, v10

    const/16 v11, 0x11e

    :try_start_8a
    aget-byte v12, v5, v11
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_35

    int-to-byte v12, v12

    const/4 v14, 0x5

    :try_start_8b
    aget-byte v15, v5, v14

    int-to-byte v15, v15

    invoke-static {v10, v12, v15}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_34

    const/4 v9, 0x1

    :try_start_8c
    aput-object v6, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_38

    .line 2484
    if-eqz v4, :cond_54

    .line 229
    const/4 v6, 0x1

    goto :goto_63

    :cond_54
    const/4 v6, 0x0

    :goto_63
    packed-switch v6, :pswitch_data_15

    .line 2486
    const/16 v6, 0x141

    int-to-short v6, v6

    const/16 v8, 0x34c

    :try_start_8d
    aget-byte v9, v5, v8
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_33

    int-to-byte v8, v9

    :try_start_8e
    aget-byte v5, v5, v30

    int-to-byte v5, v5

    invoke-static {v6, v8, v5}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2487
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_15
    move-object v2, v4

    const/16 v6, 0x52

    goto/16 :goto_67

    .line 240
    :catchall_33
    move-exception v0

    move-object v2, v0

    move v10, v8

    goto/16 :goto_3e

    .line 2475
    :catchall_34
    move-exception v0

    goto :goto_65

    :catchall_35
    move-exception v0

    goto :goto_64

    :catchall_36
    move-exception v0

    const/16 v11, 0x11e

    :goto_64
    const/4 v14, 0x5

    :goto_65
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_55

    throw v4

    :cond_55
    throw v2
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_38

    .line 240
    :catchall_37
    move-exception v0

    const/4 v14, 0x5

    :goto_66
    move-object v2, v0

    goto/16 :goto_41

    .line 2467
    :cond_56
    const/16 v11, 0x11e

    const/4 v14, 0x5

    .line 2494
    const/16 v2, 0x230

    int-to-short v2, v2

    :try_start_8f
    sget-object v4, Lcom/c/c/$$a;->setError:[B

    const/16 v5, 0x42

    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0x52

    aget-byte v8, v4, v6

    int-to-byte v8, v8

    invoke-static {v2, v5, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2495
    const/16 v5, 0x55

    int-to-short v5, v5

    const/16 v8, 0x57

    aget-byte v8, v4, v8

    and-int/lit8 v9, v8, 0x1

    const/4 v10, 0x1

    or-int/2addr v8, v10

    add-int/2addr v9, v8

    int-to-byte v8, v9

    const/16 v9, 0x2c8

    aget-byte v4, v4, v9

    neg-int v4, v4

    int-to-byte v4, v4

    invoke-static {v5, v8, v4}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_3f

    .line 2499
    const/4 v4, 0x1

    :try_start_90
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v45, v5, v9

    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_90
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_90 .. :try_end_90} :catch_b
    .catchall {:try_start_90 .. :try_end_90} :catchall_38

    goto :goto_67

    .line 240
    :catchall_38
    move-exception v0

    goto :goto_66

    .line 2502
    :catch_b
    move-exception v0

    move-object v2, v0

    .line 2506
    :try_start_91
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_91
    .catch Ljava/lang/ClassNotFoundException; {:try_start_91 .. :try_end_91} :catch_c
    .catchall {:try_start_91 .. :try_end_91} :catchall_38

    .line 2508
    :catch_c
    move-exception v0

    .line 2510
    const/4 v2, 0x0

    .line 2515
    :goto_67
    if-eqz v2, :cond_5f

    .line 3600
    sget v4, Lcom/c/c/$$a;->getLastApdu:I

    and-int/lit8 v5, v4, 0x45

    or-int/lit8 v4, v4, 0x45

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/c/c/$$a;->getInternalData:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    if-eqz v5, :cond_57

    .line 2517
    :cond_57
    :try_start_92
    check-cast v2, Ljava/lang/Class;

    .line 2522
    sget v4, Lcom/c/c/$$a;->getError:I

    or-int/lit16 v5, v4, 0x254

    int-to-short v5, v5

    sget-object v8, Lcom/c/c/$$a;->setError:[B
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_3f

    const/16 v9, 0x34c

    :try_start_93
    aget-byte v10, v8, v9
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_3e

    int-to-byte v9, v10

    const/16 v10, 0xd5

    :try_start_94
    aget-byte v10, v8, v10

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    .line 2527
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v10, v12

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v9, v10, v12

    .line 2528
    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 2529
    invoke-virtual {v9, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2530
    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v12, v10

    if-nez v27, :cond_58

    .line 229
    const/16 v7, 0x5a

    goto :goto_68

    :cond_58
    const/16 v7, 0x27

    :goto_68
    packed-switch v7, :pswitch_data_16

    .line 2530
    const/4 v7, 0x1

    goto :goto_69

    :pswitch_16
    const/4 v7, 0x0

    :goto_69
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v12, v10

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sput-object v7, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    .line 2532
    nop

    .line 2533
    nop

    .line 2539
    const/16 v9, 0x53c

    new-array v9, v9, [B

    .line 2540
    const-class v10, Lcom/c/c/$$a;

    const/16 v12, 0x1a0

    int-to-short v12, v12

    const/16 v15, 0x16

    aget-byte v15, v8, v15
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_3f

    int-to-byte v15, v15

    const/16 v18, 0x76

    :try_start_95
    aget-byte v6, v8, v18

    int-to-byte v6, v6

    invoke-static {v12, v15, v6}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    .line 2541
    invoke-virtual {v10, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_3d

    const/4 v10, 0x1

    :try_start_96
    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v12, v10

    const/16 v6, 0x1ed

    int-to-short v6, v6

    const/16 v10, 0x42

    aget-byte v15, v8, v10

    int-to-byte v10, v15

    const/16 v15, 0x1d

    aget-byte v7, v8, v15

    int-to-byte v7, v7

    invoke-static {v6, v10, v7}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/lang/Class;

    aget-byte v10, v8, v29

    int-to-short v10, v10

    const/16 v23, 0x42

    aget-byte v11, v8, v23

    int-to-byte v11, v11

    const/16 v23, 0x222

    aget-byte v13, v8, v23

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v15, v11

    invoke-virtual {v7, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_3c

    .line 2543
    nop

    .line 229
    sget v10, Lcom/c/c/$$a;->getInternalData:I

    xor-int/lit8 v11, v10, 0x37

    and-int/lit8 v10, v10, 0x37

    const/4 v12, 0x1

    shl-int/2addr v10, v12

    add-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v12, 0x2

    rem-int/2addr v11, v12

    if-nez v11, :cond_59

    .line 272
    :cond_59
    nop

    .line 3600
    xor-int/lit8 v11, v10, 0x2f

    and-int/lit8 v10, v10, 0x2f

    const/4 v12, 0x1

    shl-int/2addr v10, v12

    add-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/c/c/$$a;->getInternalData:I

    const/4 v10, 0x2

    rem-int/2addr v11, v10

    if-eqz v11, :cond_5a

    .line 2543
    :cond_5a
    const/4 v10, 0x1

    :try_start_97
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v11, v10

    const/16 v10, 0x42

    aget-byte v12, v8, v10

    int-to-byte v10, v12

    const/16 v12, 0x1d

    aget-byte v13, v8, v12

    int-to-byte v12, v13

    invoke-static {v6, v10, v12}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    or-int/lit16 v4, v4, 0x2c4

    int-to-short v4, v4

    const/16 v12, 0x333

    aget-byte v12, v8, v12

    int-to-byte v12, v12

    const/16 v13, 0x2c8

    aget-byte v13, v8, v13

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v4, v12, v13}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v10, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_3b

    .line 2544
    nop

    .line 229
    sget v4, Lcom/c/c/$$a;->getInternalData:I

    or-int/lit8 v10, v4, 0x67

    const/4 v11, 0x1

    shl-int/2addr v10, v11

    xor-int/lit8 v4, v4, 0x67

    sub-int/2addr v10, v4

    rem-int/lit16 v4, v10, 0x80

    sput v4, Lcom/c/c/$$a;->getLastApdu:I

    const/4 v4, 0x2

    rem-int/2addr v10, v4

    if-nez v10, :cond_5b

    .line 2544
    :cond_5b
    const/16 v4, 0x42

    :try_start_98
    aget-byte v10, v8, v4

    int-to-byte v4, v10

    const/16 v10, 0x1d

    aget-byte v11, v8, v10

    int-to-byte v10, v11

    invoke-static {v6, v4, v10}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_3a

    const/16 v6, 0x141

    int-to-short v6, v6

    const/16 v10, 0x34c

    :try_start_99
    aget-byte v11, v8, v10

    int-to-byte v11, v11

    aget-byte v8, v8, v30

    int-to-byte v8, v8

    invoke-static {v6, v11, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_39

    .line 2548
    :try_start_9a
    invoke-static/range {v44 .. v44}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2556
    move-object v6, v2

    move v14, v4

    move-object v7, v5

    move-object v2, v9

    move/from16 v13, v28

    move-object/from16 v9, v38

    move/from16 v5, v42

    const/16 v4, 0x519

    goto/16 :goto_40

    .line 2544
    :catchall_39
    move-exception v0

    goto :goto_6a

    :catchall_3a
    move-exception v0

    const/16 v10, 0x34c

    :goto_6a
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5c

    throw v4

    :cond_5c
    throw v2

    .line 2543
    :catchall_3b
    move-exception v0

    const/16 v10, 0x34c

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5d

    throw v4

    :cond_5d
    throw v2

    .line 2541
    :catchall_3c
    move-exception v0

    const/16 v10, 0x34c

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5e

    throw v4

    :cond_5e
    throw v2

    .line 240
    :catchall_3d
    move-exception v0

    const/16 v10, 0x34c

    goto/16 :goto_78

    :catchall_3e
    move-exception v0

    move v10, v9

    goto/16 :goto_77

    .line 2515
    :cond_5f
    const/16 v10, 0x34c

    const/16 v18, 0x76

    .line 2553
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 2554
    move-object/from16 v2, v43

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2555
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2556
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v5, v4

    if-nez v27, :cond_60

    const/4 v4, 0x1

    goto :goto_6b

    :cond_60
    const/4 v4, 0x0

    :goto_6b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    .line 272
    nop

    .line 238
    const/16 v2, 0x42

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v16, 0x1

    goto/16 :goto_80

    .line 240
    :catchall_3f
    move-exception v0

    const/16 v10, 0x34c

    goto/16 :goto_77

    .line 3741
    :catch_d
    move-exception v0

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v4, v0

    .line 3745
    :goto_6c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x234

    int-to-short v6, v6

    sget-object v7, Lcom/c/c/$$a;->setError:[B

    const/16 v8, 0x8f

    aget-byte v8, v7, v8

    int-to-byte v8, v8

    aget-byte v9, v7, v30

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/c/c/$$a;->getError:I

    or-int/lit16 v5, v5, 0x2a1

    int-to-short v5, v5

    aget-byte v6, v7, v29

    int-to-byte v6, v6

    const/16 v8, 0x246

    aget-byte v8, v7, v8

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_57

    const/4 v5, 0x2

    :try_start_9b
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const/16 v2, 0xc0

    int-to-short v2, v2

    const/16 v4, 0x42

    aget-byte v5, v7, v4

    int-to-byte v4, v5

    const/16 v5, 0x222

    aget-byte v7, v7, v5

    int-to-byte v5, v7

    invoke-static {v2, v4, v5}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const-class v4, Ljava/lang/Throwable;

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_40

    :catchall_40
    move-exception v0

    move-object v2, v0

    :try_start_9c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_61

    throw v4

    :cond_61
    throw v2

    .line 3694
    :catchall_41
    move-exception v0

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_62

    throw v4

    :cond_62
    throw v2

    .line 3686
    :catchall_42
    move-exception v0

    move v14, v9

    const/16 v10, 0x34c

    goto :goto_6d

    :catchall_43
    move-exception v0

    const/16 v10, 0x34c

    const/4 v14, 0x5

    :goto_6d
    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_63

    throw v4

    :cond_63
    throw v2

    .line 240
    :catchall_44
    move-exception v0

    goto/16 :goto_76

    .line 3672
    :catchall_45
    move-exception v0

    move/from16 v18, v9

    const/16 v10, 0x34c

    const/4 v14, 0x5

    goto :goto_6e

    :catchall_46
    move-exception v0

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    :goto_6e
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_64

    throw v4

    :cond_64
    throw v2

    .line 3666
    :catchall_47
    move-exception v0

    goto :goto_6f

    :catchall_48
    move-exception v0

    move/from16 v28, v13

    :goto_6f
    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_65

    throw v4

    :cond_65
    throw v2

    .line 3660
    :catchall_49
    move-exception v0

    move/from16 v28, v13

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_66

    :goto_70
    throw v4

    :cond_66
    throw v2

    :catchall_4a
    move-exception v0

    move/from16 v28, v13

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_66

    goto :goto_70

    .line 240
    :catchall_4b
    move-exception v0

    goto/16 :goto_75

    .line 2446
    :catchall_4c
    move-exception v0

    move/from16 v28, v13

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_67

    throw v4

    :cond_67
    throw v2

    .line 2443
    :catchall_4d
    move-exception v0

    move/from16 v28, v13

    goto :goto_71

    :catchall_4e
    move-exception v0

    move/from16 v18, v11

    move/from16 v28, v13

    move/from16 v42, v15

    const/16 v10, 0x34c

    const/4 v14, 0x5

    goto :goto_73

    :catchall_4f
    move-exception v0

    move v10, v4

    move/from16 v28, v13

    move/from16 v42, v15

    goto :goto_72

    :catchall_50
    move-exception v0

    move/from16 v28, v13

    move/from16 v42, v15

    :goto_71
    const/16 v10, 0x34c

    :goto_72
    const/4 v14, 0x5

    const/16 v18, 0x76

    :goto_73
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_68

    throw v4

    :cond_68
    throw v2

    .line 240
    :catchall_51
    move-exception v0

    move/from16 v28, v13

    move/from16 v42, v15

    goto/16 :goto_76

    .line 2426
    :catchall_52
    move-exception v0

    move/from16 v42, v5

    move/from16 v28, v13

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_69

    throw v4

    :cond_69
    throw v2

    .line 2409
    :catchall_53
    move-exception v0

    move/from16 v42, v5

    move/from16 v28, v13

    goto :goto_74

    :catchall_54
    move-exception v0

    move/from16 v42, v5

    move/from16 v28, v13

    const/16 v10, 0x34c

    :goto_74
    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6a

    throw v4

    :cond_6a
    throw v2

    .line 2408
    :catchall_55
    move-exception v0

    move/from16 v42, v5

    move/from16 v28, v13

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6b

    throw v4

    :cond_6b
    throw v2

    .line 2407
    :catchall_56
    move-exception v0

    move/from16 v42, v5

    move/from16 v28, v13

    const/16 v10, 0x34c

    const/4 v14, 0x5

    const/16 v18, 0x76

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6c

    throw v4

    :cond_6c
    throw v2
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_57

    .line 240
    :catchall_57
    move-exception v0

    goto :goto_78

    :catchall_58
    move-exception v0

    move/from16 v42, v5

    move/from16 v18, v10

    move/from16 v28, v13

    const/16 v10, 0x34c

    const/4 v14, 0x5

    goto :goto_78

    :catchall_59
    move-exception v0

    move/from16 v42, v5

    :goto_75
    move/from16 v28, v13

    goto :goto_76

    :catchall_5a
    move-exception v0

    move-object/from16 v31, v4

    move/from16 v42, v5

    move-object/from16 v33, v6

    move-object/from16 v41, v7

    move-object/from16 v37, v8

    move/from16 v35, v9

    move/from16 v28, v13

    move-object/from16 v36, v14

    :goto_76
    const/16 v10, 0x34c

    const/4 v14, 0x5

    :goto_77
    const/16 v18, 0x76

    :goto_78
    move-object v2, v0

    .line 243
    :goto_79
    nop

    .line 244
    add-int/lit8 v5, v42, 0x1

    :goto_7a
    const/16 v4, 0x9

    if-ge v5, v4, :cond_6e

    .line 246
    :try_start_9d
    aget-boolean v6, v41, v5

    if-eqz v6, :cond_6d

    .line 248
    const/4 v5, 0x1

    goto :goto_7b

    .line 244
    :cond_6d
    add-int/lit8 v5, v5, 0x34

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int/lit8 v6, v5, -0x32

    or-int/lit8 v5, v5, -0x32

    add-int/2addr v5, v6

    goto :goto_7a

    :cond_6e
    const/4 v5, 0x0

    .line 253
    :goto_7b
    if-nez v5, :cond_6f

    .line 229
    const/4 v5, 0x1

    goto :goto_7c

    :cond_6f
    const/4 v5, 0x0

    :goto_7c
    packed-switch v5, :pswitch_data_17

    .line 261
    const/16 v2, 0x42

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    sput-object v5, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    goto :goto_7d

    .line 256
    :pswitch_17
    const/16 v1, 0x252

    int-to-short v1, v1

    sget-object v3, Lcom/c/c/$$a;->setError:[B

    const/16 v4, 0x8f

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v5, 0x1d

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_e

    const/4 v4, 0x2

    :try_start_9e
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const/16 v1, 0xc0

    int-to-short v1, v1

    const/16 v2, 0x42

    aget-byte v2, v3, v2

    int-to-byte v2, v2

    const/16 v4, 0x222

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/Throwable;

    const/4 v9, 0x1

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_5b

    :catchall_5b
    move-exception v0

    move-object v1, v0

    :try_start_9f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_70

    throw v2

    :cond_70
    throw v1

    .line 262
    :goto_7d
    sput-object v5, Lcom/c/c/$$a;->setData:Ljava/lang/Object;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_9f} :catch_e

    .line 2379
    sget v7, Lcom/c/c/$$a;->getLastApdu:I

    add-int/lit8 v7, v7, 0x13

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/c/c/$$a;->getInternalData:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    if-eqz v7, :cond_71

    .line 229
    move v7, v6

    goto :goto_7e

    :cond_71
    move v7, v9

    :goto_7e
    packed-switch v7, :pswitch_data_18

    .line 2379
    goto :goto_7f

    .line 272
    :pswitch_18
    nop

    .line 267
    :goto_7f
    move/from16 v16, v35

    :goto_80
    and-int/lit8 v7, v42, 0x1

    or-int/lit8 v11, v42, 0x1

    add-int/2addr v7, v11

    move v15, v4

    move v2, v6

    move v5, v7

    move/from16 v9, v16

    move/from16 v13, v28

    move-object/from16 v4, v31

    move-object/from16 v6, v33

    move-object/from16 v14, v36

    move-object/from16 v8, v37

    move-object/from16 v7, v41

    const/4 v10, 0x4

    goto/16 :goto_1d

    :cond_72
    nop

    .line 272
    return-void

    .line 144
    :catchall_5c
    move-exception v0

    move-object v1, v0

    :try_start_a0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_c

    goto/16 :goto_13

    .line 134
    :catchall_5d
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_73

    :goto_81
    throw v2

    :cond_73
    throw v1

    :catchall_5e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a0} :catch_e

    if-eqz v2, :cond_73

    goto :goto_81

    .line 270
    :catch_e
    move-exception v0

    move-object v1, v0

    .line 272
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x5c
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1f
        :pswitch_c
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x23
        :pswitch_d
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x3e
        :pswitch_12
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x27
        :pswitch_16
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuildConfig(I)I
    .locals 8

    sget v0, Lcom/c/c/$$a;->getInternalData:I

    or-int/lit8 v1, v0, 0x9

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0x9

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    and-int/lit8 v4, v0, 0x33

    or-int/lit8 v0, v0, 0x33

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 v4, v4, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    sget-object p0, Lcom/c/c/$$a;->setError:[B

    const/16 v4, 0xb4

    aget-byte v4, p0, v4

    neg-int v4, v4

    int-to-short v4, v4

    const/16 v5, 0x34c

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x52

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/c/c/$$a;->setData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x132

    aget-byte v5, p0, v5

    int-to-short v5, v5

    const/16 v6, 0x11e

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    const/16 v7, 0x76

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object p0

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v4, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/c/c/$$a;->getInternalData:I

    add-int/lit8 v0, v0, 0xa

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    :goto_1
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static ContactlessConfiguration(Ljava/lang/Object;)I
    .locals 8

    sget v0, Lcom/c/c/$$a;->getInternalData:I

    xor-int/lit8 v1, v0, 0x77

    and-int/lit8 v0, v0, 0x77

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/c/c/$$a;->setFinalOutcome:Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x2e

    sub-int/2addr v3, v2

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/c/c/$$a;->getInternalData:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/16 v3, 0x62

    goto :goto_0

    :cond_0
    const/16 v3, 0x3f

    :goto_0
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    and-int/lit8 v3, v0, 0x11

    or-int/lit8 v0, v0, 0x11

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lcom/c/c/$$a;->getInternalData:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget-object p0, Lcom/c/c/$$a;->setError:[B

    const/16 v4, 0xb4

    aget-byte v4, p0, v4

    neg-int v4, v4

    int-to-short v4, v4

    const/16 v5, 0x34c

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x52

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/c/c/$$a;->setData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    sget v5, Lcom/c/c/$$a;->getError:I

    xor-int/lit16 v6, v5, 0xf5

    and-int/lit16 v5, v5, 0xf5

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x13

    aget-byte v6, p0, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x83

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/c/c/$$a;->$$d(SII)Ljava/lang/String;

    move-result-object p0

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-virtual {v4, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget v0, Lcom/c/c/$$a;->getInternalData:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/c/c/$$a;->getLastApdu:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static init$0()V
    .locals 4

    sget v0, Lcom/c/c/$$a;->getLastApdu:I

    xor-int/lit8 v1, v0, 0x77

    and-int/lit8 v0, v0, 0x77

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/c/c/$$a;->getInternalData:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x385

    new-array v1, v0, [B

    const-string v2, "c\u00c9G\u00e3\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u00154\u00f2\u0001\u0000\u000e\u00f4\u0000\u00e6&\u0003\u0006\u0000\u00e0\"\u00ff\u00f4\u00fd\r\u00f8\u0016\u00ec\u00ce?\u00f6\u000e\u00fa\u00c8&\'\u00fb\u0002\u00f2\t\u0013\u00fe\u0001\u00f4\n\u0007\u00ce0\u0001\u00fd\u00fe\u00fb\u00ff\u0014\u00f6\u0007\u0000\u00f8\u0016\u00ec\u00ceA\u00fc\u0007\u00c0\u00158\u00fc\u00f2\u00de4\u00f2\u0001\u0000\u000e\u000e\u00f7\u000f\u00fe\u00fb\u00fc\u00cbB\u0005\u00bc\u00154\u00f5\u0004\u00f9\u00c13\u00f0\u000e\u0002\u00f7\u0007\u0000\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u00158\u00fc\u00f2\u00dd2\u0001\u00f0\u0019\u00d1&\u0003\u0006\u0000\u00e0\"\u00ff\u00f4\u00fd\r\u00fe\u000c\u000b\u00f4\u0003\u00c4F\u0007\u00fb\u0002\u00f2\t\u00c2\u001c&\u00e0\u0019\t\u0003\u0004\u0008\u00cc\"\u0014\u00cc*\u00f6\u0013\u0001\u00da$\u00f3\u0004\u0002\u000e\u00f4\u00fd\u0004\u00e30\u00f8\u0001\u000e\u00ff\u0010\u00d3$\u0004\u00fa\u000f\u00d2&\n\u00fc\u00f8\u000c\u00f2\u00ff\u0010\u00d0\u001f\u0003\u0006\u00fe\u00e0&\n\u00f4\u00fd\u0004\u00fe\u000c\u000b\u00f4\u0003\u00c4F\u0007\u00fb\u0002\u00f2\t\u00c2\u0017\"\u0014\u00cf$\u0004\u00fa\r\u00f6\u0002\u00fb\u0005\u00ff\u0003\u0006\u00fe\u00fe\u000c\u000b\u00f4\u0003\u00c4F\u0007\u00fb\u0002\u00f2\t\u00c2\u0015 \u0013\u00f3\u00e0\"\u0014\u00cc*\u00f6\u0013\u0001\u00da$\u00f3\u0004\u0002\u000e\u00ff\u0010\u00d0-\u00f6\u0002\u00df\u001f\u0003\u0006\u00fe\u00e0&\n\u0007\u00f6\u00f6\r\u00ff\u00c35\u00cd5\u00cd\u00f6\u0001>\u00c4Q\u00ec\u0008\u00ea\tG\u0002\u00b2G\u00fc\u000c\u0001\u00f7\u0000\u0003\t\t\u00aeM\u00fa\u0002\u000f\u00b6\u00ec\u0007\u00eb\t\u00ec\u0005\u00ed\t\u00ec\t\u00e9\t\u00f8\u0016\u00ec\u00ce?\u00f6\u000e\u00fa\u00c8\u0016*\u00f6\u0013\u0001\u00da$\u00f3\u0004\u0002\u000e\u000e\u00f7\u000f\u00fe\u00fb\u00fc\u00cb4\u0010\u0001\u00bf\u00140\u0001\u00d8&\u0004\u00f4\u0000\u000c\u0008\u00ff\u0010\u00d24\u00fd\u00f2\u000e\u00fd\u00f4\u000c\u00e8\"\u00fc\u0004\u00f0\u0007\u00ff\u00e0&\n\u00f4\u00ff\u0012\u00fc\u0004\u0008\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u0017\u001e\u0014\u00ee\u00e9&\u0003\u0006\u0000\u00e0\"\u00ff\u00f4\u00fd\r\u0004\u00f3\u0004\u00e1\"\u0014\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u00158\u00fc\u00f2\u00dd2\u0001\u00f0\u0019\u00d7\'\u0000\u00fd\u0006\u0000\u00e0\"\u00ff\u00f4\u00fd\r\u000e\u00f7\u000f\u00fe\u00fb\u00fc\u00cbB\u0005\u00bc\u0018*\t\u00f4\n\u00fe\u0000\u0000\u00f9\n\u00075\r\u00ff\u00c35\u00cd5\u00cd4\u00cc\u00f9\u00ff\u0008\u00ff\u0010\u00d0*\u00f6\u0013\u0001\u00da$\u00f3\u0004\u0002\u000e6\u00fe\u0014\u00ee\u00cf6\u00fe\u0014\u00ee\u00cf\u0002\u0008\u00fa\u0010\u00f2\u00ff\u0010\u00d3\u00ff\u00f2\u0008\u0015\u00eb\u0006\u0007\r\u00ff\u00c35\u00cd5\u00cd9\u00ff\u0010\u00d6&\u0006\u0002\u00ee\u000e\u00f6\u0003\u00c0\u0001\u00f4\u0014\u00f6\u000e\u00f0\u00e8\u001e\u00fa\u0011\u00f0\u0012\u0008\u00d8\u0012\u0014\u00f5\u00de(\u00fa\t\u00f9\n\u0007\u0000\n\u0004\u0005\u00f3\u00f8\u0016\u00ec\u00ce<\u0007\u00c0G\u00fa\u0004\u00f5\u0006\n\u00ff\u0010\u00dd#\u00fe\u0002\u00f6\u000e\u0003\u0006\u00ff\u0010\u00ce\"\u0012\u00fd\u00fe\n\u0000\u00f2\u00ec\u0012\u0014\u00f5\u000e\u00f7\u000f\u00fe\u00fb\u00fc\u00cb4\u0010\u0001\u00bf\u0014#\u0012\u00f6\u000e\u00f4\u000c\u0006\u00dc\u0015\u000b\u00f4\u00fd\u0004-\u0000\u0007\u00ee\u0003\u0012\u00f9\u00fa\u000f\u0001\u00d1-\u0000\u00f9\u0004\u00ff\u000f\u00fe\u00f0\u0014\u00f6\u0007\u0000\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u0019$\u0004\u00fa\u00eb\'\u0000\u00fd\u0006\u0000\u00e0\"\u00ff\u00f4\u00fd\r5\r\u00ff\u00c35\u00cd5\u00cd3\u00cd\u00ff\u000e\u00ea\u001c\u00f8\u000c\u00f2\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u001c\u0007\u00f74\u00ec\u0003\u000c\u0005\u00f6\u0007\u0000\u00f2\u0014\u00f5\u00e5\u001e\u000b\u0002\u00ff\u0010\u00d6&\u00fc\u000c\u00f6\u00f9\u000c\u00d60\u0001\u00fd\u00fe\u00fb\u00ff\u0014\u00f6\u0007\u0000\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u0019$\u0004\u00fa\u00ec\u0004\u00ee\t\u0013\u00fe\u0001\u00f4\n\u0007\u00e1\u0016\u0005\u00f9\u00e9\u001d\u0004\u0001\u00fe\u000b\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u0019$\u0004\u00fa\u00e0\"\u000f\u00f1\u0010\u00f8\u0008\u0005\u00fc\u0004\u00fc\u00d48\u00fc\u00f2\u00dd2\u0001\u00f0\u0019\u0004\u00f3\u0004\u00e0*\u00f6\u0013\u0001\u00ff\u0010\u00d6&\u0006\u0002\u00ee\u000e\u00f6\u0003\r\u00ff\u00c2I\u00f4\u000b\u00ef\u00ce4\u0010\u0001\u00bfG\u0001\u00fd\u00fc\u00fb\u000e\u00fd\u00f8\u0008\r\u00ff\u00c26\u00cc6\u00cc:\u00ff\u0010\u00d6&\u0006\u0002\u00ee\u000e\u00f6\u0003\u00c0\u0001\u00fc\u00f0\u0010\u00f4\u0014\u00f6\u000e\u00f0\u00e8\u001e\u00fa\u0011\u00f0\u0012\u0008\u00cc&\n\u00f4\u00ff\u0012\u00fc\u0004\u00f8\u00fd\u000f\u00f8\u0016\u00ec\u00ce<\u0007\u00c0\u001c&\u0003\u0006\u0000\u00e0\"\u00ff\u00f4\u00fd\r"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/c/c/$$a;->setError:[B

    const/16 v0, 0xa

    sput v0, Lcom/c/c/$$a;->getError:I

    sget v0, Lcom/c/c/$$a;->getLastApdu:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/c/c/$$a;->getInternalData:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
