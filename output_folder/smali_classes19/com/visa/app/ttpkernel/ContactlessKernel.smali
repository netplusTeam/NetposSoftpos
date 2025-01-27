.class public Lcom/visa/app/ttpkernel/ContactlessKernel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;,
        Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;
    }
.end annotation


# static fields
.field private static $$a:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static contactlessKernel:Lcom/visa/app/ttpkernel/ContactlessKernel;

.field private static context:Landroid/content/Context;

.field private static cvmResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;",
            ">;"
        }
    .end annotation
.end field

.field private static getInstance:I

.field private static kernelInfoData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static responseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/visa/app/ttpkernel/TtpOutcome;",
            ">;"
        }
    .end annotation
.end field

.field private static result:Lcom/visa/app/ttpkernel/ContactlessResult;


# instance fields
.field private nfcTransceiver:Lcom/visa/app/ttpkernel/NfcTransceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    const-class v0, Lcom/visa/app/ttpkernel/ContactlessKernel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->LOG_TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->context:Landroid/content/Context;

    .line 35
    sput-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->contactlessKernel:Lcom/visa/app/ttpkernel/ContactlessKernel;

    .line 37
    sput-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->result:Lcom/visa/app/ttpkernel/ContactlessResult;

    .line 39
    new-instance v1, Lcom/visa/app/ttpkernel/ContactlessKernel$1;

    invoke-direct {v1}, Lcom/visa/app/ttpkernel/ContactlessKernel$1;-><init>()V

    sput-object v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->responseMap:Ljava/util/HashMap;

    .line 49
    new-instance v1, Lcom/visa/app/ttpkernel/ContactlessKernel$3;

    invoke-direct {v1}, Lcom/visa/app/ttpkernel/ContactlessKernel$3;-><init>()V

    sput-object v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->cvmResultMap:Ljava/util/HashMap;

    sget v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x22

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 61
    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sput-object p1, Lcom/visa/app/ttpkernel/ContactlessKernel;->context:Landroid/content/Context;

    .line 64
    :try_start_0
    invoke-static {}, Lcom/visa/vac/tc/VACThinClient;->getInstance()Lcom/visa/vac/tc/VACThinClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v0, v2}, Lcom/visa/vac/tc/VACThinClient;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 66
    sput-object p1, Lcom/visa/app/ttpkernel/ContactlessKernel;->kernelInfoData:Ljava/util/HashMap;

    const/16 v0, -0x20fe

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/visa/app/ttpkernel/Version;->getVersion()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 68
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/visa/app/ttpkernel/ContactlessKernel;)Lcom/visa/app/ttpkernel/NfcTransceiver;
    .locals 2

    .line 26
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p0, p0, Lcom/visa/app/ttpkernel/ContactlessKernel;->nfcTransceiver:Lcom/visa/app/ttpkernel/NfcTransceiver;

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static synthetic access$300()Lcom/visa/app/ttpkernel/ContactlessResult;
    .locals 3

    .line 26
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    sget-object v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->result:Lcom/visa/app/ttpkernel/ContactlessResult;

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/16 v0, 0x36

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 v0, 0x23

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private convertToArrayMap(Ljava/util/HashMap;)Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 223
    nop

    .line 218
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 219
    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/16 v1, 0x19

    goto :goto_1

    :cond_0
    const/16 v1, 0x11

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 223
    sget v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_2

    :pswitch_0
    return-object v0

    .line 220
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 223
    :pswitch_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :catchall_0
    move-exception p1

    throw p1

    :goto_4
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/visa/app/ttpkernel/ContactlessKernel;
    .locals 3

    .line 92
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    sget-object v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->contactlessKernel:Lcom/visa/app/ttpkernel/ContactlessKernel;

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/visa/app/ttpkernel/ContactlessKernel;
    .locals 2

    .line 83
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 80
    :cond_0
    sget-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->contactlessKernel:Lcom/visa/app/ttpkernel/ContactlessKernel;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/visa/app/ttpkernel/ContactlessKernel;

    invoke-direct {v0, p0}, Lcom/visa/app/ttpkernel/ContactlessKernel;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->contactlessKernel:Lcom/visa/app/ttpkernel/ContactlessKernel;

    .line 83
    :cond_1
    sget-object p0, Lcom/visa/app/ttpkernel/ContactlessKernel;->contactlessKernel:Lcom/visa/app/ttpkernel/ContactlessKernel;

    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x2f

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getTransactionType(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 203
    nop

    .line 179
    const/16 v0, 0x9c

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 182
    if-nez v1, :cond_0

    .line 203
    const/16 v2, 0x22

    goto :goto_0

    :cond_0
    const/16 v2, 0x39

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 183
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->trimLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    .line 187
    :pswitch_0
    const/4 p1, 0x0

    if-eqz v1, :cond_1

    .line 203
    move v0, p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 187
    :cond_2
    array-length v0, v1

    if-gtz v0, :cond_3

    .line 188
    :pswitch_1
    nop

    .line 203
    return-object v2

    .line 192
    :cond_3
    nop

    .line 193
    aget-byte p1, v1, p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 198
    :sswitch_0
    nop

    .line 203
    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    rem-int/lit8 v3, v3, 0x2

    const-string v2, "Refund"

    goto :goto_2

    .line 195
    :sswitch_1
    const-string v2, "Payment"

    .line 203
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setTerminate()Lcom/visa/app/ttpkernel/ContactlessResult;
    .locals 5

    .line 168
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 160
    :cond_0
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance()Lcom/visa/app/ttpkernel/ContactlessResult;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/visa/app/ttpkernel/ContactlessResult;->getData()Ljava/util/HashMap;

    move-result-object v1

    .line 162
    const/4 v2, 0x1

    new-array v2, v2, [B

    .line 163
    const/4 v3, 0x0

    const/16 v4, -0x10

    aput-byte v4, v2, v3

    .line 165
    sget-object v2, Lcom/visa/app/ttpkernel/TtpOutcome;->ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v0, v2}, Lcom/visa/app/ttpkernel/ContactlessResult;->setFinalOutcome(Lcom/visa/app/ttpkernel/TtpOutcome;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/visa/app/ttpkernel/ContactlessResult;->setData(Ljava/util/HashMap;)V

    .line 168
    sget v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method


# virtual methods
.method public getKernelData()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 210
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->kernelInfoData:Ljava/util/HashMap;

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public performTransaction(Lcom/visa/app/ttpkernel/NfcTransceiver;Lcom/visa/app/ttpkernel/ContactlessConfiguration;)Lcom/visa/app/ttpkernel/ContactlessResult;
    .locals 8

    .line 156
    nop

    .line 106
    iput-object p1, p0, Lcom/visa/app/ttpkernel/ContactlessKernel;->nfcTransceiver:Lcom/visa/app/ttpkernel/NfcTransceiver;

    .line 107
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance()Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getTerminalData()Ljava/util/HashMap;

    move-result-object p1

    .line 111
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance()Lcom/visa/app/ttpkernel/ContactlessResult;

    move-result-object p2

    .line 112
    sput-object p2, Lcom/visa/app/ttpkernel/ContactlessKernel;->result:Lcom/visa/app/ttpkernel/ContactlessResult;

    invoke-virtual {p2}, Lcom/visa/app/ttpkernel/ContactlessResult;->clear()V

    .line 116
    :try_start_0
    new-instance p2, Lcom/visa/vac/tc/emvconverter/Transaction;

    invoke-direct {p2}, Lcom/visa/vac/tc/emvconverter/Transaction;-><init>()V

    .line 117
    const/16 v0, -0x60fe

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->amount:Ljava/lang/String;

    .line 118
    invoke-direct {p0, p1}, Lcom/visa/app/ttpkernel/ContactlessKernel;->getTransactionType(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->transactionType:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;-><init>(Lcom/visa/app/ttpkernel/ContactlessKernel;B)V

    iput-object v0, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->emvReader:Lcom/visa/vac/tc/emvconverter/EmvReader;

    .line 126
    const/16 v0, -0x20ff

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 156
    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 127
    :pswitch_0
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    new-array v5, v5, [B

    const/16 v6, -0x67

    aput-byte v6, v5, v1

    aput-byte v6, v5, v3

    aput-byte v6, v5, v4

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    const/4 v7, 0x4

    aput-byte v6, v5, v7

    const/4 v7, 0x5

    aput-byte v6, v5, v7

    invoke-virtual {p1, v2, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    sget v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/2addr v2, v4

    if-nez v2, :cond_1

    const/16 v2, 0x3f

    goto :goto_1

    :cond_1
    const/16 v2, 0x31

    goto :goto_1

    .line 132
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/visa/vac/tc/VACThinClient;->getInstance()Lcom/visa/vac/tc/VACThinClient;

    move-result-object v2

    sget-object v5, Lcom/visa/app/ttpkernel/ContactlessKernel;->context:Landroid/content/Context;

    new-instance v6, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;

    invoke-direct {v6}, Lcom/visa/app/ttpkernel/ContactlessKernel$getInstance;-><init>()V

    invoke-direct {p0, p1}, Lcom/visa/app/ttpkernel/ContactlessKernel;->convertToArrayMap(Ljava/util/HashMap;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v2, v5, p2, v6, p1}, Lcom/visa/vac/tc/VACThinClient;->startTransaction(Landroid/content/Context;Lcom/visa/vac/tc/emvconverter/Transaction;Lcom/visa/vac/tc/VACThinClient$TransactionCallback;Ljava/lang/Object;)V

    .line 135
    const/16 p1, -0x20fd

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v2, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->cvm:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_3

    .line 156
    sget v1, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_2

    .line 136
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :try_start_2
    new-array v2, v3, [B

    sget-object v3, Lcom/visa/app/ttpkernel/ContactlessKernel;->cvmResultMap:Ljava/util/HashMap;

    iget-object v5, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->cvm:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    invoke-virtual {v3}, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->getValue()B

    move-result v3

    aput-byte v3, v2, v1

    invoke-static {p1, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->toTlv(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    sget v2, Lcom/visa/app/ttpkernel/ContactlessKernel;->getInstance:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/app/ttpkernel/ContactlessKernel;->$$a:I

    rem-int/2addr v2, v4

    if-nez v2, :cond_4

    .line 137
    :cond_4
    :goto_3
    :try_start_3
    iget-object v2, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->resultTlv:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->resultTlv:Ljava/util/HashMap;

    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance()Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getTerminalData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p1, Lcom/visa/app/ttpkernel/ContactlessKernel;->result:Lcom/visa/app/ttpkernel/ContactlessResult;

    iget-object v0, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->resultTlv:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/visa/app/ttpkernel/ContactlessResult;->setData(Ljava/util/HashMap;)V

    .line 145
    sget-object p1, Lcom/visa/app/ttpkernel/ContactlessKernel;->result:Lcom/visa/app/ttpkernel/ContactlessResult;

    sget-object v0, Lcom/visa/app/ttpkernel/ContactlessKernel;->responseMap:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/visa/vac/tc/emvconverter/Transaction;->finalStatus:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {p1, p2}, Lcom/visa/app/ttpkernel/ContactlessResult;->setFinalOutcome(Lcom/visa/app/ttpkernel/TtpOutcome;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 147
    :catch_0
    move-exception p1

    .line 150
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessResult;->getInstance()Lcom/visa/app/ttpkernel/ContactlessResult;

    move-result-object p2

    .line 151
    sput-object p2, Lcom/visa/app/ttpkernel/ContactlessKernel;->result:Lcom/visa/app/ttpkernel/ContactlessResult;

    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {p2, v0}, Lcom/visa/app/ttpkernel/ContactlessResult;->setFinalOutcome(Lcom/visa/app/ttpkernel/TtpOutcome;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    :goto_4
    invoke-static {}, Lcom/visa/vac/tc/VACThinClient;->getInstance()Lcom/visa/vac/tc/VACThinClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/visa/vac/tc/VACThinClient;->clearInternalData()V

    .line 156
    sget-object p1, Lcom/visa/app/ttpkernel/ContactlessKernel;->result:Lcom/visa/app/ttpkernel/ContactlessResult;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
