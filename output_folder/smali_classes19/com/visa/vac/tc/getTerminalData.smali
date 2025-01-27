.class public Lcom/visa/vac/tc/getTerminalData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VACThinClient$Status:[B

.field public static final VACThinClient$TransactionCallback:I

.field public static cancelTransaction:[B

.field private static clearInternalData:Ljava/lang/Object;

.field public static getContext:[B

.field private static onComplete:I

.field private static onFailure:B

.field private static onProgress:I

.field private static startTransaction:Ljava/lang/Object;

.field private static updateResult:J


# direct methods
.method public static $$a(I)I
    .locals 8

    sget v0, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 v1, v0, 0x48

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;

    const/16 v4, 0x43

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    and-int/lit8 v4, v0, 0x23

    or-int/lit8 v0, v0, 0x23

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/lit8 v4, v4, 0x2

    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    sget-object p0, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v4, 0x87

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0xe0

    int-to-short v5, v5

    const/16 v6, 0x127

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xa

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x1ae

    int-to-short v6, v6

    const/16 v7, 0x61

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v4, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sget v0, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_2

    :cond_1
    const/16 v0, 0x3b

    :goto_2
    packed-switch v0, :pswitch_data_1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method

.method public static $$a(Ljava/lang/Object;)I
    .locals 8

    sget v0, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    or-int/lit8 v1, v0, 0x31

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0x31

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;

    xor-int/lit8 v3, v0, 0x2f

    and-int/lit8 v0, v0, 0x2f

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/lit8 v3, v3, 0x2

    xor-int/lit8 v3, v0, 0x63

    and-int/lit8 v0, v0, 0x63

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget-object p0, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v4, 0x87

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0xe0

    int-to-short v5, v5

    const/16 v6, 0x127

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xa

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    and-int/lit8 v6, v5, -0x5

    or-int/lit8 v7, v5, -0x5

    add-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x11

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-virtual {v4, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method private static $$d(SSB)Ljava/lang/String;
    .locals 8

    sget v0, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    add-int/lit8 v1, v0, 0x4a

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 p0, p0, 0x29

    neg-int p1, p1

    not-int p1, p1

    rsub-int p1, p1, 0x3bf

    sub-int/2addr p1, v2

    sget-object v1, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    add-int/2addr p2, v2

    new-array v3, p2, [B

    and-int/lit8 v4, p2, -0x1

    const/4 v5, -0x1

    or-int/2addr p2, v5

    add-int/2addr v4, p2

    const/4 p2, 0x0

    if-nez v1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, p2

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    xor-int/lit8 v6, v0, 0x59

    and-int/lit8 v0, v0, 0x59

    shl-int/2addr v0, v2

    add-int/2addr v6, v0

    rem-int/lit16 v0, v6, 0x80

    sput v0, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    const/16 v0, 0x19

    goto :goto_1

    :cond_1
    const/16 v0, 0x2a

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    move v0, p1

    goto :goto_5

    :goto_3
    and-int/lit8 v0, v5, 0x1

    or-int/2addr v5, v2

    add-int/2addr v0, v5

    xor-int/lit8 v5, p1, -0x27

    and-int/lit8 p1, p1, -0x27

    shl-int/2addr p1, v2

    add-int/2addr v5, p1

    xor-int/lit8 p1, v5, 0x28

    and-int/lit8 v5, v5, 0x28

    shl-int/2addr v5, v2

    add-int/2addr p1, v5

    int-to-byte v5, p0

    aput-byte v5, v3, v0

    if-ne v0, v4, :cond_3

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 p1, p1, 0x76

    sub-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x24

    goto :goto_4

    :cond_2
    const/16 p1, 0x4c

    :goto_4
    packed-switch p1, :pswitch_data_2

    return-object p0

    :pswitch_2
    const/16 p1, 0x4f

    :try_start_1
    div-int/2addr p1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :cond_3
    aget-byte v5, v1, p1

    move v7, p1

    move p1, p0

    move p0, v5

    move v5, v0

    move v0, v7

    :goto_5
    neg-int p0, p0

    add-int/2addr p1, p0

    and-int/lit8 p0, p1, -0x3

    or-int/lit8 p1, p1, -0x3

    add-int/2addr p0, p1

    sget p1, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    or-int/lit8 v6, p1, 0x41

    shl-int/2addr v6, v2

    xor-int/lit8 p1, p1, 0x41

    sub-int/2addr v6, p1

    rem-int/lit16 p1, v6, 0x80

    sput p1, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/lit8 v6, v6, 0x2

    move p1, v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_2
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 47

    const-class v1, [B

    const/4 v2, 0x0

    .line 2436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 0
    sput v2, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v4, 0x1

    sput v4, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    invoke-static {}, Lcom/visa/vac/tc/getTerminalData;->init$0()V

    .line 1000
    const/16 v5, -0x58

    sput-byte v5, Lcom/visa/vac/tc/getTerminalData;->onFailure:B

    const-wide v5, -0x9cf459cb36d57abL

    sput-wide v5, Lcom/visa/vac/tc/getTerminalData;->updateResult:J

    .line 77
    :try_start_0
    sget-object v5, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v6, 0x87

    aget-byte v7, v5, v6

    int-to-byte v7, v7

    const/16 v8, 0x1a0

    int-to-short v8, v8

    const/16 v9, 0x127

    aget-byte v10, v5, v9

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    .line 81
    sget-object v8, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;

    if-nez v8, :cond_0

    .line 2375
    const/16 v8, 0x52

    goto :goto_0

    :cond_0
    const/16 v8, 0x2c

    :goto_0
    const/4 v10, 0x0

    packed-switch v8, :pswitch_data_0

    .line 81
    goto :goto_1

    :pswitch_0
    move-object v8, v10

    goto :goto_2

    :goto_1
    aget-byte v8, v5, v6

    int-to-byte v8, v8

    const/16 v11, 0xe8

    aget-byte v11, v5, v11

    int-to-short v11, v11

    const/16 v12, 0x145

    aget-byte v12, v5, v12

    int-to-byte v12, v12

    invoke-static {v8, v11, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 84
    :goto_2
    nop

    .line 1767
    nop

    .line 1771
    const/16 v11, 0x1e7

    const/16 v12, 0xa

    :try_start_1
    aget-byte v11, v5, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v13, 0x14b

    int-to-short v13, v13

    const/16 v14, 0x2f7

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v11

    .line 1772
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v13, v5, v6

    int-to-byte v13, v13

    const/16 v14, 0x393

    int-to-short v14, v14

    const/16 v15, 0x141

    aget-byte v5, v5, v15

    int-to-byte v5, v5

    invoke-static {v13, v14, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    new-array v13, v2, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v11, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v5, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1776
    if-eqz v5, :cond_1

    .line 2375
    move v11, v4

    goto :goto_3

    :cond_1
    move v11, v2

    :goto_3
    packed-switch v11, :pswitch_data_1

    .line 1778
    goto :goto_6

    :pswitch_1
    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v10

    .line 1785
    :goto_4
    :try_start_2
    sget-object v11, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v13, 0x1e7

    aget-byte v13, v11, v13

    neg-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x265

    int-to-short v14, v14

    const/16 v15, 0x145

    aget-byte v15, v11, v15

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v13

    .line 1786
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aget-byte v14, v11, v12

    int-to-byte v14, v14

    const/16 v15, 0xc5

    int-to-short v15, v15

    aget-byte v11, v11, v9

    int-to-byte v11, v11

    invoke-static {v14, v15, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v11

    new-array v14, v2, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v13, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v13, v10

    check-cast v13, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v11, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 1792
    :goto_5
    nop

    .line 86
    :goto_6
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 95
    if-eqz v5, :cond_2

    .line 2375
    move v11, v2

    goto :goto_7

    :cond_2
    move v11, v4

    :goto_7
    packed-switch v11, :pswitch_data_2

    move-object v11, v10

    goto :goto_8

    .line 97
    :pswitch_2
    nop

    .line 98
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v13, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    aget-byte v14, v13, v12

    int-to-byte v14, v14

    const/16 v15, 0x309

    int-to-short v15, v15

    const/16 v16, 0x11

    aget-byte v13, v13, v16

    int-to-byte v13, v13

    invoke-static {v14, v15, v13}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v13

    move-object v14, v10

    check-cast v14, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v11, v13, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v13, v10

    check-cast v13, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v11, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v11, v10

    goto :goto_9

    :goto_8
    nop

    .line 107
    :goto_9
    const/16 v13, 0x61

    const/4 v14, 0x2

    if-eqz v5, :cond_4

    .line 238
    sget v15, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    add-int/lit8 v15, v15, 0x4e

    sub-int/2addr v15, v4

    rem-int/lit16 v9, v15, 0x80

    sput v9, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/2addr v15, v14

    if-nez v15, :cond_3

    .line 109
    :cond_3
    nop

    .line 110
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    sget-object v15, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    aget-byte v6, v15, v12

    int-to-byte v6, v6

    const/16 v2, 0x2ac

    int-to-short v2, v2

    aget-byte v15, v15, v13

    int-to-byte v15, v15

    invoke-static {v6, v2, v15}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    move-object v6, v10

    check-cast v6, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v9, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v6, v10

    check-cast v6, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v2, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v2, v10

    goto :goto_b

    .line 107
    :cond_4
    move-object v2, v10

    .line 112
    :goto_a
    nop

    .line 119
    :goto_b
    if-eqz v5, :cond_5

    .line 121
    nop

    .line 122
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v9, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    aget-byte v15, v9, v12

    int-to-byte v15, v15

    const/16 v13, 0x2f5

    int-to-short v13, v13

    const/16 v18, 0x11

    aget-byte v9, v9, v18

    int-to-byte v9, v9

    invoke-static {v15, v13, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    move-object v13, v10

    check-cast v13, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v9, v10

    check-cast v9, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v6, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v5, v10

    goto :goto_d

    .line 119
    :cond_5
    move-object v5, v10

    .line 124
    :goto_c
    nop

    .line 130
    :goto_d
    if-eqz v11, :cond_6

    .line 2375
    move v6, v4

    goto :goto_e

    :cond_6
    const/4 v6, 0x0

    :goto_e
    const/4 v9, 0x4

    const/16 v13, 0xa1

    const/16 v15, 0x22

    packed-switch v6, :pswitch_data_3

    .line 130
    if-nez v8, :cond_8

    goto :goto_10

    .line 272
    :pswitch_3
    sget v6, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    or-int/lit8 v8, v6, 0x5b

    shl-int/2addr v8, v4

    xor-int/lit8 v6, v6, 0x5b

    sub-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/2addr v8, v14

    if-eqz v8, :cond_7

    .line 130
    :cond_7
    :goto_f
    goto :goto_12

    .line 2375
    :goto_10
    const/4 v6, 0x0

    goto :goto_11

    :cond_8
    move v6, v4

    :goto_11
    packed-switch v6, :pswitch_data_4

    .line 130
    const/4 v11, 0x0

    goto :goto_12

    :pswitch_4
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    aget-byte v10, v11, v9

    int-to-byte v10, v10

    const/16 v9, 0x1d9

    int-to-short v9, v9

    const/16 v20, 0x11

    aget-byte v12, v11, v20

    int-to-byte v12, v12

    invoke-static {v10, v9, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 238
    sget v8, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    xor-int/lit8 v9, v8, 0x27

    and-int/lit8 v8, v8, 0x27

    shl-int/2addr v8, v4

    add-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/2addr v9, v14

    if-eqz v9, :cond_9

    .line 130
    :cond_9
    :try_start_7
    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aget-byte v6, v11, v15

    neg-int v6, v6

    int-to-byte v6, v6

    sget v9, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v9, v9, 0x3f3

    int-to-short v9, v9

    aget-byte v10, v11, v13

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_a

    throw v2

    :cond_a
    throw v1

    .line 134
    :goto_12
    if-eqz v5, :cond_b

    :goto_13
    goto :goto_14

    :cond_b
    sget-object v5, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    aget-byte v6, v5, v15

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v8, 0x170

    int-to-short v8, v8

    const/16 v9, 0x34e

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    :try_start_9
    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aget-byte v6, v5, v15

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v9, 0x3a2

    int-to-short v9, v9

    const/16 v10, 0x207

    aget-byte v10, v5, v10

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0xa

    aget-byte v10, v5, v9

    int-to-byte v9, v10

    const/16 v10, 0x163

    int-to-short v10, v10

    const/16 v12, 0x11

    aget-byte v12, v5, v12

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v12, v10, v17

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_59

    :try_start_a
    new-array v8, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aget-byte v6, v5, v15

    neg-int v6, v6

    int-to-byte v6, v6

    sget v9, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v9, v9, 0x3f3

    int-to-short v9, v9

    aget-byte v5, v5, v13

    int-to-byte v5, v5

    invoke-static {v6, v9, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_58

    goto :goto_13

    .line 141
    :goto_14
    if-nez v2, :cond_c

    .line 2375
    const/4 v6, 0x0

    goto :goto_15

    :cond_c
    move v6, v4

    :goto_15
    packed-switch v6, :pswitch_data_5

    .line 141
    if-eqz v11, :cond_e

    .line 144
    :try_start_b
    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v6, 0x87

    aget-byte v8, v2, v6

    int-to-byte v6, v8

    const/16 v8, 0x2d4

    int-to-short v8, v8

    const/16 v9, 0x5c

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    :try_start_c
    new-array v8, v14, [Ljava/lang/Object;

    aput-object v6, v8, v4

    const/4 v6, 0x0

    aput-object v11, v8, v6

    aget-byte v6, v2, v15

    neg-int v6, v6

    int-to-byte v6, v6

    sget v9, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v10, v9, 0x3f3

    int-to-short v10, v10

    aget-byte v12, v2, v13

    int-to-byte v12, v12

    invoke-static {v6, v10, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v10, v14, [Ljava/lang/Class;

    aget-byte v12, v2, v15

    neg-int v12, v12

    int-to-byte v12, v12

    and-int/lit16 v9, v9, 0x3f3

    int-to-short v9, v9

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v12, v9, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v10, v9

    const-class v2, Ljava/lang/String;

    aput-object v2, v10, v4

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_17

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    :goto_16
    throw v2

    :cond_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :cond_e
    :goto_17
    :pswitch_5
    :try_start_e
    sget-object v6, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v8, 0x1e7

    aget-byte v8, v6, v8

    neg-int v8, v8

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x1c6

    and-int/lit16 v10, v8, 0x1c6

    or-int/2addr v9, v10

    int-to-short v9, v9

    const/16 v10, 0x145

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0xa

    aget-byte v10, v6, v9

    int-to-byte v9, v10

    const/16 v10, 0x250

    int-to-short v10, v10

    const/16 v12, 0xc6

    aget-byte v12, v6, v12

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_57

    .line 148
    const/16 v9, 0x9

    :try_start_f
    aget-byte v10, v6, v15

    neg-int v10, v10

    int-to-byte v10, v10

    sget v12, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v12, v12, 0x3f3

    int-to-short v12, v12

    aget-byte v15, v6, v13

    int-to-byte v15, v15

    invoke-static {v10, v12, v15}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v12, 0x0

    aput-object v10, v9, v12

    aput-object v2, v9, v4

    aput-object v11, v9, v14

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v12, 0x4

    aput-object v8, v9, v12

    const/4 v12, 0x5

    aput-object v2, v9, v12

    const/4 v2, 0x6

    aput-object v11, v9, v2

    const/4 v11, 0x7

    aput-object v5, v9, v11

    const/16 v5, 0x8

    aput-object v8, v9, v5

    .line 190
    const/16 v5, 0x9

    new-array v5, v5, [Z

    const/4 v8, 0x0

    aput-boolean v8, v5, v8

    aput-boolean v4, v5, v4

    aput-boolean v4, v5, v14

    aput-boolean v4, v5, v10

    const/4 v8, 0x4

    aput-boolean v4, v5, v8

    aput-boolean v4, v5, v12

    aput-boolean v4, v5, v2

    const/4 v8, 0x7

    aput-boolean v4, v5, v8

    const/16 v8, 0x8

    aput-boolean v4, v5, v8

    .line 194
    const/16 v8, 0x9

    new-array v8, v8, [Z

    const/4 v11, 0x0

    aput-boolean v11, v8, v11

    aput-boolean v11, v8, v4

    aput-boolean v11, v8, v14

    aput-boolean v11, v8, v10

    const/4 v15, 0x4

    aput-boolean v11, v8, v15

    aput-boolean v4, v8, v12

    aput-boolean v4, v8, v2

    const/4 v11, 0x7

    aput-boolean v4, v8, v11

    const/16 v11, 0x8

    aput-boolean v4, v8, v11

    .line 198
    const/16 v11, 0x9

    new-array v15, v11, [Z

    const/16 v17, 0x0

    aput-boolean v17, v15, v17

    aput-boolean v17, v15, v4

    aput-boolean v4, v15, v14

    aput-boolean v4, v15, v10

    const/16 v19, 0x4

    aput-boolean v17, v15, v19

    aput-boolean v17, v15, v12

    aput-boolean v4, v15, v2

    const/16 v21, 0x7

    aput-boolean v4, v15, v21

    const/16 v21, 0x8

    aput-boolean v17, v15, v21
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 204
    const/16 v21, 0x1e7

    const/16 v22, 0xb

    :try_start_10
    aget-byte v11, v6, v21

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v10, 0x370

    int-to-short v10, v10

    aget-byte v2, v6, v22

    neg-int v2, v2

    int-to-byte v2, v2

    invoke-static {v11, v10, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 205
    const/16 v10, 0x356

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    const/16 v11, 0x1c6

    int-to-short v11, v11

    const/16 v19, 0x4

    aget-byte v6, v6, v19

    int-to-byte v6, v6

    invoke-static {v10, v11, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 208
    const/16 v6, 0x1a

    if-lt v2, v6, :cond_10

    .line 238
    sget v6, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    or-int/lit8 v10, v6, 0x2d

    shl-int/2addr v10, v4

    xor-int/lit8 v6, v6, 0x2d

    sub-int/2addr v10, v6

    rem-int/lit16 v6, v10, 0x80

    sput v6, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/2addr v10, v14

    if-nez v10, :cond_f

    const/4 v6, 0x0

    goto :goto_18

    .line 208
    :cond_f
    move v6, v4

    goto :goto_18

    :cond_10
    const/4 v6, 0x0

    :goto_18
    const/4 v10, 0x0

    :try_start_11
    aput-boolean v6, v15, v10

    .line 211
    const/16 v6, 0x15

    if-lt v2, v6, :cond_11

    move v6, v4

    goto :goto_19

    :cond_11
    const/4 v6, 0x0

    :goto_19
    aput-boolean v6, v15, v4

    .line 212
    const/16 v6, 0x15

    if-lt v2, v6, :cond_12

    move v6, v4

    goto :goto_1a

    :cond_12
    const/4 v6, 0x0

    :goto_1a
    aput-boolean v6, v15, v12
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 215
    const/16 v6, 0x10

    if-ge v2, v6, :cond_14

    .line 238
    sget v6, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 v6, v6, 0x1f

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/2addr v6, v14

    if-eqz v6, :cond_13

    .line 215
    :cond_13
    move v6, v4

    goto :goto_1b

    :cond_14
    const/4 v6, 0x0

    :goto_1b
    const/4 v10, 0x4

    :try_start_12
    aput-boolean v6, v15, v10

    .line 216
    const/16 v6, 0x8

    const/16 v10, 0x10

    if-ge v2, v10, :cond_15

    .line 2375
    const/16 v2, 0x13

    goto :goto_1c

    :cond_15
    const/16 v2, 0x61

    :goto_1c
    packed-switch v2, :pswitch_data_6

    .line 216
    move v2, v4

    goto :goto_1d

    :pswitch_6
    const/4 v2, 0x0

    :goto_1d
    aput-boolean v2, v15, v6
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_1e

    .line 218
    :catch_5
    move-exception v0

    .line 224
    :goto_1e
    nop

    .line 225
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 226
    :goto_1f
    if-nez v2, :cond_16

    .line 2375
    const/4 v10, 0x0

    goto :goto_20

    :cond_16
    move v10, v4

    :goto_20
    packed-switch v10, :pswitch_data_7

    :goto_21
    goto/16 :goto_7b

    .line 226
    :pswitch_7
    const/16 v10, 0x9

    if-ge v6, v10, :cond_17

    .line 2375
    const/4 v10, 0x0

    goto :goto_22

    :cond_17
    move v10, v4

    :goto_22
    packed-switch v10, :pswitch_data_8

    goto :goto_21

    .line 229
    :pswitch_8
    :try_start_13
    aget-boolean v10, v15, v6
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    if-eqz v10, :cond_18

    .line 2375
    move v10, v4

    goto :goto_23

    :cond_18
    move/from16 v10, v22

    :goto_23
    packed-switch v10, :pswitch_data_9

    .line 233
    :try_start_14
    aget-boolean v11, v5, v6

    goto :goto_24

    .line 2375
    :pswitch_9
    move/from16 v28, v2

    move-object/from16 v29, v5

    move/from16 v23, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move v9, v13

    move-object/from16 v39, v15

    const/16 v2, 0x9

    const/4 v4, 0x0

    const/16 v8, 0x87

    const/4 v13, 0x4

    goto/16 :goto_7a

    .line 233
    :goto_24
    aget-object v12, v9, v6

    aget-boolean v23, v8, v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_55

    .line 2306
    const/16 v24, 0x25

    if-eqz v11, :cond_1e

    .line 238
    sget v25, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    or-int/lit8 v26, v25, 0x53

    shl-int/lit8 v26, v26, 0x1

    xor-int/lit8 v25, v25, 0x53

    sub-int v4, v26, v25

    rem-int/lit16 v10, v4, 0x80

    sput v10, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/2addr v4, v14

    if-nez v4, :cond_19

    .line 2375
    const/16 v4, 0x2c

    goto :goto_25

    :cond_19
    const/16 v4, 0x59

    :goto_25
    packed-switch v4, :pswitch_data_a

    .line 2306
    if-eqz v12, :cond_1b

    goto :goto_27

    .line 238
    :pswitch_a
    const/4 v4, 0x0

    :try_start_15
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 240
    :catchall_2
    move-exception v0

    move-object v4, v0

    move/from16 v28, v2

    :goto_26
    move-object/from16 v29, v5

    move/from16 v23, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move v9, v13

    move-object/from16 v39, v15

    goto/16 :goto_3f

    .line 2306
    :goto_27
    :try_start_16
    sget-object v4, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v10, 0x22

    aget-byte v14, v4, v10

    neg-int v10, v14

    int-to-byte v10, v10

    sget v14, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    and-int/lit16 v14, v14, 0x3f3

    int-to-short v14, v14

    move/from16 v28, v2

    :try_start_17
    aget-byte v2, v4, v13

    int-to-byte v2, v2

    invoke-static {v10, v14, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v10, 0x87

    aget-byte v14, v4, v10

    int-to-byte v10, v14

    const/16 v14, 0x11b

    int-to-short v14, v14

    const/16 v29, 0x51

    aget-byte v4, v4, v29

    int-to-byte v4, v4

    invoke-static {v10, v14, v4}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v12, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    if-eqz v2, :cond_1c

    goto/16 :goto_29

    :catchall_3
    move-exception v0

    goto :goto_28

    :catchall_4
    move-exception v0

    move/from16 v28, v2

    :goto_28
    move-object v2, v0

    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1a

    throw v4

    :cond_1a
    throw v2

    :cond_1b
    move/from16 v28, v2

    .line 2310
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v10, 0x2ce

    aget-byte v11, v4, v10

    int-to-byte v10, v11

    const/16 v11, 0x285

    int-to-short v11, v11

    aget-byte v14, v4, v24

    int-to-byte v14, v14

    invoke-static {v10, v11, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v10, 0x2e

    aget-byte v10, v4, v10

    int-to-byte v11, v10

    xor-int/lit16 v12, v11, 0x2e8

    and-int/lit16 v14, v11, 0x2e8

    or-int/2addr v12, v14

    int-to-short v12, v12

    int-to-byte v10, v10

    invoke-static {v11, v12, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    const/4 v10, 0x1

    :try_start_19
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v11, v10

    const/16 v2, 0x22

    aget-byte v10, v4, v2

    neg-int v2, v10

    int-to-byte v2, v2

    const/16 v10, 0x114

    int-to-short v10, v10

    const/4 v12, 0x6

    aget-byte v4, v4, v12

    int-to-byte v4, v4

    invoke-static {v2, v10, v4}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v10, v12

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1d

    throw v4

    :cond_1d
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 240
    :catchall_6
    move-exception v0

    move-object v4, v0

    goto/16 :goto_26

    .line 2306
    :cond_1e
    move/from16 v28, v2

    .line 2313
    :goto_29
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
    if-eqz v11, :cond_35

    .line 2325
    :try_start_1b
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    .line 2326
    nop

    .line 238
    sget v4, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    or-int/lit8 v10, v4, 0xd

    const/4 v14, 0x1

    shl-int/2addr v10, v14

    xor-int/lit8 v4, v4, 0xd

    sub-int/2addr v10, v4

    rem-int/lit16 v4, v10, 0x80

    sput v4, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v4, 0x2

    rem-int/2addr v10, v4

    if-eqz v10, :cond_1f

    .line 2326
    :cond_1f
    :try_start_1c
    sget-object v4, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v10, 0x22

    aget-byte v14, v4, v10

    neg-int v10, v14

    int-to-byte v10, v10

    const/16 v14, 0x3a2

    int-to-short v14, v14

    const/16 v29, 0x207

    aget-byte v13, v4, v29

    int-to-byte v13, v13

    invoke-static {v10, v14, v13}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v13, 0x87

    aget-byte v14, v4, v13

    int-to-byte v13, v14

    sget v14, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v14, v14, 0x3d0

    int-to-short v14, v14

    const/16 v29, 0x194

    aget-byte v4, v4, v29

    int-to-byte v4, v4

    invoke-static {v13, v14, v4}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_16

    const-wide/32 v31, 0x2b9d0973

    xor-long v13, v13, v31

    :try_start_1d
    invoke-virtual {v2, v13, v14}, Ljava/util/Random;->setSeed(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_15

    .line 272
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2330
    :goto_2a
    if-nez v4, :cond_33

    .line 2334
    if-nez v10, :cond_20

    move-object/from16 v31, v4

    move-object/from16 v29, v5

    const/4 v4, 0x6

    goto :goto_2d

    :cond_20
    if-nez v13, :cond_21

    .line 2375
    const/16 v29, 0x5a

    goto :goto_2b

    :cond_21
    const/16 v29, 0x37

    :goto_2b
    packed-switch v29, :pswitch_data_b

    sget v29, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 v29, v29, 0x52

    move-object/from16 v31, v4

    const/16 v27, 0x1

    add-int/lit8 v4, v29, -0x1

    move-object/from16 v29, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-eqz v4, :cond_23

    goto :goto_2c

    .line 2334
    :pswitch_b
    move-object/from16 v31, v4

    move-object/from16 v29, v5

    if-nez v14, :cond_22

    const/4 v4, 0x4

    goto :goto_2d

    :cond_22
    const/4 v4, 0x3

    goto :goto_2d

    :cond_23
    :goto_2c
    const/4 v4, 0x5

    .line 2344
    :goto_2d
    :try_start_1e
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    move-object/from16 v32, v7

    add-int/lit8 v7, v4, 0x1

    :try_start_1f
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2346
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    .line 2348
    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v4, :cond_26

    .line 2350
    if-eqz v23, :cond_24

    .line 2375
    const/16 v33, 0x0

    goto :goto_2f

    :cond_24
    const/16 v33, 0x1

    :goto_2f
    packed-switch v33, :pswitch_data_c

    .line 2362
    move/from16 v33, v4

    const/16 v4, 0xc

    :try_start_20
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    goto :goto_32

    .line 2352
    :pswitch_c
    move/from16 v33, v4

    const/16 v4, 0x1a

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 2353
    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v34

    .line 2355
    if-eqz v34, :cond_25

    neg-int v4, v4

    neg-int v4, v4

    xor-int/lit8 v34, v4, 0x41

    and-int/lit8 v4, v4, 0x41

    const/16 v27, 0x1

    shl-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_25
    neg-int v4, v4

    neg-int v4, v4

    and-int/lit8 v34, v4, 0x60

    or-int/lit8 v4, v4, 0x60

    :goto_30
    add-int v34, v34, v4

    move/from16 v4, v34

    .line 2358
    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 240
    :catchall_7
    move-exception v0

    move-object v4, v0

    move/from16 v23, v6

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    :goto_31
    move-object/from16 v39, v15

    goto/16 :goto_43

    .line 2362
    :goto_32
    neg-int v4, v4

    neg-int v4, v4

    not-int v4, v4

    rsub-int v4, v4, 0x2000

    const/16 v27, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 2363
    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 2348
    :goto_33
    xor-int/lit8 v4, v7, 0x1

    and-int/lit8 v7, v7, 0x1

    const/16 v27, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v4

    move/from16 v4, v33

    goto :goto_2e

    .line 2367
    :cond_26
    :try_start_21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    .line 2369
    if-nez v10, :cond_27

    .line 2375
    const/16 v5, 0x3b

    goto :goto_34

    :cond_27
    const/16 v5, 0x52

    :goto_34
    packed-switch v5, :pswitch_data_d

    .line 2371
    move-object/from16 v33, v2

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v37, v13

    move-object/from16 v38, v14

    move-object/from16 v39, v15

    goto/16 :goto_3b

    .line 2373
    :pswitch_d
    if-nez v13, :cond_28

    .line 2375
    const/16 v5, 0x21

    goto :goto_35

    :cond_28
    const/16 v5, 0x12

    :goto_35
    packed-switch v5, :pswitch_data_e

    .line 2377
    move-object/from16 v33, v2

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    if-nez v14, :cond_2d

    goto/16 :goto_38

    .line 238
    :pswitch_e
    sget v5, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    and-int/lit8 v7, v5, 0x5b

    or-int/lit8 v5, v5, 0x5b

    add-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v5, 0x2

    rem-int/2addr v7, v5

    if-eqz v7, :cond_29

    .line 2375
    const/4 v5, 0x7

    const/4 v7, 0x0

    :try_start_22
    div-int/2addr v5, v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :cond_29
    const/4 v5, 0x2

    :try_start_23
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v7, v5

    const/4 v4, 0x0

    aput-object v12, v7, v4

    sget-object v4, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v5, 0x22

    aget-byte v13, v4, v5

    neg-int v5, v13

    int-to-byte v5, v5

    sget v13, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    move-object/from16 v33, v2

    and-int/lit16 v2, v13, 0x3f3

    int-to-short v2, v2

    move-object/from16 v34, v8

    const/16 v30, 0xa1

    :try_start_24
    aget-byte v8, v4, v30

    int-to-byte v8, v8

    invoke-static {v5, v2, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    move-object/from16 v35, v9

    const/16 v5, 0x22

    :try_start_25
    aget-byte v9, v4, v5

    neg-int v5, v9

    int-to-byte v5, v5

    and-int/lit16 v9, v13, 0x3f3

    int-to-short v9, v9

    const/16 v13, 0xa1

    aget-byte v4, v4, v13

    int-to-byte v4, v4

    invoke-static {v5, v9, v4}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v8, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    move-object v13, v2

    move-object/from16 v39, v15

    move-object/from16 v4, v31

    goto/16 :goto_3c

    :catchall_8
    move-exception v0

    goto :goto_37

    :catchall_9
    move-exception v0

    goto :goto_36

    :catchall_a
    move-exception v0

    move-object/from16 v34, v8

    :goto_36
    move-object/from16 v35, v9

    :goto_37
    move-object v2, v0

    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2a

    throw v4

    :cond_2a
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 240
    :catchall_b
    move-exception v0

    move-object v4, v0

    move/from16 v23, v6

    goto/16 :goto_31

    .line 2379
    :goto_38
    nop

    .line 2375
    sget v2, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    xor-int/lit8 v5, v2, 0x61

    const/16 v7, 0x61

    and-int/2addr v2, v7

    const/4 v7, 0x1

    shl-int/2addr v2, v7

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v2, 0x2

    rem-int/2addr v5, v2

    if-nez v5, :cond_2b

    .line 2379
    :cond_2b
    :try_start_27
    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v4, v5, v2

    const/4 v2, 0x0

    aput-object v12, v5, v2

    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v4, 0x22

    aget-byte v7, v2, v4

    neg-int v4, v7

    int-to-byte v4, v4

    sget v7, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v8, v7, 0x3f3

    int-to-short v8, v8

    const/16 v9, 0xa1

    aget-byte v14, v2, v9

    int-to-byte v9, v14

    invoke-static {v4, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const/16 v8, 0x22

    aget-byte v14, v2, v8

    neg-int v8, v14

    int-to-byte v8, v8

    and-int/lit16 v7, v7, 0x3f3

    int-to-short v7, v7

    const/16 v14, 0xa1

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v8, v7, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v9, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v9, v7

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    move-object v14, v2

    move-object/from16 v39, v15

    move-object/from16 v4, v31

    goto/16 :goto_3c

    :catchall_c
    move-exception v0

    move-object v2, v0

    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2c

    throw v4

    :cond_2c
    throw v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .line 2383
    :cond_2d
    const/4 v2, 0x2

    :try_start_29
    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v4, v5, v2

    const/4 v2, 0x0

    aput-object v12, v5, v2

    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v4, 0x22

    aget-byte v7, v2, v4

    neg-int v4, v7

    int-to-byte v4, v4

    sget v7, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v8, v7, 0x3f3

    int-to-short v8, v8

    move-object/from16 v36, v10

    const/16 v9, 0xa1

    aget-byte v10, v2, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const/16 v8, 0x22

    aget-byte v10, v2, v8

    neg-int v8, v10

    int-to-byte v8, v8

    and-int/lit16 v10, v7, 0x3f3

    int-to-short v10, v10

    move-object/from16 v37, v13

    const/16 v30, 0xa1

    aget-byte v13, v2, v30

    int-to-byte v13, v13

    invoke-static {v8, v10, v13}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    .line 2388
    :try_start_2a
    new-array v5, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/16 v8, 0x22

    aget-byte v9, v2, v8

    neg-int v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x132

    int-to-short v9, v9

    aget-byte v10, v2, v22

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Class;

    move-object/from16 v38, v14

    const/16 v10, 0x22

    aget-byte v14, v2, v10
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    neg-int v10, v14

    int-to-byte v10, v10

    and-int/lit16 v7, v7, 0x3f3

    int-to-short v7, v7

    move-object/from16 v39, v15

    const/16 v14, 0xa1

    :try_start_2b
    aget-byte v15, v2, v14

    int-to-byte v14, v15

    invoke-static {v10, v7, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v13, v10

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    .line 238
    sget v7, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    add-int/lit8 v7, v7, 0xf

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    if-nez v7, :cond_2e

    .line 2388
    :cond_2e
    const/16 v7, 0x22

    :try_start_2c
    aget-byte v8, v2, v7

    neg-int v7, v8

    int-to-byte v7, v7

    aget-byte v8, v2, v22

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v7, v9, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x87

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    const/16 v9, 0x174

    int-to-short v9, v9

    aget-byte v2, v2, v24

    int-to-byte v2, v2

    invoke-static {v8, v9, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    move-object/from16 v10, v36

    move-object/from16 v13, v37

    move-object/from16 v14, v38

    goto/16 :goto_3c

    :catchall_d
    move-exception v0

    move-object v2, v0

    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2f

    :goto_39
    throw v5

    :cond_2f
    throw v2

    :catchall_e
    move-exception v0

    goto :goto_3a

    :catchall_f
    move-exception v0

    move-object/from16 v39, v15

    :goto_3a
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_6
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    if-eqz v5, :cond_2f

    goto :goto_39

    .line 2390
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 2392
    :try_start_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v8, 0x2ce

    aget-byte v9, v7, v8

    int-to-byte v8, v9

    sget v9, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v9, v9, 0x3d6

    int-to-short v9, v9

    aget-byte v10, v7, v24

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    aget-byte v5, v7, v5

    int-to-byte v8, v5

    xor-int/lit16 v9, v8, 0x2e8

    and-int/lit16 v10, v8, 0x2e8

    or-int/2addr v9, v10

    int-to-short v9, v9

    int-to-byte v5, v5

    invoke-static {v8, v9, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    const/4 v5, 0x2

    :try_start_2f
    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x0

    aput-object v4, v8, v2

    const/16 v2, 0x22

    aget-byte v4, v7, v2

    neg-int v2, v4

    int-to-byte v2, v2

    const/16 v4, 0x114

    int-to-short v4, v4

    const/4 v5, 0x6

    aget-byte v7, v7, v5

    int-to-byte v5, v7

    invoke-static {v2, v4, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

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

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_10

    :catchall_10
    move-exception v0

    move-object v2, v0

    :try_start_30
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_30

    throw v4

    :cond_30
    throw v2

    .line 2383
    :catchall_11
    move-exception v0

    move-object/from16 v39, v15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_31

    throw v4

    :cond_31
    throw v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    .line 2371
    :goto_3b
    const/4 v2, 0x2

    :try_start_31
    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v4, v5, v2

    const/4 v2, 0x0

    aput-object v12, v5, v2

    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v4, 0x22

    aget-byte v7, v2, v4

    neg-int v4, v7

    int-to-byte v4, v4

    sget v7, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v8, v7, 0x3f3

    int-to-short v8, v8

    const/16 v9, 0xa1

    aget-byte v10, v2, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const/16 v8, 0x22

    aget-byte v10, v2, v8

    neg-int v8, v10

    int-to-byte v8, v8

    and-int/lit16 v7, v7, 0x3f3

    int-to-short v7, v7

    const/16 v10, 0xa1

    aget-byte v2, v2, v10

    int-to-byte v2, v2

    invoke-static {v8, v7, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v9, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v9, v7

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    move-object v10, v2

    move-object/from16 v4, v31

    move-object/from16 v13, v37

    move-object/from16 v14, v38

    .line 2392
    :goto_3c
    move-object/from16 v5, v29

    move-object/from16 v7, v32

    move-object/from16 v2, v33

    move-object/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v15, v39

    goto/16 :goto_2a

    .line 2371
    :catchall_12
    move-exception v0

    move-object v2, v0

    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_32

    throw v4

    :cond_32
    throw v2

    .line 240
    :catchall_13
    move-exception v0

    goto :goto_3e

    :catchall_14
    move-exception v0

    goto :goto_3d

    .line 2330
    :cond_33
    move-object/from16 v31, v4

    move-object/from16 v29, v5

    move-object/from16 v32, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v13

    move-object/from16 v38, v14

    move-object/from16 v39, v15

    goto :goto_41

    .line 240
    :catchall_15
    move-exception v0

    move-object/from16 v29, v5

    :goto_3d
    move-object/from16 v32, v7

    :goto_3e
    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v39, v15

    goto :goto_42

    .line 2326
    :catchall_16
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v32, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v39, v15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_34

    throw v4

    :cond_34
    throw v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    .line 240
    :catchall_17
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v32, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v39, v15

    move-object v4, v0

    move/from16 v23, v6

    move v9, v13

    :goto_3f
    const/16 v8, 0x87

    :goto_40
    const/4 v13, 0x4

    goto/16 :goto_77

    .line 2323
    :cond_35
    move-object/from16 v29, v5

    move-object/from16 v32, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v39, v15

    const/16 v31, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 2399
    :goto_41
    nop

    .line 2375
    const/4 v2, 0x0

    packed-switch v2, :pswitch_data_f

    .line 2405
    const/16 v2, 0x19d6

    :try_start_33
    new-array v2, v2, [B
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_54

    goto :goto_45

    .line 2401
    :pswitch_f
    :try_start_34
    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->getContext:[B
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_18

    goto/16 :goto_46

    .line 240
    :catchall_18
    move-exception v0

    :goto_42
    move-object v4, v0

    move/from16 v23, v6

    :goto_43
    const/16 v8, 0x87

    :goto_44
    const/16 v9, 0xa1

    goto :goto_40

    .line 2406
    :goto_45
    :try_start_35
    const-class v4, Lcom/visa/vac/tc/getTerminalData;

    sget-object v5, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_54

    const/4 v7, 0x4

    :try_start_36
    aget-byte v8, v5, v7
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_53

    int-to-byte v7, v8

    const/16 v8, 0x1c0

    int-to-short v8, v8

    const/4 v9, 0x6

    :try_start_37
    aget-byte v10, v5, v9

    int-to-byte v9, v10

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    .line 2407
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_54

    const/4 v7, 0x1

    :try_start_38
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v8, v7

    const/16 v4, 0x22

    aget-byte v7, v5, v4

    neg-int v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x236

    int-to-short v7, v7

    const/16 v9, 0x17a

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v4, v7, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const/16 v9, 0x22

    aget-byte v12, v5, v9

    neg-int v9, v12

    int-to-byte v9, v9

    const/16 v12, 0x2e

    aget-byte v13, v5, v12

    int-to-short v12, v13

    const/4 v13, 0x6

    aget-byte v14, v5, v13

    int-to-byte v13, v14

    invoke-static {v9, v12, v13}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v10, v12

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_52

    .line 2408
    nop

    .line 272
    nop

    .line 2408
    const/4 v8, 0x1

    :try_start_39
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v9, v8

    const/16 v8, 0x22

    aget-byte v10, v5, v8

    neg-int v8, v10

    int-to-byte v8, v8

    const/16 v10, 0x17a

    aget-byte v10, v5, v10

    int-to-byte v10, v10

    invoke-static {v8, v7, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v10, 0x129

    aget-byte v10, v5, v10

    neg-int v10, v10

    int-to-byte v10, v10

    const/16 v12, 0x31b

    int-to-short v12, v12

    const/16 v13, 0x23

    aget-byte v13, v5, v13

    int-to-byte v13, v13

    invoke-static {v10, v12, v13}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v8, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_51

    .line 2409
    const/16 v8, 0x22

    :try_start_3a
    aget-byte v9, v5, v8

    neg-int v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x17a

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v8, v7, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_50

    const/16 v8, 0x87

    :try_start_3b
    aget-byte v9, v5, v8
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_4f

    int-to-byte v8, v9

    const/16 v9, 0x174

    int-to-short v9, v9

    :try_start_3c
    aget-byte v5, v5, v24

    int-to-byte v5, v5

    invoke-static {v8, v9, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_50

    .line 2412
    :goto_46
    const/16 v4, 0x16

    .line 2413
    nop

    .line 2414
    const/16 v7, 0x19a2

    .line 272
    move-object/from16 v9, v32

    const/4 v8, 0x0

    .line 2421
    :goto_47
    add-int/lit16 v10, v4, 0x118

    add-int/lit16 v12, v4, 0x1808

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :try_start_3d
    aget-byte v12, v2, v12

    add-int/lit8 v12, v12, -0x14

    int-to-byte v12, v12

    aput-byte v12, v2, v10

    .line 2426
    array-length v10, v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_54

    sub-int/2addr v10, v4

    const/4 v12, 0x3

    :try_start_3e
    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v13, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v13, v12

    const/4 v10, 0x0

    aput-object v2, v13, v10

    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v10, 0x22

    aget-byte v12, v2, v10

    neg-int v10, v12

    int-to-byte v10, v10

    xor-int/lit16 v12, v10, 0x318

    and-int/lit16 v14, v10, 0x318

    or-int/2addr v12, v14

    int-to-short v12, v12

    const/16 v14, 0xa8

    aget-byte v14, v2, v14

    int-to-byte v14, v14

    invoke-static {v10, v12, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v12, v14, v15

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v12, v14, v15

    invoke-virtual {v10, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/InputStream;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_4d

    .line 2432
    :try_start_3f
    sget-object v12, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_54

    if-nez v12, :cond_37

    .line 2436
    const v12, 0x1b6cb1c6

    const/4 v13, 0x0

    :try_start_40
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v14

    neg-int v13, v14

    and-int v14, v13, v12

    or-int/2addr v12, v13

    add-int/2addr v14, v12

    const-string v12, ""
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_18

    const/4 v13, 0x2

    :try_start_41
    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x1

    aput-object v3, v15, v13

    const/4 v13, 0x0

    aput-object v12, v15, v13

    const/16 v12, 0x1e7

    aget-byte v12, v2, v12

    neg-int v12, v12

    int-to-byte v12, v12

    const/16 v13, 0x102

    int-to-short v13, v13

    const/16 v23, 0x145

    aget-byte v5, v2, v23

    int-to-byte v5, v5

    invoke-static {v12, v13, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v12, 0xa

    aget-byte v13, v2, v12

    int-to-byte v12, v13

    const/16 v13, 0xed

    int-to-short v13, v13

    const/16 v23, 0x34e

    move/from16 v40, v7

    aget-byte v7, v2, v23

    int-to-byte v7, v7

    invoke-static {v12, v13, v7}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Class;

    const-class v12, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    aput-object v12, v13, v17

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x1

    aput-object v12, v13, v23

    invoke-virtual {v5, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1a

    rsub-int/lit8 v5, v5, 0x8

    const/16 v7, 0x10

    :try_start_42
    new-array v7, v7, [B

    const/16 v12, -0x25

    const/4 v13, 0x0

    aput-byte v12, v7, v13

    const/16 v12, 0x74

    const/4 v13, 0x1

    aput-byte v12, v7, v13

    const/16 v12, 0x20

    const/4 v13, 0x2

    aput-byte v12, v7, v13

    const/16 v12, 0x15

    const/4 v13, 0x3

    aput-byte v12, v7, v13
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_18

    const/16 v12, 0x61

    const/4 v13, 0x4

    :try_start_43
    aput-byte v12, v7, v13
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_19

    const/16 v12, 0x56

    const/4 v13, 0x5

    :try_start_44
    aput-byte v12, v7, v13

    const/16 v12, 0x47

    const/4 v13, 0x6

    aput-byte v12, v7, v13

    const/4 v12, 0x7

    const/16 v13, 0x60

    aput-byte v13, v7, v12

    const/16 v12, 0x8

    const/4 v13, -0x1

    aput-byte v13, v7, v12

    const/16 v12, 0x9

    const/16 v13, 0x36

    aput-byte v13, v7, v12

    const/16 v12, 0x42

    const/16 v13, 0xa

    aput-byte v12, v7, v13

    const/16 v12, -0x67

    aput-byte v12, v7, v22

    const/16 v12, 0xc

    const/16 v13, -0x39

    aput-byte v13, v7, v12

    const/16 v12, 0xd

    const/16 v13, -0x14

    aput-byte v13, v7, v12

    const/16 v12, 0xe

    const/16 v13, -0xe

    aput-byte v13, v7, v12

    const/16 v12, 0xf

    const/16 v13, -0x1d

    aput-byte v13, v7, v12

    .line 3110
    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 3112
    sget-byte v12, Lcom/visa/vac/tc/getTerminalData;->onFailure:B

    move-object v13, v8

    move-object v15, v9

    sget-wide v8, Lcom/visa/vac/tc/getTerminalData;->updateResult:J

    invoke-static {v7, v12, v8, v9}, Lcom/c/c/clear;->ContactlessConfiguration([BBJ)V

    .line 3116
    invoke-static {v14}, Lcom/c/c/ContactlessKernel;->$$a(I)[[B

    move-result-object v8

    .line 3119
    new-instance v9, Lcom/c/c/ContactlessConfiguration;

    invoke-direct {v9, v10, v5, v7, v8}, Lcom/c/c/ContactlessConfiguration;-><init>(Ljava/io/InputStream;I[B[[B)V

    .line 2436
    move/from16 v23, v6

    move-object/from16 v41, v13

    goto/16 :goto_49

    .line 240
    :catchall_19
    move-exception v0

    move-object v4, v0

    move/from16 v23, v6

    const/16 v8, 0x87

    :goto_48
    const/16 v9, 0xa1

    goto/16 :goto_77

    .line 2436
    :catchall_1a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_36

    throw v4

    :cond_36
    throw v2
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_18

    .line 2432
    :cond_37
    move/from16 v40, v7

    move-object v13, v8

    move-object v15, v9

    .line 2443
    const v5, -0x1c1d9b0c

    :try_start_45
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    not-int v7, v7

    sub-int/2addr v5, v7

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    const-string v7, ""

    const-string v8, ""
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_54

    const/4 v9, 0x3

    :try_start_46
    new-array v14, v9, [Ljava/lang/Object;

    const/4 v9, 0x2

    aput-object v3, v14, v9

    const/4 v9, 0x1

    aput-object v8, v14, v9

    const/4 v8, 0x0

    aput-object v7, v14, v8

    const/16 v7, 0x1e7

    aget-byte v7, v2, v7

    neg-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x102

    int-to-short v8, v8

    const/16 v9, 0x145

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x231

    aget-byte v8, v2, v8
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_4c

    neg-int v8, v8

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x2bf

    move/from16 v23, v6

    and-int/lit16 v6, v8, 0x2bf

    or-int/2addr v6, v9

    int-to-short v6, v6

    move-object/from16 v41, v13

    const/4 v9, 0x4

    :try_start_47
    aget-byte v13, v2, v9
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_4b

    int-to-byte v9, v13

    :try_start_48
    invoke-static {v8, v6, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v8, v9, v13

    const-class v8, Ljava/lang/CharSequence;

    const/4 v13, 0x1

    aput-object v8, v9, v13

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x2

    aput-object v8, v9, v13

    invoke-virtual {v7, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_4a

    neg-int v6, v6

    neg-int v6, v6

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    or-int/2addr v6, v8

    add-int/2addr v7, v6

    int-to-short v6, v7

    .line 238
    sget v7, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    or-int/lit8 v9, v7, 0x6f

    const/4 v13, 0x1

    shl-int/2addr v9, v13

    xor-int/lit8 v7, v7, 0x6f

    sub-int/2addr v9, v7

    rem-int/lit16 v7, v9, 0x80

    sput v7, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v7, 0x2

    rem-int/2addr v9, v7

    if-nez v9, :cond_38

    .line 2443
    :cond_38
    const/4 v7, 0x3

    :try_start_49
    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v9, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v9, v6

    const/4 v5, 0x0

    aput-object v10, v9, v5
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_49

    const/16 v5, 0x87

    :try_start_4a
    aget-byte v6, v2, v5
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_48

    int-to-byte v5, v6

    const/16 v6, 0xe0

    int-to-short v6, v6

    const/16 v7, 0x127

    :try_start_4b
    aget-byte v10, v2, v7

    int-to-byte v7, v10

    invoke-static {v5, v6, v7}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v5, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x2f7

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x313

    int-to-short v7, v7

    const/16 v10, 0x11

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    invoke-static {v6, v7, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v10, v7, [Ljava/lang/Class;

    const/16 v7, 0x22

    aget-byte v13, v2, v7

    neg-int v7, v13

    int-to-byte v7, v7

    const/16 v13, 0x2e

    aget-byte v14, v2, v13

    int-to-short v13, v14

    const/4 v14, 0x6

    aget-byte v8, v2, v14

    int-to-byte v8, v8

    invoke-static {v7, v13, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v10, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v10, v8

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v10, v8

    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v12, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/io/InputStream;
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_49

    .line 2446
    :goto_49
    const/16 v5, 0x10

    int-to-long v6, v5

    const/4 v8, 0x1

    :try_start_4c
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v10, v7

    const/16 v6, 0x22

    aget-byte v7, v2, v6

    neg-int v6, v7

    int-to-byte v6, v6

    const/16 v7, 0x2e

    aget-byte v8, v2, v7

    int-to-short v7, v8

    const/4 v8, 0x6

    aget-byte v12, v2, v8

    int-to-byte v8, v12

    invoke-static {v6, v7, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x204

    aget-byte v7, v2, v7

    neg-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x1e9

    int-to-short v8, v8

    const/16 v12, 0x29

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    invoke-static {v7, v8, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v6, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_47

    .line 2450
    if-eqz v11, :cond_39

    .line 2375
    const/4 v6, 0x1

    goto :goto_4a

    :cond_39
    const/4 v6, 0x0

    :goto_4a
    packed-switch v6, :pswitch_data_10

    .line 2452
    move/from16 v42, v4

    move/from16 v44, v11

    move-object/from16 v43, v15

    :try_start_4d
    sget-object v4, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_46

    goto/16 :goto_53

    .line 2461
    :pswitch_10
    nop

    .line 3657
    :try_start_4e
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_25

    .line 3660
    const/4 v9, 0x1

    :try_start_4f
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v10, v9

    const/16 v6, 0x22

    aget-byte v9, v2, v6

    neg-int v6, v9

    int-to-byte v6, v6

    const/16 v9, 0x3bc

    int-to-short v9, v9

    const/16 v12, 0xc6

    aget-byte v12, v2, v12

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v6, v9, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/16 v12, 0x22

    aget-byte v14, v2, v12

    neg-int v12, v14

    int-to-byte v12, v12

    const/16 v14, 0x2e

    aget-byte v5, v2, v14

    int-to-short v5, v5

    const/4 v14, 0x6

    aget-byte v7, v2, v14

    int-to-byte v7, v7

    invoke-static {v12, v5, v7}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v13, v7

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_24

    const/16 v6, 0x22

    :try_start_50
    aget-byte v7, v2, v6

    neg-int v6, v7

    int-to-byte v6, v6

    const/16 v7, 0x21a

    int-to-short v7, v7

    const/16 v10, 0x2ce

    aget-byte v2, v2, v10

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_23

    .line 3663
    const/16 v6, 0x400

    :try_start_51
    new-array v6, v6, [B
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_25

    .line 3664
    const/4 v10, 0x0

    .line 3666
    :goto_4b
    nop

    .line 238
    sget v12, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    or-int/lit8 v13, v12, 0x29

    const/4 v14, 0x1

    shl-int/2addr v13, v14

    xor-int/lit8 v12, v12, 0x29

    sub-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v12, 0x2

    rem-int/2addr v13, v12

    if-eqz v13, :cond_3a

    .line 3666
    :cond_3a
    const/4 v12, 0x1

    :try_start_52
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v13, v12

    sget-object v12, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    move/from16 v42, v4

    const/16 v14, 0x22

    aget-byte v4, v12, v14

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v14, 0xc6

    aget-byte v14, v12, v14

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v4, v9, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v14, 0x129

    aget-byte v14, v12, v14

    neg-int v14, v14

    int-to-byte v14, v14

    move-object/from16 v43, v15

    xor-int/lit16 v15, v14, 0x2a2

    move/from16 v44, v11

    and-int/lit16 v11, v14, 0x2a2

    or-int/2addr v11, v15

    int-to-short v11, v11

    const/16 v15, 0x29

    aget-byte v15, v12, v15

    int-to-byte v15, v15

    invoke-static {v14, v11, v15}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    invoke-virtual {v4, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_22

    if-lez v4, :cond_3b

    .line 2375
    const/4 v11, 0x0

    goto :goto_4c

    :cond_3b
    const/4 v11, 0x1

    :goto_4c
    packed-switch v11, :pswitch_data_11

    .line 3666
    int-to-long v13, v10

    .line 3667
    :try_start_53
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v45
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_25

    cmp-long v11, v13, v45

    if-gez v11, :cond_3d

    .line 3669
    const/4 v11, 0x3

    :try_start_54
    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v13, v14

    const/4 v11, 0x1

    aput-object v3, v13, v11

    const/4 v11, 0x0

    aput-object v6, v13, v11

    const/16 v11, 0x22

    aget-byte v14, v12, v11

    neg-int v11, v14

    int-to-byte v11, v11

    const/16 v14, 0x2ce

    aget-byte v15, v12, v14

    int-to-byte v14, v15

    invoke-static {v11, v7, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v14, 0x4e

    int-to-byte v14, v14

    const/16 v15, 0x2f9

    int-to-short v15, v15

    aget-byte v12, v12, v24

    int-to-byte v12, v12

    invoke-static {v14, v15, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v14, v15, v27

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x2

    aput-object v14, v15, v26

    invoke-virtual {v11, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1b

    .line 3670
    add-int/2addr v10, v4

    move/from16 v4, v42

    move-object/from16 v15, v43

    move/from16 v11, v44

    goto/16 :goto_4b

    .line 3669
    :catchall_1b
    move-exception v0

    move-object v2, v0

    :try_start_55
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3c

    throw v4

    :cond_3c
    throw v2
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_25

    .line 3672
    :cond_3d
    :pswitch_11
    const/16 v4, 0x22

    :try_start_56
    aget-byte v6, v12, v4

    neg-int v4, v6

    int-to-byte v4, v4

    const/16 v6, 0x2ce

    aget-byte v8, v12, v6

    int-to-byte v6, v8

    invoke-static {v4, v7, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x2e3

    aget-byte v6, v12, v6

    neg-int v6, v6

    int-to-byte v6, v6

    or-int/lit8 v8, v6, 0x20

    int-to-short v8, v8

    const/16 v10, 0x11

    aget-byte v10, v12, v10

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_21

    .line 3676
    const/16 v6, 0x22

    :try_start_57
    aget-byte v8, v12, v6

    neg-int v6, v8

    int-to-byte v6, v6

    const/16 v8, 0xc6

    aget-byte v8, v12, v8

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v6, v9, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x87

    aget-byte v9, v12, v8

    int-to-byte v8, v9

    const/16 v9, 0x174

    int-to-short v9, v9

    aget-byte v10, v12, v24

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1c

    goto :goto_4d

    :catchall_1c
    move-exception v0

    move-object v5, v0

    :try_start_58
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3e

    throw v6

    :cond_3e
    throw v5
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_58} :catch_7
    .catchall {:try_start_58 .. :try_end_58} :catchall_25

    :catch_7
    move-exception v0

    .line 3682
    :goto_4d
    :try_start_59
    sget-object v5, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v6, 0x22

    aget-byte v8, v5, v6

    neg-int v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x2ce

    aget-byte v9, v5, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x87

    aget-byte v8, v5, v7

    int-to-byte v7, v8

    const/16 v8, 0x174

    int-to-short v8, v8

    aget-byte v5, v5, v24

    int-to-byte v5, v5

    invoke-static {v7, v8, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1d

    goto :goto_4e

    :catchall_1d
    move-exception v0

    move-object v2, v0

    :try_start_5a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_3f

    throw v5

    :cond_3f
    throw v2
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5a} :catch_8
    .catchall {:try_start_5a .. :try_end_5a} :catchall_25

    :catch_8
    move-exception v0

    .line 3686
    :goto_4e
    :try_start_5b
    const-class v2, Lcom/visa/vac/tc/getTerminalData;
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_25

    :try_start_5c
    const-class v5, Ljava/lang/Class;

    sget-object v6, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v7, 0xa

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    const/16 v8, 0x1e6

    int-to-short v8, v8

    const/16 v9, 0x34e

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_20

    .line 3691
    const/16 v5, 0x203

    :try_start_5d
    aget-byte v7, v6, v5

    int-to-byte v5, v7

    const/16 v7, 0x33e

    int-to-short v7, v7

    const/16 v8, 0x9f

    aget-byte v8, v6, v8

    or-int/lit8 v9, v8, -0x1

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    xor-int/lit8 v8, v8, -0x1

    sub-int/2addr v9, v8

    int-to-byte v8, v9

    invoke-static {v5, v7, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3692
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v7, 0x22

    aget-byte v9, v6, v7

    neg-int v7, v9

    int-to-byte v7, v7

    const/16 v9, 0x382

    int-to-short v9, v9

    const/4 v10, 0x6

    aget-byte v11, v6, v10

    int-to-byte v10, v11

    invoke-static {v7, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v8, v10

    const/16 v7, 0x22

    aget-byte v10, v6, v7

    neg-int v7, v10

    int-to-byte v7, v7

    xor-int/lit16 v10, v7, 0x238

    and-int/lit16 v11, v7, 0x238

    or-int/2addr v10, v11

    int-to-short v10, v10

    const/16 v11, 0x127

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    invoke-static {v7, v10, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v8, v10

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 3694
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_25

    :try_start_5e
    new-array v7, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v7, v10

    const/16 v4, 0x22

    aget-byte v10, v6, v4

    neg-int v4, v10

    int-to-byte v4, v4

    const/4 v10, 0x6

    aget-byte v11, v6, v10

    int-to-byte v10, v11

    invoke-static {v4, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x4e

    int-to-byte v9, v9

    const/16 v10, 0xc6

    aget-byte v10, v6, v10

    neg-int v10, v10

    int-to-short v10, v10

    const/16 v11, 0x29

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v11, v10

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1f

    :try_start_5f
    aput-object v4, v8, v10

    const/4 v4, 0x1

    aput-object v2, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_25

    .line 3707
    const/16 v5, 0x203

    :try_start_60
    aget-byte v7, v6, v5

    int-to-byte v5, v7

    const/16 v7, 0x2cb

    int-to-short v7, v7

    const/16 v8, 0x11a

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3708
    const/4 v7, 0x2

    aget-byte v8, v6, v7

    neg-int v7, v8

    int-to-byte v7, v7

    const/16 v8, 0xcc

    int-to-short v8, v8

    const/16 v9, 0x51

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 3709
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3711
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3712
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3714
    const/16 v9, 0x45

    int-to-byte v9, v9

    aget-byte v10, v6, v22

    neg-int v10, v10

    int-to-short v10, v10

    int-to-byte v11, v10

    invoke-static {v9, v10, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 3715
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3717
    const/16 v11, 0x18c

    int-to-short v11, v11

    const/16 v12, 0x13

    aget-byte v6, v6, v12

    int-to-byte v6, v6

    invoke-static {v9, v11, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 3718
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3720
    invoke-virtual {v10, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3721
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3723
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3726
    new-instance v9, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3728
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3729
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 3731
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    .line 3732
    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_9
    .catchall {:try_start_60 .. :try_end_60} :catchall_25

    .line 3733
    const/4 v12, 0x0

    :goto_4f
    if-ge v12, v11, :cond_41

    .line 238
    sget v13, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    xor-int/lit8 v14, v13, 0x19

    and-int/lit8 v13, v13, 0x19

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v13, 0x2

    rem-int/2addr v14, v13

    if-eqz v14, :cond_40

    .line 3735
    :cond_40
    :try_start_61
    invoke-static {v7, v12}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8, v12, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3733
    xor-int/lit8 v13, v12, 0x1

    and-int/lit8 v12, v12, 0x1

    const/4 v14, 0x1

    shl-int/2addr v12, v14

    add-int/2addr v12, v13

    .line 272
    goto :goto_4f

    .line 3738
    :cond_41
    invoke-virtual {v10, v5, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_9
    .catchall {:try_start_61 .. :try_end_61} :catchall_25

    .line 238
    sget v2, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    xor-int/lit8 v5, v2, 0x19

    and-int/lit8 v2, v2, 0x19

    const/4 v6, 0x1

    shl-int/2addr v2, v6

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v2, 0x2

    rem-int/2addr v5, v2

    if-nez v5, :cond_42

    .line 3749
    :cond_42
    :try_start_62
    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    if-nez v2, :cond_43

    .line 2375
    const/16 v2, 0x11

    goto :goto_50

    :cond_43
    const/16 v2, 0x4c

    :goto_50
    packed-switch v2, :pswitch_data_12

    goto :goto_51

    .line 3751
    :pswitch_12
    sput-object v4, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    .line 3754
    :goto_51
    nop

    .line 2461
    goto/16 :goto_5d

    .line 3741
    :catch_9
    move-exception v0

    move-object v4, v0

    .line 3745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v7, 0x2ce

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    or-int/lit16 v8, v7, 0x261

    int-to-short v8, v8

    aget-byte v9, v6, v24

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x2e

    aget-byte v5, v6, v5

    int-to-byte v7, v5

    xor-int/lit16 v8, v7, 0x2e8

    and-int/lit16 v9, v7, 0x2e8

    or-int/2addr v8, v9

    int-to-short v8, v8

    int-to-byte v5, v5

    invoke-static {v7, v8, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_25

    const/4 v5, 0x2

    :try_start_63
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v7, v5

    const/4 v4, 0x0

    aput-object v2, v7, v4

    const/16 v2, 0x22

    aget-byte v4, v6, v2

    neg-int v2, v4

    int-to-byte v2, v2

    const/16 v4, 0x114

    int-to-short v4, v4

    const/4 v5, 0x6

    aget-byte v6, v6, v5

    int-to-byte v5, v6

    invoke-static {v2, v4, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1e

    :catchall_1e
    move-exception v0

    move-object v2, v0

    :try_start_64
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_44

    throw v4

    :cond_44
    throw v2

    .line 3694
    :catchall_1f
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_45

    throw v4

    :cond_45
    throw v2

    .line 3686
    :catchall_20
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_46

    throw v4

    :cond_46
    throw v2

    .line 3672
    :catchall_21
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_47

    throw v4

    :cond_47
    throw v2

    .line 3666
    :catchall_22
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_48

    throw v4

    :cond_48
    throw v2

    .line 3660
    :catchall_23
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_49

    :goto_52
    throw v4

    :cond_49
    throw v2

    :catchall_24
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_25

    if-eqz v4, :cond_49

    goto :goto_52

    .line 240
    :catchall_25
    move-exception v0

    move-object v4, v0

    goto/16 :goto_43

    .line 2452
    :goto_53
    if-nez v4, :cond_4a

    .line 2375
    const/4 v5, 0x0

    goto :goto_54

    :cond_4a
    const/4 v5, 0x1

    :goto_54
    packed-switch v5, :pswitch_data_13

    .line 238
    sget v5, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    xor-int/lit8 v6, v5, 0x47

    and-int/lit8 v5, v5, 0x47

    const/4 v7, 0x1

    shl-int/2addr v5, v7

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    if-eqz v6, :cond_4b

    goto :goto_55

    .line 2452
    :pswitch_13
    move-object/from16 v5, v37

    goto :goto_56

    :cond_4b
    :goto_55
    move-object/from16 v5, v36

    :goto_56
    if-nez v4, :cond_4c

    .line 2375
    const/16 v4, 0x56

    goto :goto_57

    :cond_4c
    const/16 v4, 0x15

    :goto_57
    packed-switch v4, :pswitch_data_14

    .line 2452
    move-object/from16 v4, v38

    goto :goto_58

    :pswitch_14
    move-object/from16 v4, v31

    .line 3588
    :goto_58
    const/4 v6, 0x1

    :try_start_65
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v7, v6

    const/16 v6, 0x22

    aget-byte v8, v2, v6

    neg-int v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x132

    int-to-short v8, v8

    aget-byte v10, v2, v22

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const/16 v10, 0x22

    aget-byte v12, v2, v10

    neg-int v10, v12

    int-to-byte v10, v10

    sget v12, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v12, v12, 0x3f3

    int-to-short v12, v12

    const/16 v13, 0xa1

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v10, v12, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v11, v10

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_3f

    .line 3594
    const/16 v6, 0x400

    :try_start_66
    new-array v7, v6, [B

    .line 272
    move/from16 v10, v40

    .line 3596
    :goto_59
    if-lez v10, :cond_4d

    .line 2375
    const/4 v11, 0x0

    goto :goto_5a

    :cond_4d
    const/4 v11, 0x1

    :goto_5a
    packed-switch v11, :pswitch_data_15

    .line 3597
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_3e

    const/4 v12, 0x3

    :try_start_67
    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v13, v12

    const/4 v11, 0x1

    aput-object v3, v13, v11

    const/4 v11, 0x0

    aput-object v7, v13, v11

    sget-object v11, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v12, 0x22

    aget-byte v14, v11, v12

    neg-int v12, v14

    int-to-byte v12, v12

    const/16 v14, 0x2e

    aget-byte v15, v11, v14

    int-to-short v14, v15

    const/4 v15, 0x6

    aget-byte v6, v11, v15

    int-to-byte v6, v6

    invoke-static {v12, v14, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v12, 0x129

    aget-byte v12, v11, v12

    neg-int v12, v12

    int-to-byte v12, v12

    xor-int/lit16 v14, v12, 0x2a2

    and-int/lit16 v15, v12, 0x2a2

    or-int/2addr v14, v15

    int-to-short v14, v14

    const/16 v15, 0x29

    aget-byte v15, v11, v15

    int-to-byte v15, v15

    invoke-static {v12, v14, v15}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v14, v15, v27

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x2

    aput-object v14, v15, v26

    invoke-virtual {v6, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_3d

    const/4 v12, -0x1

    if-eq v6, v12, :cond_50

    .line 3600
    nop

    .line 2375
    sget v12, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    add-int/lit8 v12, v12, 0x53

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v13, 0x2

    rem-int/2addr v12, v13

    if-nez v12, :cond_4e

    .line 3600
    :cond_4e
    const/4 v12, 0x3

    :try_start_68
    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x2

    aput-object v12, v13, v14

    const/4 v12, 0x1

    aput-object v3, v13, v12

    const/4 v12, 0x0

    aput-object v7, v13, v12

    const/16 v12, 0x22

    aget-byte v14, v11, v12

    neg-int v12, v14

    int-to-byte v12, v12

    aget-byte v14, v11, v22

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v12, v8, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/16 v14, 0x4e

    int-to-byte v14, v14

    const/16 v15, 0x2f9

    int-to-short v15, v15

    aget-byte v11, v11, v24

    int-to-byte v11, v11

    invoke-static {v14, v15, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v14, v15, v27

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x2

    aput-object v14, v15, v26

    invoke-virtual {v12, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_26

    .line 3601
    neg-int v6, v6

    or-int v11, v10, v6

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    xor-int/2addr v6, v10

    sub-int v10, v11, v6

    .line 272
    const/16 v6, 0x400

    goto/16 :goto_59

    .line 3600
    :catchall_26
    move-exception v0

    move-object v2, v0

    :try_start_69
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4f

    throw v6

    :cond_4f
    throw v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_27

    .line 3633
    :catchall_27
    move-exception v0

    move-object v2, v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    goto/16 :goto_6c

    .line 3606
    :cond_50
    :pswitch_15
    :try_start_6a
    sget-object v6, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v7, 0x22

    aget-byte v9, v6, v7

    neg-int v7, v9

    int-to-byte v7, v7

    aget-byte v9, v6, v22

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0xa

    aget-byte v10, v6, v9

    int-to-byte v9, v10

    const/16 v10, 0x1ca

    int-to-short v10, v10

    aget-byte v11, v6, v24

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_3c

    .line 238
    sget v9, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    and-int/lit8 v10, v9, 0x17

    or-int/lit8 v9, v9, 0x17

    add-int/2addr v10, v9

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v9, 0x2

    rem-int/2addr v10, v9

    if-nez v10, :cond_51

    .line 3606
    :cond_51
    const/16 v9, 0x22

    :try_start_6b
    aget-byte v10, v6, v9

    neg-int v9, v10

    int-to-byte v9, v9

    sget v10, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    and-int/lit16 v11, v10, 0x3c0

    int-to-short v11, v11

    const/16 v12, 0x145

    aget-byte v12, v6, v12

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v11, 0x204

    aget-byte v11, v6, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v12, 0x29e

    int-to-short v12, v12

    const/16 v13, 0x29

    aget-byte v13, v6, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3b

    .line 3607
    const/16 v7, 0x22

    :try_start_6c
    aget-byte v9, v6, v7

    neg-int v7, v9

    int-to-byte v7, v7

    aget-byte v9, v6, v22

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_3a

    const/16 v8, 0x87

    :try_start_6d
    aget-byte v9, v6, v8
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_39

    int-to-byte v8, v9

    const/16 v9, 0x174

    int-to-short v9, v9

    :try_start_6e
    aget-byte v11, v6, v24

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_3a

    .line 3619
    const/16 v2, 0x203

    :try_start_6f
    aget-byte v7, v6, v2

    int-to-byte v2, v7

    const/16 v7, 0x2e8

    int-to-short v7, v7

    const/16 v8, 0x127

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v2, v7, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3620
    const/16 v7, 0x2c9

    aget-byte v7, v6, v7
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_3e

    int-to-byte v7, v7

    const/16 v8, 0x220

    int-to-short v8, v8

    const/4 v9, 0x4

    :try_start_70
    aget-byte v11, v6, v9
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_38

    int-to-byte v9, v11

    :try_start_71
    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v9, v11

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v8, v9, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v8, v9, v11

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3624
    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_3e

    .line 272
    sget v7, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    and-int/lit8 v9, v7, 0x5b

    or-int/lit8 v7, v7, 0x5b

    add-int/2addr v9, v7

    rem-int/lit16 v7, v9, 0x80

    sput v7, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v7, 0x2

    rem-int/2addr v9, v7

    if-eqz v9, :cond_52

    .line 3624
    :cond_52
    const/16 v7, 0x22

    :try_start_72
    aget-byte v9, v6, v7

    neg-int v7, v9

    int-to-byte v7, v7

    and-int/lit16 v9, v10, 0x3f3

    int-to-short v9, v9

    const/16 v11, 0xa1

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    invoke-static {v7, v9, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0xa

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    const/16 v11, 0x159

    int-to-short v11, v11

    const/16 v12, 0x61

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_37

    const/4 v9, 0x0

    :try_start_73
    aput-object v7, v8, v9
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_3e

    const/16 v7, 0x22

    :try_start_74
    aget-byte v9, v6, v7

    neg-int v7, v9

    int-to-byte v7, v7

    and-int/lit16 v9, v10, 0x3f3

    int-to-short v9, v9

    const/16 v12, 0xa1

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v7, v9, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0xa

    aget-byte v12, v6, v9

    int-to-byte v9, v12

    const/16 v12, 0x61

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_36

    const/4 v9, 0x1

    :try_start_75
    aput-object v7, v8, v9

    .line 3627
    const/4 v7, 0x2

    aput-object v3, v8, v7

    .line 3624
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3e

    .line 3633
    const/16 v7, 0x22

    :try_start_76
    aget-byte v8, v6, v7

    neg-int v7, v8

    int-to-byte v7, v7

    and-int/lit16 v8, v10, 0x3f3

    int-to-short v8, v8

    const/16 v9, 0xa1

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    invoke-static {v7, v8, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x203

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    const/16 v9, 0x1cf

    int-to-short v9, v9

    const/16 v11, 0x5e

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_34

    .line 3634
    nop

    .line 2375
    sget v5, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 v5, v5, 0x1d

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v7, 0x2

    rem-int/2addr v5, v7

    if-eqz v5, :cond_53

    .line 3634
    :cond_53
    const/16 v5, 0x22

    :try_start_77
    aget-byte v7, v6, v5

    neg-int v5, v7

    int-to-byte v5, v5

    and-int/lit16 v7, v10, 0x3f3

    int-to-short v7, v7

    const/16 v8, 0xa1

    aget-byte v10, v6, v8

    int-to-byte v8, v10

    invoke-static {v5, v7, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x203

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    const/16 v8, 0x5e

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    invoke-static {v7, v9, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_33

    .line 272
    sget v4, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 v4, v4, 0x54

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-eqz v4, :cond_54

    .line 3639
    :try_start_78
    sget-object v4, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    const/16 v5, 0x1b

    const/4 v7, 0x0

    div-int/2addr v5, v7
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_25

    if-nez v4, :cond_56

    goto :goto_5b

    :cond_54
    :try_start_79
    sget-object v4, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_32

    if-nez v4, :cond_56

    .line 3641
    :goto_5b
    :try_start_7a
    const-class v4, Lcom/visa/vac/tc/getTerminalData;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_25

    :try_start_7b
    const-class v5, Ljava/lang/Class;

    const/16 v7, 0xa

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    const/16 v8, 0x1e6

    int-to-short v8, v8

    const/16 v9, 0x34e

    aget-byte v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v7, v8, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_28

    :try_start_7c
    sput-object v4, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    goto :goto_5c

    :catchall_28
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_55

    throw v4

    :cond_55
    throw v2
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_25

    .line 3644
    :cond_56
    :goto_5c
    nop

    .line 2452
    nop

    .line 238
    sget v4, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    and-int/lit8 v5, v4, 0x59

    or-int/lit8 v4, v4, 0x59

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    if-eqz v5, :cond_57

    .line 272
    :cond_57
    move-object v4, v2

    .line 2467
    :goto_5d
    if-eqz v44, :cond_5a

    .line 2471
    :try_start_7d
    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v5, 0x203

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x2e8

    int-to-short v6, v6

    const/16 v7, 0x127

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2472
    const/16 v6, 0x2c9

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x61

    int-to-short v8, v7

    const/16 v7, 0x23

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    invoke-static {v6, v8, v7}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/16 v7, 0x22

    aget-byte v9, v2, v7

    neg-int v7, v9

    int-to-byte v7, v7

    xor-int/lit16 v9, v7, 0x238

    and-int/lit16 v10, v7, 0x238

    or-int/2addr v9, v10

    int-to-short v9, v9

    const/16 v10, 0x127

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v7, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2475
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v43, v8, v7

    const-class v7, Lcom/visa/vac/tc/getTerminalData;
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_25

    :try_start_7e
    const-class v9, Ljava/lang/Class;
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_2b

    const/16 v10, 0xa

    :try_start_7f
    aget-byte v11, v2, v10

    int-to-byte v11, v11

    const/16 v12, 0x1e6

    int-to-short v12, v12

    const/16 v13, 0x34e

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2a

    const/4 v9, 0x1

    :try_start_80
    aput-object v7, v8, v9

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_25

    .line 2484
    if-eqz v6, :cond_58

    .line 2486
    const/16 v7, 0x87

    :try_start_81
    aget-byte v8, v2, v7
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_29

    int-to-byte v7, v8

    const/16 v8, 0x174

    int-to-short v8, v8

    :try_start_82
    aget-byte v2, v2, v24

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2487
    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_25

    goto :goto_5e

    .line 240
    :catchall_29
    move-exception v0

    move-object v4, v0

    move v8, v7

    goto/16 :goto_44

    .line 2487
    :cond_58
    :goto_5e
    nop

    .line 238
    sget v2, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    or-int/lit8 v5, v2, 0x2d

    const/4 v7, 0x1

    shl-int/2addr v5, v7

    xor-int/lit8 v2, v2, 0x2d

    sub-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v2, 0x2

    rem-int/2addr v5, v2

    .line 2515
    move-object v2, v6

    const/16 v7, 0x127

    const/16 v8, 0x61

    goto :goto_60

    .line 2475
    :catchall_2a
    move-exception v0

    goto :goto_5f

    :catchall_2b
    move-exception v0

    const/16 v10, 0xa

    :goto_5f
    move-object v2, v0

    :try_start_83
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_59

    throw v4

    :cond_59
    throw v2
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_25

    .line 2467
    :cond_5a
    const/16 v10, 0xa

    .line 2494
    :try_start_84
    sget-object v2, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v5, 0x22

    aget-byte v6, v2, v5

    neg-int v5, v6

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x238

    and-int/lit16 v7, v5, 0x238

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x127

    aget-byte v8, v2, v7

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2495
    const/16 v6, 0x2c9

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v8, 0x61

    int-to-short v9, v8

    const/16 v11, 0x23

    aget-byte v2, v2, v11

    int-to-byte v2, v2

    invoke-static {v6, v9, v2}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    invoke-virtual {v5, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_32

    .line 2499
    const/4 v5, 0x1

    :try_start_85
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v43, v6, v11

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_85 .. :try_end_85} :catch_a
    .catchall {:try_start_85 .. :try_end_85} :catchall_25

    .line 272
    goto :goto_60

    .line 2502
    :catch_a
    move-exception v0

    move-object v2, v0

    .line 2506
    :try_start_86
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_86 .. :try_end_86} :catch_b
    .catchall {:try_start_86 .. :try_end_86} :catchall_25

    .line 2508
    :catch_b
    move-exception v0

    .line 2510
    const/4 v2, 0x0

    .line 2515
    :goto_60
    if-eqz v2, :cond_60

    .line 2517
    :try_start_87
    check-cast v2, Ljava/lang/Class;

    .line 2522
    sget-object v5, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_32

    const/16 v6, 0x87

    :try_start_88
    aget-byte v9, v5, v6
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_31

    int-to-byte v6, v9

    const/4 v9, 0x3

    :try_start_89
    aget-byte v11, v5, v9

    int-to-short v11, v11

    const/16 v12, 0x4a

    aget-byte v12, v5, v12

    int-to-byte v12, v12

    invoke-static {v6, v11, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    .line 2527
    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v11, v12, v13

    .line 2528
    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 2529
    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2530
    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v13, v12
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_32

    if-nez v44, :cond_5c

    .line 238
    sget v4, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    xor-int/lit8 v12, v4, 0x71

    and-int/lit8 v4, v4, 0x71

    const/4 v14, 0x1

    shl-int/2addr v4, v14

    add-int/2addr v12, v4

    rem-int/lit16 v4, v12, 0x80

    sput v4, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v4, 0x2

    rem-int/2addr v12, v4

    if-nez v12, :cond_5b

    .line 2375
    const/16 v4, 0x4a

    goto :goto_61

    :cond_5b
    const/16 v4, 0x5a

    :goto_61
    packed-switch v4, :pswitch_data_16

    .line 238
    const/4 v4, 0x1

    goto :goto_62

    .line 2530
    :pswitch_16
    const/4 v4, 0x1

    goto :goto_62

    :cond_5c
    const/4 v4, 0x0

    :goto_62
    :try_start_8a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v13, v12

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;

    .line 2532
    nop

    .line 2533
    nop

    .line 2539
    const/16 v11, 0x181e

    new-array v11, v11, [B

    .line 2540
    const-class v12, Lcom/visa/vac/tc/getTerminalData;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_32

    const/4 v13, 0x4

    :try_start_8b
    aget-byte v14, v5, v13

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0xa0

    and-int/lit16 v4, v14, 0xa0

    or-int/2addr v4, v15

    int-to-short v4, v4

    const/4 v15, 0x6

    aget-byte v7, v5, v15

    int-to-byte v7, v7

    invoke-static {v14, v4, v7}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    .line 2541
    invoke-virtual {v12, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_30

    const/4 v7, 0x1

    :try_start_8c
    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v12, v7

    const/16 v4, 0x22

    aget-byte v7, v5, v4

    neg-int v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x236

    int-to-short v7, v7

    const/16 v14, 0x17a

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    invoke-static {v4, v7, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v14, 0x22

    aget-byte v8, v5, v14

    neg-int v8, v8

    int-to-byte v8, v8

    const/16 v14, 0x2e

    aget-byte v9, v5, v14

    int-to-short v9, v9

    const/4 v14, 0x6

    aget-byte v10, v5, v14

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v15, v9

    invoke-virtual {v4, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_2f

    .line 2543
    const/4 v8, 0x1

    :try_start_8d
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v9, v8

    const/16 v8, 0x22

    aget-byte v10, v5, v8

    neg-int v8, v10

    int-to-byte v8, v8

    const/16 v10, 0x17a

    aget-byte v10, v5, v10

    int-to-byte v10, v10

    invoke-static {v8, v7, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v10, 0x129

    aget-byte v10, v5, v10

    neg-int v10, v10

    int-to-byte v10, v10

    const/16 v12, 0x31b

    int-to-short v12, v12

    const/16 v14, 0x23

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    invoke-static {v10, v12, v14}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    invoke-virtual {v8, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_2e

    .line 2544
    const/16 v8, 0x22

    :try_start_8e
    aget-byte v9, v5, v8

    neg-int v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x17a

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v8, v7, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2d

    const/16 v8, 0x87

    :try_start_8f
    aget-byte v9, v5, v8

    int-to-byte v9, v9

    const/16 v10, 0x174

    int-to-short v10, v10

    aget-byte v5, v5, v24

    int-to-byte v5, v5

    invoke-static {v9, v10, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_2c

    .line 2548
    :try_start_90
    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2556
    move-object v8, v2

    move-object v9, v6

    move-object v2, v11

    move/from16 v6, v23

    move/from16 v11, v44

    const/16 v7, 0x17f3

    goto/16 :goto_47

    .line 2544
    :catchall_2c
    move-exception v0

    goto :goto_63

    :catchall_2d
    move-exception v0

    const/16 v8, 0x87

    :goto_63
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5d

    throw v4

    :cond_5d
    throw v2

    .line 2543
    :catchall_2e
    move-exception v0

    const/16 v8, 0x87

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5e

    throw v4

    :cond_5e
    throw v2

    .line 2541
    :catchall_2f
    move-exception v0

    const/16 v8, 0x87

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5f

    throw v4

    :cond_5f
    throw v2

    .line 240
    :catchall_30
    move-exception v0

    const/16 v8, 0x87

    goto/16 :goto_67

    :catchall_31
    move-exception v0

    move v8, v6

    goto :goto_66

    .line 2515
    :cond_60
    const/16 v8, 0x87

    const/4 v13, 0x4

    .line 2553
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 2554
    move-object/from16 v2, v41

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2555
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2556
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    if-nez v44, :cond_61

    const/4 v4, 0x1

    goto :goto_64

    :cond_61
    const/4 v4, 0x0

    :goto_64
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_35

    .line 3639
    sget v2, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-nez v2, :cond_62

    .line 2375
    const/16 v2, 0x4d

    goto :goto_65

    :cond_62
    const/16 v2, 0x23

    :goto_65
    packed-switch v2, :pswitch_data_17

    .line 238
    const/16 v2, 0x9

    const/4 v4, 0x0

    const/16 v9, 0xa1

    const/16 v28, 0x0

    goto/16 :goto_7a

    :pswitch_17
    const/16 v2, 0x9

    const/4 v4, 0x0

    const/16 v9, 0xa1

    const/16 v28, 0x1

    goto/16 :goto_7a

    .line 240
    :catchall_32
    move-exception v0

    const/16 v8, 0x87

    :goto_66
    const/4 v13, 0x4

    goto :goto_67

    .line 3634
    :catchall_33
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    :try_start_91
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_63

    throw v4

    :cond_63
    throw v2

    .line 3633
    :catchall_34
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_64

    throw v4

    :cond_64
    throw v2
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_35

    .line 240
    :catchall_35
    move-exception v0

    :goto_67
    move-object v4, v0

    goto/16 :goto_48

    .line 3624
    :catchall_36
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    :try_start_92
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_65

    :goto_68
    throw v6

    :cond_65
    throw v2

    :catchall_37
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_65

    goto :goto_68

    .line 3633
    :catchall_38
    move-exception v0

    move v13, v9

    const/16 v8, 0x87

    goto :goto_6b

    .line 3607
    :catchall_39
    move-exception v0

    goto :goto_69

    :catchall_3a
    move-exception v0

    const/16 v8, 0x87

    :goto_69
    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_66

    throw v6

    :cond_66
    throw v2

    .line 3606
    :catchall_3b
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_67

    :goto_6a
    throw v6

    :cond_67
    throw v2

    :catchall_3c
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_67

    goto :goto_6a

    .line 3597
    :catchall_3d
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_68

    throw v6

    :cond_68
    throw v2
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_40

    .line 3633
    :catchall_3e
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    goto :goto_6b

    .line 3588
    :catchall_3f
    move-exception v0

    const/16 v8, 0x87

    const/4 v13, 0x4

    move-object v2, v0

    :try_start_93
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_69

    throw v6

    :cond_69
    throw v2
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_c
    .catchall {:try_start_93 .. :try_end_93} :catchall_40

    .line 3633
    :catchall_40
    move-exception v0

    :goto_6b
    move-object v2, v0

    goto/16 :goto_6c

    .line 3590
    :catch_c
    move-exception v0

    move-object v2, v0

    .line 3592
    :try_start_94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v9, 0x2ce

    aget-byte v10, v7, v9

    int-to-byte v9, v10

    const/16 v10, 0x281

    int-to-short v10, v10

    aget-byte v11, v7, v24

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x2e

    aget-byte v9, v7, v9

    int-to-byte v10, v9

    xor-int/lit16 v11, v10, 0x2e8

    and-int/lit16 v12, v10, 0x2e8

    or-int/2addr v11, v12

    int-to-short v11, v11

    int-to-byte v9, v9

    invoke-static {v10, v11, v9}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_40

    const/4 v9, 0x2

    :try_start_95
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x1

    aput-object v2, v10, v9

    const/4 v2, 0x0

    aput-object v6, v10, v2

    const/16 v2, 0x22

    aget-byte v6, v7, v2

    neg-int v2, v6

    int-to-byte v2, v2

    const/16 v6, 0x114

    int-to-short v6, v6

    const/4 v9, 0x6

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v2, v6, v7}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v7, v9

    const-class v6, Ljava/lang/Throwable;

    const/4 v9, 0x1

    aput-object v6, v7, v9

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_41

    :catchall_41
    move-exception v0

    move-object v2, v0

    :try_start_96
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_6a

    throw v6

    :cond_6a
    throw v2
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_40

    .line 3633
    :goto_6c
    :try_start_97
    sget-object v6, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v7, 0x22

    aget-byte v9, v6, v7

    neg-int v7, v9

    int-to-byte v7, v7

    sget v9, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_45

    and-int/lit16 v10, v9, 0x3f3

    int-to-short v10, v10

    const/16 v11, 0xa1

    :try_start_98
    aget-byte v12, v6, v11
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_44

    int-to-byte v11, v12

    :try_start_99
    invoke-static {v7, v10, v11}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v10, 0x203

    aget-byte v11, v6, v10

    int-to-byte v10, v11

    const/16 v11, 0x1cf

    int-to-short v11, v11

    const/16 v12, 0x5e

    aget-byte v12, v6, v12

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_45

    .line 3634
    const/16 v5, 0x22

    :try_start_9a
    aget-byte v7, v6, v5
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_43

    neg-int v5, v7

    int-to-byte v5, v5

    and-int/lit16 v7, v9, 0x3f3

    int-to-short v7, v7

    const/16 v9, 0xa1

    :try_start_9b
    aget-byte v10, v6, v9

    int-to-byte v10, v10

    invoke-static {v5, v7, v10}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x203

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v10, 0x5e

    aget-byte v6, v6, v10

    int-to-byte v6, v6

    invoke-static {v7, v11, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_42

    .line 3635
    :try_start_9c
    throw v2

    .line 3634
    :catchall_42
    move-exception v0

    goto :goto_6d

    :catchall_43
    move-exception v0

    const/16 v9, 0xa1

    :goto_6d
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6b

    throw v4

    :cond_6b
    throw v2

    .line 3633
    :catchall_44
    move-exception v0

    move v9, v11

    goto :goto_6e

    :catchall_45
    move-exception v0

    const/16 v9, 0xa1

    :goto_6e
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6c

    throw v4

    :cond_6c
    throw v2

    .line 240
    :catchall_46
    move-exception v0

    goto/16 :goto_74

    .line 2446
    :catchall_47
    move-exception v0

    const/16 v8, 0x87

    const/16 v9, 0xa1

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6d

    throw v4

    :cond_6d
    throw v2

    .line 2443
    :catchall_48
    move-exception v0

    move v8, v5

    goto :goto_6f

    :catchall_49
    move-exception v0

    const/16 v8, 0x87

    :goto_6f
    const/16 v9, 0xa1

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6e

    :goto_70
    throw v4

    :cond_6e
    throw v2

    :catchall_4a
    move-exception v0

    goto :goto_71

    :catchall_4b
    move-exception v0

    move v13, v9

    const/16 v8, 0x87

    const/16 v9, 0xa1

    goto :goto_72

    :catchall_4c
    move-exception v0

    move/from16 v23, v6

    :goto_71
    const/16 v8, 0x87

    const/16 v9, 0xa1

    const/4 v13, 0x4

    :goto_72
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6e

    goto :goto_70

    .line 2426
    :catchall_4d
    move-exception v0

    move/from16 v23, v6

    const/16 v8, 0x87

    const/16 v9, 0xa1

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6f

    throw v4

    :cond_6f
    throw v2

    .line 240
    :catchall_4e
    move-exception v0

    goto :goto_76

    .line 2409
    :catchall_4f
    move-exception v0

    move/from16 v23, v6

    goto :goto_73

    :catchall_50
    move-exception v0

    move/from16 v23, v6

    const/16 v8, 0x87

    :goto_73
    const/16 v9, 0xa1

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_70

    throw v4

    :cond_70
    throw v2

    .line 2408
    :catchall_51
    move-exception v0

    move/from16 v23, v6

    const/16 v8, 0x87

    const/16 v9, 0xa1

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_71

    throw v4

    :cond_71
    throw v2

    .line 2407
    :catchall_52
    move-exception v0

    move/from16 v23, v6

    const/16 v8, 0x87

    const/16 v9, 0xa1

    const/4 v13, 0x4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_72

    throw v4

    :cond_72
    throw v2
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_4e

    .line 240
    :catchall_53
    move-exception v0

    move/from16 v23, v6

    move v13, v7

    const/16 v8, 0x87

    const/16 v9, 0xa1

    goto :goto_76

    :catchall_54
    move-exception v0

    move/from16 v23, v6

    :goto_74
    const/16 v8, 0x87

    const/16 v9, 0xa1

    goto :goto_75

    :catchall_55
    move-exception v0

    move/from16 v28, v2

    move-object/from16 v29, v5

    move/from16 v23, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move v9, v13

    move-object/from16 v39, v15

    const/16 v8, 0x87

    :goto_75
    const/4 v13, 0x4

    :goto_76
    move-object v4, v0

    .line 243
    :goto_77
    nop

    .line 244
    add-int/lit8 v6, v23, 0x2

    const/4 v2, 0x1

    sub-int/2addr v6, v2

    :goto_78
    const/16 v2, 0x9

    if-ge v6, v2, :cond_74

    .line 246
    :try_start_9d
    aget-boolean v5, v39, v6

    if-eqz v5, :cond_73

    .line 248
    const/4 v5, 0x1

    goto :goto_79

    .line 244
    :cond_73
    add-int/lit8 v6, v6, 0x2

    const/4 v5, 0x1

    sub-int/2addr v6, v5

    goto :goto_78

    :cond_74
    const/4 v5, 0x0

    .line 253
    :goto_79
    if-eqz v5, :cond_75

    .line 261
    const/4 v4, 0x0

    sput-object v4, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;

    .line 262
    sput-object v4, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    .line 267
    :goto_7a
    add-int/lit8 v6, v23, 0x2

    const/4 v5, 0x1

    sub-int/2addr v6, v5

    .line 272
    move v13, v9

    move/from16 v2, v28

    move-object/from16 v5, v29

    move-object/from16 v7, v32

    move-object/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v15, v39

    const/4 v4, 0x1

    const/4 v12, 0x5

    const/4 v14, 0x2

    goto/16 :goto_1f

    .line 256
    :cond_75
    sget-object v1, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v2, 0x2ce

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v3, 0x29b

    int-to-short v3, v3

    const/16 v5, 0x17a

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    invoke-static {v2, v3, v5}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_d

    const/4 v3, 0x2

    :try_start_9e
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const/16 v2, 0x22

    aget-byte v2, v1, v2

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x114

    int-to-short v3, v3

    const/4 v4, 0x6

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_56

    :catchall_56
    move-exception v0

    move-object v1, v0

    :try_start_9f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_76

    throw v2

    :cond_76
    throw v1

    .line 267
    :goto_7b
    nop

    .line 272
    return-void

    .line 144
    :catchall_57
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    goto/16 :goto_16

    .line 134
    :catchall_58
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_77

    :goto_7c
    throw v2

    :cond_77
    throw v1

    :catchall_59
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_9f} :catch_d

    if-eqz v2, :cond_77

    goto :goto_7c

    .line 270
    :catch_d
    move-exception v0

    move-object v1, v0

    .line 272
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x2c
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

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x61
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_9
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2c
        :pswitch_a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x37
        :pswitch_b
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x52
        :pswitch_d
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x21
        :pswitch_e
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1
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
    .packed-switch 0x11
        :pswitch_12
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x15
        :pswitch_14
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x5a
        :pswitch_16
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x23
        :pswitch_17
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ContactlessConfiguration(ICI)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    and-int/lit8 v1, v0, 0x5b

    or-int/lit8 v0, v0, 0x5b

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/visa/vac/tc/getTerminalData;->startTransaction:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v0, v0, 0x5a

    sub-int/2addr v0, v4

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    const/4 v0, 0x3

    :try_start_1
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    sget-object p0, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 p1, 0x87

    aget-byte p1, p0, p1

    int-to-byte p1, p1

    const/16 p2, 0xe0

    int-to-short p2, p2

    const/16 v6, 0x127

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {p1, p2, v6}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/visa/vac/tc/getTerminalData;->clearInternalData:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p1, v4, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0xa

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    const/16 v6, 0x1ae

    int-to-short v6, v6

    const/16 v7, 0x61

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {p2, v6, p0}, Lcom/visa/vac/tc/getTerminalData;->$$d(SSB)Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v3

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v2

    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget p1, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    or-int/lit8 p2, p1, 0x21

    shl-int/2addr p2, v4

    xor-int/lit8 p1, p1, 0x21

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/2addr p2, v2

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static init$0()V
    .locals 4

    sget v0, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x3d2

    new-array v1, v0, [B

    const-string v2, "5\u0084\u00b9Y\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00ca\u000c\u00fd\u00fe\u00f0\n\u00fe\u0018\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u0006\u00e8\u00120\u00bf\u0008\u00f0\u00046\u00d8\u00d7\u0003\u00fc\u000c\u00f5\u00eb\u0000\u00fd\n\u00f4\u00f70\u00ce\u00fd\u0001\u0000\u0003\u00ff\u00ea\u0008\u00f7\u00fe\u0006\u00e8\u00120\u00bd\u0002\u00f7>\u00e9\u00c6\u0002\u000c \u00ca\u000c\u00fd\u00fe\u00f0\u00f0\u0007\u00ef\u0000\u0003\u00023\u00bc\u00f9B\u00e9\u00ca\t\u00fa\u0005=\u00cb\u000e\u00f0\u00fc\u0007\u00f7\u00fe\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5-\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e2\u00d8\u001e\u00e5\u00f5\u00fb\u00fa\u00f62\u00dc\u00ea2\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\n\u0001\u00fa\u001b\u00ce\u0006\u00fd\u00f0\u00ca\t\u00fa\u0005\u001e\u00d1\u00fe\u0005\u00fa\u00ff\u00ff\u00ee+\u00da\u00fa\u0004\u00ef,\u00d8\u00f4\u00f8\u0007\u00fc\u00ea&\u00e6\u0002\u0006\u00f2\u000c\u00ff\u00ee.\u00df\u00fb\u00f8\u0000\u001e\u00d8\u00f4\n\u0001\u00fa\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e7\u00dc\u00ea/\u00da\u00fa\u0004\u00f1\u0008\u00fc\u0003\u00f9\u00ff\u00fb\u00f8\u0000\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e9\u00de\u00eb\u000b\u001e\u00dc\u00ea2\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00ff\u00ee.\u00d1\u0008\u00fc\u001f\u00df\u00fb\u00f8\u0000\u001e\u00d8\u00f4\u00f7\u0008\u0008\u0012\u00f6\u0014\u00f5\u00b7\u00fcL\u00b7\u0002\u00f2\u00fd\u0007\u00fe\u00fb\u00f5\u00f5P\u00b1\u0004\u00fc\u00efH\u0012\u00f7\u0013\u00f5\u0012\u00f9\u0011\u00f5\u0012\u00f5\u0015\u00f5\u0006\u00e8\u00120\u00bf\u0008\u00f0\u00046\u00e8\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00f0\u0007\u00ef\u0000\u0003\u00023\u00ca\u00ee\u00fd?\u00ea\u00ce\u00fd&\u00d8\u00fa\n\u00fe\u00f2\u00f6\u00ff\u00ee,\u00ca\u0001\u000c\u00f0\u0001\n\u00f2\u0016\u00dc\u0002\u00fa\u000e\u00f7\u00ff\u001e\u00d8\u00f4\n\u00ff\u00ec\u0002\u00fa\u00f6\u0006\u00e8\u00120\u00c2\u00f7>\u00e7\u00e0\u00ea\u0010\u0015\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00fa\u000b\u00fa\u001d\u00dc\u00ea\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5\'\u00d7\u00fe\u0001\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00f0\u0007\u00ef\u0000\u0003\u00023\u00bc\u00f9B\u00e6\u00d4\u00f5\n\u00f4\u0000\u00fe\u00fe\u0005\u00f4\u00f7\u0005\u00ff\u00f6\u00ff\u00ee.\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00c8\u0000\u00ea\u0010/\u00c8\u0000\u00ea\u0010/\u00fc\u00f6\u0004\u00ee\u000c\u00ff\u00ee+\u00ff\u000c\u00f6\u00e9\u0013\u00f8\u00f7\u00c9\u00f1\u00ff;\u00b6\n\u00f3\u000f/\u00b6\u0012\u00fb1\u00b8\u000e1\u00c93\u00ff\u00ee\u001d\u00ec\u00f0\u0002\u0001\u00f8\n\u00f2%\u00e0\u00ea\u0010\u00f1\u00ff;\u00b6\n\u00f3\u000f/\u00b6\u0012\u00fb1\u00b8\u000e1\u0008\u00fd\u00c0:\u00fd\n\u00ea\u0008\u00f0\u000e\u0016\u00e0\u0004\u00ed\u000e\u00ec\u00f6&\u00ec\u00ea\t \u00d6\u0004\u00f5\u0005\u00f4\u00f7\u00fe\u00f4\u00fa\u00f9\u000b\u0006\u00e8\u00120\u00c2\u00f7>\u00b7\u0004\u00fa\t\u00f8\u00f4\u00ff\u00ee!\u00db\u0000\u00fc\u0008\u00f0\u00fb\u00f8\u00ff\u00ee0\u00dc\u00ec\u0001\u0000\u00f4\u00fe\u000c\u0012\u00ec\u00ea\t\u00f0\u0007\u00ef\u0000\u0003\u00023\u00ca\u00ee\u00fd?\u00ea\u00db\u00ec\u0008\u00f0\n\u00f2\u00f8\"\u00e9\u00f3\n\u0001\u00fa\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u0013\u00d7\u00fe\u0001\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00ff\u00f0\u0014\u00e2\u0006\u00f2\u000c\u0006\u00e8\u00120\u00c2\u00f7>\u00e2\u00f7\u0007\u00ca\u0012\u00fb\u00f2\u00f9\u0008\u00f7\u00fe\u00f0\u0007\u00ef\u0000\u0003\u00023\u00b7\u000c\u00ea\u0001C\u00d7\u00ec\u00ea\u0001\u001c\u00de\u0008\u00fa\u00f6\u00ff\u00ee\"\u00e6\u00fd\u00f0\u000b\u00ee0\u00d8\u00ef\u000c\u00f0\u00f1\u00ff<\u00b5\n\u00f3\u000f0\u00b5\u0012\u00fb2\u00b7\u000e2\u0007\u00fd\u00c0:\u00fd\u000c\u00ea\t\u0019\u00e0\u00f3\u00fc\u00ff\u00ee(\u00d8\u0002\u00f2\u0008\u0005\u00f2(\u00ce\u00fd\u0001\u0000\u0003\u00ff\u00ea\u0008\u00f7\u00fe\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u00c9\u00f1\u00ff;\u00b6\n\u00f3\u000f/\u00b6\u0012\u00fb1\u00b8\u000e1\u00c84\u0012\u00fa\u0010\u00f5\u00eb\u0000\u00fd\n\u00f4\u00f7\u001d\u00e8\u00f9\u0005\u0015\u00e1\u00fa\u00fd\u0000\u00f3\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u001e\u00dc\u00ef\r\u00ee\u0006\u00f6\u00f9\u0002\u00fa\u0002*\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5\u00fa\u000b\u00fa\u001e\u00d4\u0008\u00eb\u00fd\u00f1\u00ff;\u00b6\n\u00f3\u000f/\u00b6\u0012\u00fb1\u00b8\u000e1\u00c5\u00ff\u00ee\u001d\u00ec\u00f0\u0002\u0001\u00f8\n\u00f2%\u00e0\u00ea\u0010:\u00b8\u00ff\u00ee(\u00d8\u00f8\u00fc\u0010\u00f0\u0008\u00fb\u00f1\u00ff<\u00b5\n\u00f3\u000f0\u00ca\u00ee\u00fd?\u00b7\u00fd\u0001\u0002\u0003\u00f0\u0001\u0006\u00f6\u0002\u000e\u00ee\n\u00ea\u0008\u00f0\u000e\u0016\u00e0\u0004\u00ed\u000e\u00ec\u00f62\u00d8\u00f4\n\u00ff\u00ec\u0002\u00fa\u0006\u0001\u00ef\u0006\u00e8\u00120\u00c2\u00f7>\u00e2\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$Status:[B

    const/16 v0, 0xbd

    sput v0, Lcom/visa/vac/tc/getTerminalData;->VACThinClient$TransactionCallback:I

    sget v0, Lcom/visa/vac/tc/getTerminalData;->onComplete:I

    add-int/lit8 v0, v0, 0x56

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/getTerminalData;->onProgress:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0x43

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x21

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
