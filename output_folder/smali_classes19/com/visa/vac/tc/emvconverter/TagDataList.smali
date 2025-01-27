.class public Lcom/visa/vac/tc/emvconverter/TagDataList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static $$a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static BuildConfig:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static ContactlessConfiguration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ContactlessKernel:I

.field private static clear:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static getInstance:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static getTerminalData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static performTransaction:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static setTerminate:I


# direct methods
.method static $$a(Ljava/lang/String;)V
    .locals 2

    .line 521
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static $$a(S[B)V
    .locals 2

    .line 282
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 281
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    .line 282
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 281
    :pswitch_0
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    .line 282
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method private static $$a(Ljava/lang/Object;)[B
    .locals 4

    .line 450
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 447
    :cond_0
    if-eqz p0, :cond_1

    .line 448
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 450
    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_0
    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v2, v2, 0x2

    return-object v3

    .line 448
    :goto_1
    const/16 v0, 0x59

    goto :goto_2

    :cond_2
    const/16 v0, 0x4e

    :goto_2
    check-cast p0, Ljava/lang/String;

    packed-switch v0, :pswitch_data_1

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    goto :goto_3

    :pswitch_1
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :goto_3
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e
        :pswitch_1
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->BuildConfig:Landroid/util/ArrayMap;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->performTransaction:Landroid/util/ArrayMap;

    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static BuildConfig(SLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 106
    nop

    .line 98
    if-nez p1, :cond_0

    .line 99
    sget-object p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    .line 101
    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 106
    move v1, p0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 102
    :pswitch_1
    sget-object v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->performTransaction:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 103
    sget-object p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->performTransaction:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 106
    sget p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :goto_2
    const/4 p0, 0x0

    sget p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static BuildConfig()V
    .locals 2

    .line 524
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x58

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    const/16 v1, -0x60fa

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    const/16 v1, 0x6abb

    :goto_1
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x12

    goto :goto_2

    :cond_1
    const/16 v0, 0x29

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch
.end method

.method static BuildConfig(Ljava/lang/String;)[B
    .locals 2

    .line 488
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static ContactlessConfiguration(S[B)V
    .locals 4

    .line 262
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData(S[BLjava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x29

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x40

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
    .end packed-switch
.end method

.method static ContactlessConfiguration(S)[B
    .locals 2

    .line 479
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static buildDoltoKdil(Ljava/lang/Object;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 442
    nop

    .line 428
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 420
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 388
    if-eqz p0, :cond_1

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :catchall_0
    move-exception p0

    throw p0

    .line 420
    :goto_1
    const/16 v0, 0x31

    goto :goto_2

    :cond_1
    const/16 v0, 0x2b

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_11

    .line 388
    :pswitch_1
    const/4 v0, 0x5

    if-gt p1, v0, :cond_13

    .line 389
    const/16 v0, 0x95

    .line 2262
    invoke-static {v0, v3, v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData(S[BLjava/lang/String;)V

    .line 390
    const/16 v0, 0x9b

    .line 3262
    invoke-static {v0, v3, v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData(S[BLjava/lang/String;)V

    .line 391
    const-string v0, "emv.tx.$.TVR"

    invoke-static {v0, v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    const-string v0, "emv.tx.$.TSI"

    invoke-static {v0, v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a(Ljava/lang/Object;)[B

    move-result-object p0

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    const-string v4, "LV.QUICK_CHIP_DONE"

    invoke-static {v4}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "False"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "FirstGenKernelID"

    const-string v6, ","

    const-string v7, "$"

    if-eqz v4, :cond_7

    .line 398
    const-string v4, "KV.CONTACT_KDIL"

    invoke-static {v4}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 399
    array-length v8, v4

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_7

    .line 442
    sget v10, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v10, v10, 0x23

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_2

    .line 399
    :cond_2
    aget-object v10, v4, v9

    .line 400
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 420
    move v11, v2

    goto :goto_4

    :cond_3
    move v11, v1

    :goto_4
    packed-switch v11, :pswitch_data_2

    .line 401
    invoke-static {v5}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 442
    nop

    .line 403
    :pswitch_2
    const-string v11, "IssuerScriptFirstList"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "IssuerAuthCommand"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    const/4 v11, 0x4

    if-gt p1, v11, :cond_5

    .line 420
    move v11, v1

    goto :goto_5

    :cond_5
    move v11, v2

    :goto_5
    packed-switch v11, :pswitch_data_3

    goto :goto_6

    .line 406
    :cond_6
    :pswitch_3
    invoke-static {v10, v3}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 399
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 410
    :cond_7
    if-eqz p0, :cond_12

    .line 411
    const/4 p1, 0x3

    new-array v4, p1, [S

    fill-array-data v4, :array_0

    .line 413
    move v8, v2

    .line 415
    :goto_7
    array-length v9, p0

    if-ge v8, v9, :cond_12

    .line 416
    invoke-static {p0, v8, v4}, Lcom/visa/vac/tc/emvconverter/TLVParser;->$$a([BS[S)S

    move-result v9

    .line 418
    aget-short v10, v4, v2

    invoke-static {v10}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v10

    .line 419
    sget-object v11, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 420
    const/16 v11, 0x3a

    goto :goto_8

    :cond_8
    const/16 v11, 0x55

    :goto_8
    packed-switch v11, :pswitch_data_4

    .line 423
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paymentsystem.tx."

    invoke-static {v12}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    .line 388
    :pswitch_4
    sget v11, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v11, v11, 0xd

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_9

    .line 420
    sget-object v11, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 442
    goto :goto_9

    .line 420
    :cond_9
    sget-object p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    invoke-virtual {p0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 388
    :catchall_1
    move-exception p0

    throw p0

    .line 425
    :goto_9
    if-eqz v11, :cond_11

    .line 426
    invoke-static {v11}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_a

    .line 420
    move v12, v1

    goto :goto_a

    :cond_a
    move v12, v2

    :goto_a
    packed-switch v12, :pswitch_data_5

    :pswitch_5
    goto/16 :goto_10

    .line 426
    :pswitch_6
    sget-object v12, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    .line 427
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 442
    sget v12, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v12, v12, 0x6d

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v12, v12, 0x2

    const-string v13, "Card"

    if-nez v12, :cond_c

    sget-object v12, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    .line 428
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v12, 0x7

    :try_start_2
    div-int/2addr v12, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v10, :cond_b

    goto :goto_c

    :cond_b
    :pswitch_7
    goto :goto_10

    .line 442
    :catchall_2
    move-exception p0

    throw p0

    .line 427
    :cond_c
    sget-object v12, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    .line 428
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 420
    const/16 v10, 0x16

    goto :goto_b

    :cond_d
    const/16 v10, 0x1b

    :goto_b
    packed-switch v10, :pswitch_data_6

    .line 429
    :goto_c
    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 430
    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v11, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 432
    :cond_e
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 420
    move v10, v2

    goto :goto_d

    :cond_f
    move v10, v1

    :goto_d
    packed-switch v10, :pswitch_data_7

    goto :goto_e

    .line 433
    :pswitch_8
    invoke-static {v5}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 435
    :goto_e
    invoke-virtual {v0, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 436
    invoke-virtual {v0, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 428
    sget v10, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v10, v10, 0x51

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_10

    .line 420
    const/16 v10, 0xe

    goto :goto_f

    :cond_10
    move v10, p1

    :goto_f
    packed-switch v10, :pswitch_data_8

    .line 442
    nop

    .line 439
    :cond_11
    :goto_10
    add-int/2addr v8, v9

    int-to-short v8, v8

    goto/16 :goto_7

    .line 442
    :cond_12
    const-string p0, "KDIL"

    invoke-static {p0, v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3a
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1b
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xe
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public static clearCardData(Z)V
    .locals 2

    .line 125
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 121
    :cond_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 122
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "emv.duplicate"

    invoke-static {v1, v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    if-eqz p0, :cond_1

    .line 125
    const/16 p0, 0x39

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    :goto_0
    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static get1GenTermFromKic(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    nop

    .line 56
    nop

    .line 59
    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 60
    sget-object v3, Lcom/visa/vac/tc/emvconverter/TagDataList;->BuildConfig:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    sget v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v4, v4, 0x21

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 61
    :cond_0
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    .line 62
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 73
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 62
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "Card"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    const/16 v4, 0x5e

    goto :goto_2

    :cond_2
    const/16 v4, 0x12

    :goto_2
    packed-switch v4, :pswitch_data_1

    sget v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v4, v4, 0x35

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 63
    :cond_3
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 65
    array-length v6, v4

    if-eqz v6, :cond_5

    .line 66
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 67
    const/4 v3, 0x4

    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 69
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v4

    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/Utils;->byteHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    :pswitch_0
    nop

    .line 59
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto/16 :goto_0

    :cond_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public static getFirstGenTagMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 537
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 536
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->BuildConfig:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 537
    :pswitch_1
    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    return-object v4

    :goto_1
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 536
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    .line 537
    return-object p0

    .line 536
    :goto_2
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :catchall_0
    move-exception p0

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

.method static getInstance()Ljava/lang/String;
    .locals 8

    .line 51
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 34
    :cond_0
    nop

    .line 37
    const/4 v0, 0x0

    const-string v2, ""

    move v3, v0

    :goto_0
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 51
    sget v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v4, v4, 0x65

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_1

    .line 38
    :cond_1
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    sget-object v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 43
    const/16 v4, 0x33

    goto :goto_1

    :cond_2
    const/16 v4, 0x37

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 51
    sget v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v4, v4, 0x4f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_3

    .line 39
    :cond_3
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    sget-object v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Card"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 51
    sget v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v4, v4, 0x73

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 40
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 41
    sget-object v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 42
    check-cast v5, [B

    .line 43
    const/16 v6, 0x13

    :try_start_0
    div-int/2addr v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    move v6, v0

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    :goto_2
    packed-switch v6, :pswitch_data_1

    goto :goto_4

    .line 51
    :catchall_0
    move-exception v0

    throw v0

    .line 40
    :cond_5
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 41
    sget-object v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 42
    check-cast v5, [B

    .line 43
    if-eqz v5, :cond_6

    const/16 v6, 0x3e

    goto :goto_3

    :cond_6
    const/16 v6, 0x3f

    :goto_3
    packed-switch v6, :pswitch_data_2

    goto :goto_5

    :goto_4
    :pswitch_0
    array-length v6, v5

    if-eqz v6, :cond_8

    .line 44
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 45
    const/4 v4, 0x4

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 47
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v5

    invoke-static {v4}, Lcom/visa/vac/tc/emvconverter/Utils;->byteHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    :cond_8
    :goto_5
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 51
    :cond_9
    return-object v2

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method private static getInstance(Ljava/lang/String;)Z
    .locals 3

    .line 113
    nop

    .line 110
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 113
    const/16 v1, 0x28

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 110
    :cond_1
    const-string v1, "KV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    const/16 v1, 0x62

    goto :goto_1

    :cond_2
    const/16 v1, 0x1f

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 111
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    .line 113
    :pswitch_0
    return v0

    :goto_2
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public static getSecGenData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 497
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x56

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/16 v0, 0xf

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method public static getSecGenTagMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 532
    nop

    .line 531
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 532
    const/16 v1, 0x1f

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 531
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 532
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static getTerminalData(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 77
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    sput-object p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method static getTerminalData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 277
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 p0, p0, 0x2

    return-void

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static getTerminalData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 273
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 272
    :cond_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 273
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x14

    goto :goto_0

    :cond_1
    const/16 p0, 0x21

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x1c

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method static getTerminalData(S[BLjava/lang/String;)V
    .locals 7

    .line 185
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 139
    :cond_0
    const-string v0, "emv.tx.cal.ActiveInterfaceID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 140
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Contact"

    if-ne v0, v1, :cond_2

    const/16 v0, -0x60b0

    if-lt p0, v0, :cond_1

    .line 185
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 140
    const/16 v0, -0x6081

    if-gt p0, v0, :cond_2

    .line 185
    return-void

    .line 145
    :cond_2
    :pswitch_0
    nop

    .line 146
    nop

    .line 147
    if-eqz p1, :cond_3

    .line 185
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    .line 148
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->getString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 185
    :pswitch_1
    move-object v0, v1

    .line 151
    :goto_2
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    .line 152
    if-eqz p2, :cond_4

    .line 153
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 185
    nop

    .line 160
    :cond_4
    sget-object p2, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 161
    if-eqz p2, :cond_b

    const-string v4, "Card"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 162
    sget-object p2, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 164
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    sget v3, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v3, v3, 0x53

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 165
    :cond_5
    goto :goto_3

    .line 164
    :cond_6
    move v2, v3

    .line 167
    :goto_3
    sget-object v3, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    if-nez p2, :cond_7

    return-void

    .line 171
    :cond_7
    invoke-static {p2, v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string p0, "emv.duplicate"

    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 173
    if-eqz v2, :cond_b

    if-eqz p0, :cond_b

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 185
    const/16 p0, 0x16

    goto :goto_4

    :cond_8
    const/16 p0, 0x42

    :goto_4
    packed-switch p0, :pswitch_data_2

    .line 173
    const-string p0, "emv"

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 176
    sget-object p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    const-string p1, "emv.card.DuplicateList"

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 185
    const/16 p0, 0x28

    goto :goto_5

    :cond_9
    const/16 p0, 0x8

    :goto_5
    packed-switch p0, :pswitch_data_3

    goto :goto_6

    .line 176
    :pswitch_2
    nop

    .line 177
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/google/gson/JsonArray;

    if-eqz p0, :cond_a

    .line 178
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result p0

    if-nez p0, :cond_a

    goto :goto_6

    .line 183
    :cond_a
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 184
    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object p2, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 179
    :goto_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object p2, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 185
    :cond_b
    :goto_7
    :pswitch_3
    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    return-void

    :cond_c
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_2
    .end packed-switch
.end method

.method public static getTerminalValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 459
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static getTerminalValue(S)[B
    .locals 3

    .line 470
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 469
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    .line 470
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_1

    .line 469
    :pswitch_0
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    .line 470
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x46

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-object p0

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch
.end method

.method public static resetFirstGenDataCDO()V
    .locals 4

    .line 517
    nop

    .line 501
    const-string v0, "LV.QUICK_CHIP_DONE"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "False"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 504
    :cond_1
    const-string v0, "emv.card.FirstGenDataCDO.ATC"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    const-string v0, "emv.card.FirstGenDataCDO.CardBlob"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    const-string v0, "emv.card.FirstGenDataCDO.CID"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    const-string v0, "emv.card.FirstGenDataCDO.IAD"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3527
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    const/16 v3, -0x60ca

    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4527
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    const/16 v3, -0x60da

    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5527
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    const/16 v3, -0x60d9

    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6527
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->getInstance:Landroid/util/ArrayMap;

    const/16 v3, -0x60f0

    invoke-static {v3}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :pswitch_0
    const-string v0, "emv.card.FinalFirstGenDataCDO.ATC"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    const-string v0, "emv.card.FinalFirstGenDataCDO.CardBlob"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    const-string v0, "emv.card.FinalFirstGenDataCDO.CID"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    const-string v0, "emv.card.FinalFirstGenDataCDO.IAD"

    invoke-static {v0, v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x2e

    goto :goto_1

    :cond_2
    const/16 v0, 0x1b

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 v0, 0x1f

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_1
    .end packed-switch
.end method

.method public static setDataMapping(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v0, 0x5d

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    throw p0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    goto :goto_1

    :cond_1
    const/16 v0, 0x51

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 90
    goto :goto_5

    .line 83
    :pswitch_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    sget-object v4, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalData:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v3, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessConfiguration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    array-length v3, v0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_2

    .line 83
    move v5, v1

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 90
    sget v5, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v5, v5, 0x57

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    goto :goto_4

    :pswitch_1
    goto :goto_0

    :cond_3
    :goto_4
    aget-object v5, v0, v4

    .line 91
    sget-object v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->BuildConfig:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->performTransaction:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :goto_5
    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    .line 83
    const/16 p0, 0xa

    goto :goto_6

    :cond_4
    const/16 p0, 0x13

    :goto_6
    packed-switch p0, :pswitch_data_2

    .line 90
    return-void

    :pswitch_2
    const/16 p0, 0x35

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_2
    .end packed-switch
.end method

.method public static storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 297
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a:Landroid/util/ArrayMap;

    invoke-static {p0, p1, v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;Landroid/util/ArrayMap;)V

    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static storeSecGenData(Ljava/lang/String;Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 301
    nop

    .line 300
    const-string v0, ","

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 301
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v0, v3

    if-ge v5, v0, :cond_2f

    .line 302
    nop

    .line 303
    if-eqz v1, :cond_2d

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 304
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->performTransaction:Landroid/util/ArrayMap;

    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v7, 0x10

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_a

    .line 306
    :try_start_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->performTransaction:Landroid/util/ArrayMap;

    aget-object v10, v3, v5

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 308
    const-string v11, "NUM"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "ISO"

    if-nez v11, :cond_8

    :try_start_1
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto/16 :goto_4

    .line 314
    :cond_0
    const-string v11, "DATE"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, ""

    if-eqz v11, :cond_1

    .line 315
    :try_start_2
    const-string v0, "-"

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1
    const-string v11, "AN"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2241
    const/16 v11, 0x4d

    goto :goto_1

    :cond_2
    const/4 v11, 0x6

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_3

    .line 316
    :pswitch_0
    const-string v11, "ANS"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    .line 321
    :cond_3
    const-string v11, "BIN"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 323
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v10}, Lcom/visa/vac/tc/emvconverter/Utils;->stringFormatToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xa

    invoke-direct {v0, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    sget v10, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v10, v10, 0x4b

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/2addr v10, v8

    if-nez v10, :cond_4

    .line 2241
    const/16 v10, 0x41

    goto :goto_2

    :cond_4
    const/16 v10, 0x3c

    :goto_2
    packed-switch v10, :pswitch_data_1

    .line 301
    :pswitch_1
    goto :goto_7

    .line 324
    :cond_5
    :try_start_3
    const-string v11, "HEX"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_7

    .line 301
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v11, v0, 0x80

    sput v11, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v0, v8

    if-eqz v0, :cond_6

    .line 325
    :cond_6
    :try_start_4
    invoke-static {v10}, Lcom/visa/vac/tc/emvconverter/Utils;->asciiToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 324
    :cond_7
    move-object v0, v1

    goto :goto_5

    .line 318
    :goto_3
    invoke-static {v10}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 319
    array-length v10, v0

    invoke-static {v0, v4, v10, v12, v4}, Lcom/visa/vac/tc/emvconverter/Utils;->getAsciiString([BIILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 321
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v10, "&"

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 309
    :cond_8
    :goto_4
    invoke-static {v10}, Lcom/visa/vac/tc/emvconverter/Utils;->stringFormatToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 310
    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 312
    const-string v10, "%03d"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 310
    :cond_9
    move-object v0, v11

    .line 325
    :goto_5
    goto :goto_7

    .line 328
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_18

    .line 334
    :cond_a
    :goto_6
    move-object v0, v1

    :goto_7
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    const-string v15, "CEID"

    const/4 v11, 0x4

    sparse-switch v12, :sswitch_data_0

    :cond_b
    goto/16 :goto_9

    :sswitch_0
    const-string v12, "FormFactor"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 301
    sget v10, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v10, v10, 0x71

    rem-int/lit16 v12, v10, 0x80

    sput v12, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/2addr v10, v8

    if-nez v10, :cond_c

    .line 334
    :cond_c
    move/from16 v16, v8

    goto :goto_a

    :sswitch_1
    const-string v12, "emv.card.ExpiryDate"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2241
    move v10, v4

    goto :goto_8

    :cond_d
    move v10, v9

    :goto_8
    packed-switch v10, :pswitch_data_2

    goto :goto_9

    .line 334
    :pswitch_2
    const/16 v16, 0x5

    goto :goto_a

    :sswitch_2
    const-string v12, "emv.ngse.Priority"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v16, 0x7

    goto :goto_a

    :sswitch_3
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move/from16 v16, v4

    goto :goto_a

    :sswitch_4
    const-string v12, "emv.card.EffectiveDate"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v16, 0x6

    goto :goto_a

    :sswitch_5
    const-string v12, "emv.card.SvID"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move/from16 v16, v9

    goto :goto_a

    :sswitch_6
    const-string v12, "paymentsystem.card.CTQIndicatorList"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 301
    const/16 v16, 0x3

    goto :goto_a

    .line 334
    :sswitch_7
    const-string v12, "emv.card.ApplicationUsageControlList"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move/from16 v16, v11

    goto :goto_a

    :goto_9
    const/16 v16, -0x1

    :goto_a
    const/16 v10, 0x8

    const/16 v12, 0x20

    const/16 v14, -0x80

    const/16 v6, 0x40

    packed-switch v16, :pswitch_data_3

    goto/16 :goto_17

    .line 378
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_17

    .line 375
    :pswitch_4
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->getTerminalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 370
    :pswitch_5
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a(Ljava/lang/Object;)[B

    move-result-object v0

    .line 371
    nop

    .line 2227
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2228
    aget-byte v16, v0, v4

    and-int/lit8 v13, v16, -0x80

    int-to-byte v13, v13

    if-ne v13, v14, :cond_e

    .line 2229
    const-string v13, "DomesticCash"

    invoke-virtual {v15, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2231
    :cond_e
    aget-byte v13, v0, v4

    and-int/2addr v13, v6

    int-to-byte v13, v13

    if-ne v13, v6, :cond_10

    .line 301
    sget v13, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v13, v13, 0x67

    rem-int/lit16 v6, v13, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/2addr v13, v8

    if-nez v13, :cond_f

    .line 2232
    :cond_f
    const-string v6, "InternationalCash"

    invoke-virtual {v15, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2234
    :cond_10
    aget-byte v6, v0, v4

    and-int/2addr v6, v12

    int-to-byte v6, v6

    if-ne v6, v12, :cond_11

    .line 2235
    const-string v6, "DomesticGoods"

    invoke-virtual {v15, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2237
    :cond_11
    aget-byte v6, v0, v4

    and-int/2addr v6, v7

    int-to-byte v6, v6

    if-ne v6, v7, :cond_12

    .line 2238
    const-string v6, "InternationalGoods"

    invoke-virtual {v15, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2240
    :cond_12
    aget-byte v6, v0, v4

    and-int/2addr v6, v10

    int-to-byte v6, v6

    if-ne v6, v10, :cond_13

    .line 2241
    const/16 v6, 0x59

    goto :goto_b

    :cond_13
    const/4 v6, 0x7

    :goto_b
    packed-switch v6, :pswitch_data_4

    .line 301
    sget v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v6, v6, 0x75

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/2addr v6, v8

    const-string v7, "DomesticServices"

    if-eqz v6, :cond_1b

    .line 2241
    invoke-virtual {v15, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2243
    :pswitch_6
    aget-byte v6, v0, v4

    and-int/2addr v6, v11

    int-to-byte v6, v6

    if-ne v6, v11, :cond_14

    .line 2244
    const-string v6, "InternationalServices"

    invoke-virtual {v15, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2246
    :cond_14
    aget-byte v6, v0, v4

    and-int/2addr v6, v8

    int-to-byte v6, v6

    if-ne v6, v8, :cond_15

    .line 2241
    move v6, v4

    goto :goto_c

    :cond_15
    move v6, v9

    :goto_c
    packed-switch v6, :pswitch_data_5

    goto :goto_d

    .line 301
    :pswitch_7
    sget v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v6, v6, 0x2f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v6, v8

    if-eqz v6, :cond_16

    .line 2247
    :cond_16
    const-string v6, "ValidAtATM"

    invoke-virtual {v15, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2249
    :goto_d
    aget-byte v6, v0, v4

    and-int/2addr v6, v9

    int-to-byte v6, v6

    if-ne v6, v9, :cond_17

    .line 2241
    const/16 v6, 0x22

    goto :goto_e

    :cond_17
    const/16 v6, 0x49

    :goto_e
    packed-switch v6, :pswitch_data_6

    goto :goto_f

    .line 2250
    :pswitch_8
    const-string v6, "ValidAtNonATM"

    invoke-virtual {v15, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2252
    :goto_f
    aget-byte v6, v0, v9

    and-int/2addr v6, v14

    int-to-byte v6, v6

    if-ne v6, v14, :cond_18

    .line 2253
    const-string v6, "DomesticCashback"

    invoke-virtual {v15, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2255
    :cond_18
    aget-byte v0, v0, v9

    const/16 v6, 0x40

    and-int/2addr v0, v6

    int-to-byte v0, v0

    if-ne v0, v6, :cond_1a

    .line 301
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    const/4 v6, 0x5

    add-int/2addr v0, v6

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v0, v8

    if-eqz v0, :cond_19

    .line 2256
    :cond_19
    const-string v0, "InternationalCashback"

    invoke-virtual {v15, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2258
    :cond_1a
    nop

    .line 371
    move-object v0, v15

    goto/16 :goto_17

    .line 2241
    :cond_1b
    invoke-virtual {v15, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_5
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 301
    :catchall_0
    move-exception v0

    throw v0

    .line 359
    :pswitch_9
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a(Ljava/lang/Object;)[B

    move-result-object v0

    .line 360
    nop

    .line 2192
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    aget-byte v13, v0, v4

    and-int/2addr v13, v14

    int-to-byte v13, v13

    if-ne v13, v14, :cond_1c

    .line 2194
    const-string v13, "OnlinePIN"

    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2196
    :cond_1c
    aget-byte v13, v0, v4

    const/16 v15, 0x40

    and-int/2addr v13, v15

    int-to-byte v13, v13

    if-ne v13, v15, :cond_1d

    .line 2197
    const-string v13, "Signature"

    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2199
    :cond_1d
    aget-byte v13, v0, v4

    and-int/2addr v13, v12

    int-to-byte v13, v13

    if-ne v13, v12, :cond_1e

    .line 2241
    const/16 v12, 0x12

    goto :goto_10

    :cond_1e
    const/16 v12, 0x3f

    :goto_10
    packed-switch v12, :pswitch_data_7

    .line 2200
    const-string v12, "OnlineODAFail"

    invoke-virtual {v6, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2202
    :pswitch_a
    aget-byte v12, v0, v4

    and-int/2addr v12, v7

    int-to-byte v12, v12

    if-ne v12, v7, :cond_1f

    .line 2241
    const/16 v7, 0x27

    goto :goto_11

    :cond_1f
    const/16 v7, 0x62

    :goto_11
    packed-switch v7, :pswitch_data_8

    goto :goto_12

    :pswitch_b
    sget v7, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v7, v7, 0x73

    rem-int/lit16 v12, v7, 0x80

    sput v12, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v7, v8

    if-eqz v7, :cond_20

    .line 2203
    :cond_20
    const-string v7, "SwitchIntODAFail"

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2205
    :goto_12
    aget-byte v7, v0, v4

    and-int/2addr v7, v10

    int-to-byte v7, v7

    if-ne v7, v10, :cond_21

    .line 2206
    const-string v7, "OnlineAppExpire"

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2208
    :cond_21
    aget-byte v7, v0, v4

    and-int/2addr v7, v11

    int-to-byte v7, v7

    if-ne v7, v11, :cond_22

    .line 2241
    const/16 v7, 0x60

    goto :goto_13

    :cond_22
    const/16 v7, 0x56

    :goto_13
    packed-switch v7, :pswitch_data_9

    .line 2209
    const-string v7, "SwitchManualCash"

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2211
    :pswitch_c
    aget-byte v7, v0, v4

    and-int/2addr v7, v8

    int-to-byte v7, v7

    if-ne v7, v8, :cond_23

    .line 2212
    const-string v7, "SwitchCashback"

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2214
    :cond_23
    aget-byte v7, v0, v4

    and-int/2addr v7, v9

    int-to-byte v7, v7

    if-ne v7, v9, :cond_24

    .line 2215
    const-string v7, "NotValidForCLATM"

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2217
    :cond_24
    aget-byte v7, v0, v9

    and-int/2addr v7, v14

    int-to-byte v7, v7

    if-ne v7, v14, :cond_25

    .line 2218
    const-string v7, "CDCVMPerformed"

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2220
    :cond_25
    aget-byte v7, v0, v9

    const/16 v10, 0x40

    and-int/2addr v7, v10

    int-to-byte v7, v7

    if-ne v7, v10, :cond_26

    .line 2241
    move v7, v4

    goto :goto_14

    :cond_26
    move v7, v9

    :goto_14
    packed-switch v7, :pswitch_data_a

    goto :goto_15

    .line 2221
    :pswitch_d
    const-string v7, "IssuerUpdate"

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2223
    :goto_15
    nop

    .line 360
    nop

    .line 361
    array-length v7, v0

    const-string v10, "emv.card.AuthCDO.ResponseRequirementCDO.ReadyForOnlineResponse"

    if-lt v7, v8, :cond_27

    aget-byte v0, v0, v9

    const/16 v7, 0x40

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_27

    .line 362
    const-string v0, "true"

    invoke-virtual {v2, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 365
    :cond_27
    const-string v0, "false"

    invoke-virtual {v2, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :goto_16
    move-object v0, v6

    goto :goto_17

    .line 343
    :pswitch_e
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a(Ljava/lang/Object;)[B

    move-result-object v6

    .line 344
    array-length v7, v6

    if-lez v7, :cond_2e

    .line 2241
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 v7, v0, 0x2d

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v7, v8

    if-eqz v7, :cond_28

    .line 345
    :cond_28
    aget-byte v6, v6, v4

    and-int/lit8 v7, v6, 0x4

    if-ne v7, v11, :cond_2a

    .line 346
    nop

    .line 2241
    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/2addr v0, v8

    if-eqz v0, :cond_29

    .line 301
    :cond_29
    const-string v0, "Wearable"

    goto :goto_17

    .line 347
    :cond_2a
    and-int/lit8 v0, v6, 0x3

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2b

    .line 348
    const-string v0, "Mobile"

    goto :goto_17

    .line 349
    :cond_2b
    and-int/lit8 v0, v6, 0x1

    if-ne v0, v9, :cond_2c

    .line 350
    const-string v0, "OtherCard"

    goto :goto_17

    .line 352
    :cond_2c
    const-string v0, "StandardCard"

    goto :goto_17

    .line 340
    :pswitch_f
    const/16 v6, -0x60fa

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->$$a(Ljava/lang/Object;)[B

    move-result-object v7

    .line 1281
    invoke-static {v6}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v6

    .line 1282
    sget-object v8, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    goto :goto_17

    .line 336
    :pswitch_10
    invoke-virtual {v2, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 383
    :cond_2d
    move-object v0, v1

    :cond_2e
    :goto_17
    aget-object v6, v3, v5

    invoke-virtual {v2, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7cea2834 -> :sswitch_7
        -0x559abd2e -> :sswitch_6
        -0x2a6aa624 -> :sswitch_5
        -0x276fcb69 -> :sswitch_4
        0x1f80fd -> :sswitch_3
        0x1a485567 -> :sswitch_2
        0x20b4901f -> :sswitch_1
        0x5b072b53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x22
        :pswitch_8
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3f
        :pswitch_a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x27
        :pswitch_b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x56
        :pswitch_c
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public static storeTerminalValue(Ljava/lang/String;[B)V
    .locals 2

    .line 287
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x16

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static storeTerminalValue(SLjava/lang/String;)V
    .locals 2

    .line 293
    sget v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->getInstance(Ljava/lang/String;)[B

    move-result-object p1

    .line 293
    sget-object v0, Lcom/visa/vac/tc/emvconverter/TagDataList;->clear:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/visa/vac/tc/emvconverter/TagDataList;->setTerminate:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TagDataList;->ContactlessKernel:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method
