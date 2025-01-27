.class public final Lcom/woleapp/netpos/contactless/app/NetPosApp;
.super Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;
.source "NetPosApp.kt"


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetPosApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetPosApp.kt\ncom/woleapp/netpos/contactless/app/NetPosApp\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,127:1\n215#2,2:128\n*S KotlinDebug\n*F\n+ 1 NetPosApp.kt\ncom/woleapp/netpos/contactless/app/NetPosApp\n*L\n69#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u0008\u0010(\u001a\u00020%H\u0002J\u0008\u0010)\u001a\u00020%H\u0016R\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/app/NetPosApp;",
        "Landroid/app/Application;",
        "()V",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "getBuilder",
        "()Ljava/lang/StringBuilder;",
        "setBuilder",
        "(Ljava/lang/StringBuilder;)V",
        "configuration",
        "Lcom/mastercard/terminalsdk/ConfigurationInterface;",
        "nfcProvider",
        "Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;",
        "getNfcProvider",
        "()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;",
        "setNfcProvider",
        "(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;)V",
        "outcomeObserver",
        "Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;",
        "getOutcomeObserver",
        "()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;",
        "setOutcomeObserver",
        "(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;)V",
        "terminalSdk",
        "Lcom/mastercard/terminalsdk/TerminalSdk;",
        "getTerminalSdk",
        "()Lcom/mastercard/terminalsdk/TerminalSdk;",
        "transactionsApi",
        "Lcom/mastercard/terminalsdk/TransactionInterface;",
        "getTransactionsApi",
        "()Lcom/mastercard/terminalsdk/TransactionInterface;",
        "setTransactionsApi",
        "(Lcom/mastercard/terminalsdk/TransactionInterface;)V",
        "verveSoftPosInitializationObservable",
        "Ljava/util/Observable;",
        "initMposLibrary",
        "",
        "context",
        "Landroid/app/Activity;",
        "initVisaLib",
        "onCreate",
        "Companion",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

.field public static INSTANCE:Lcom/woleapp/netpos/contactless/app/NetPosApp;

.field private static cr100Pos:Lcom/dspread/xpos/QPOSService;


# instance fields
.field public builder:Ljava/lang/StringBuilder;

.field private configuration:Lcom/mastercard/terminalsdk/ConfigurationInterface;

.field public nfcProvider:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

.field public outcomeObserver:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;

.field private final terminalSdk:Lcom/mastercard/terminalsdk/TerminalSdk;

.field public transactionsApi:Lcom/mastercard/terminalsdk/TransactionInterface;

.field private verveSoftPosInitializationObservable:Ljava/util/Observable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;-><init>()V

    .line 46
    invoke-static {}, Lcom/mastercard/terminalsdk/TerminalSdk;->getInstance()Lcom/mastercard/terminalsdk/TerminalSdk;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->terminalSdk:Lcom/mastercard/terminalsdk/TerminalSdk;

    .line 26
    return-void
.end method

.method public static final synthetic access$getCr100Pos$cp()Lcom/dspread/xpos/QPOSService;
    .locals 1

    .line 25
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->cr100Pos:Lcom/dspread/xpos/QPOSService;

    return-object v0
.end method

.method public static final synthetic access$setCr100Pos$cp(Lcom/dspread/xpos/QPOSService;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/dspread/xpos/QPOSService;

    .line 25
    sput-object p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->cr100Pos:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method public static final getCr100Pos()Lcom/dspread/xpos/QPOSService;
    .locals 1

    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->getCr100Pos()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    return-object v0
.end method

.method private final initVisaLib()V
    .locals 11

    .line 66
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getInstance()Lcom/visa/app/ttpkernel/ContactlessConfiguration;

    move-result-object v0

    .line 67
    .local v0, "contactlessConfiguration":Lcom/visa/app/ttpkernel/ContactlessConfiguration;
    invoke-virtual {v0}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->getTerminalData()Ljava/util/HashMap;

    move-result-object v1

    .line 68
    .local v1, "myData":Ljava/util/HashMap;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "data at start"

    invoke-static {v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v3, "myData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    move-object v7, v6

    .local v7, "it":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 70
    .local v8, "$i$a$-forEach-NetPosApp$initVisaLib$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    nop

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    .end local v7    # "it":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-forEach-NetPosApp$initVisaLib$1":I
    goto :goto_0

    .line 129
    :cond_0
    nop

    .line 72
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x2

    new-array v5, v4, [B

    fill-array-data v5, :array_0

    const-string v6, "9F1A"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    new-array v5, v4, [B

    fill-array-data v5, :array_1

    const-string v6, "5F2A"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    const/4 v5, 0x1

    new-array v6, v5, [B

    const/16 v7, 0x22

    aput-byte v7, v6, v2

    const-string v7, "9F35"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    new-array v5, v5, [B

    aput-byte v2, v5, v2

    const-string v2, "009C"

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    new-array v3, v4, [B

    fill-array-data v3, :array_2

    const-string v4, "9F09"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 78
    const/4 v3, 0x4

    new-array v4, v3, [B

    fill-array-data v4, :array_3

    .line 77
    const-string v5, "9F66"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 80
    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    .line 79
    const-string v5, "9F33"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 82
    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    .line 83
    nop

    .line 82
    nop

    .line 84
    nop

    .line 82
    nop

    .line 85
    nop

    .line 82
    nop

    .line 86
    nop

    .line 82
    nop

    .line 81
    const-string v5, "9F40"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "NetPOS Contactless"

    .line 89
    .local v2, "mercahnt":Ljava/lang/String;
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .local v4, "merchantByte":[B
    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    const-string v6, "9F4E"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v6, "9F1B"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "DF01"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v0, v1}, Lcom/visa/app/ttpkernel/ContactlessConfiguration;->setTerminalData(Ljava/util/HashMap;)V

    .line 94
    return-void

    :array_0
    .array-data 1
        0x5t
        0x66t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5t
        0x66t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        -0x74t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x1at
        0x0t
        0x40t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        -0x20t
        -0x8t
        -0x38t
    .end array-data

    :array_5
    .array-data 1
        0x60t
        0x0t
        0x0t
        0x50t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static final setCr100Pos(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->setCr100Pos(Lcom/dspread/xpos/QPOSService;)V

    return-void
.end method


# virtual methods
.method public final getBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->builder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "builder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNfcProvider()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->nfcProvider:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "nfcProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutcomeObserver()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->outcomeObserver:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "outcomeObserver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTerminalSdk()Lcom/mastercard/terminalsdk/TerminalSdk;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->terminalSdk:Lcom/mastercard/terminalsdk/TerminalSdk;

    return-object v0
.end method

.method public final getTransactionsApi()Lcom/mastercard/terminalsdk/TransactionInterface;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->transactionsApi:Lcom/mastercard/terminalsdk/TransactionInterface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "transactionsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final initMposLibrary(Landroid/app/Activity;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    nop

    .line 98
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;-><init>()V

    .line 97
    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->setOutcomeObserver(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;)V

    .line 99
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->terminalSdk:Lcom/mastercard/terminalsdk/TerminalSdk;

    invoke-virtual {v0}, Lcom/mastercard/terminalsdk/TerminalSdk;->getConfiguration()Lcom/mastercard/terminalsdk/ConfigurationInterface;

    move-result-object v0

    const-string v1, "terminalSdk.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->configuration:Lcom/mastercard/terminalsdk/ConfigurationInterface;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->setBuilder(Ljava/lang/StringBuilder;)V

    .line 101
    nop

    .line 102
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

    .line 103
    nop

    .line 102
    invoke-direct {v0, p1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;-><init>(Landroid/app/Activity;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->setNfcProvider(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;)V

    .line 106
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;-><init>()V

    .line 105
    nop

    .line 107
    .local v0, "cardCommProviderStub":Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;
    new-instance v1, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;-><init>(Ljava/lang/StringBuilder;)V

    .line 108
    .local v1, "logger":Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->configuration:Lcom/mastercard/terminalsdk/ConfigurationInterface;

    const/4 v3, 0x0

    const-string v4, "configuration"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    .line 110
    :cond_0
    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ResourceProviderImplementation;

    .line 111
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 110
    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ResourceProviderImplementation;-><init>(Landroid/content/Context;)V

    check-cast v5, Lcom/mastercard/terminalsdk/listeners/ResourceProvider;

    .line 109
    invoke-interface {v2, v5}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->withResourceProvider(Lcom/mastercard/terminalsdk/listeners/ResourceProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;

    move-result-object v2

    .line 114
    move-object v5, v1

    check-cast v5, Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;

    invoke-interface {v2, v5}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->withLogger(Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;)Lcom/mastercard/terminalsdk/ConfigurationInterface;

    move-result-object v2

    .line 115
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getNfcProvider()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

    move-result-object v7

    check-cast v7, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object v7, v0

    check-cast v7, Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;

    aput-object v7, v5, v6

    invoke-interface {v2, v5}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->withCardCommunication([Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;

    move-result-object v2

    .line 116
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getOutcomeObserver()Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;

    move-result-object v5

    check-cast v5, Lcom/mastercard/terminalsdk/listeners/TransactionOutcomeObserver;

    invoke-interface {v2, v5}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->withTransactionObserver(Lcom/mastercard/terminalsdk/listeners/TransactionOutcomeObserver;)Lcom/mastercard/terminalsdk/ConfigurationInterface;

    move-result-object v2

    .line 117
    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/UnpredictableNumberImplementation;

    invoke-direct {v5}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/UnpredictableNumberImplementation;-><init>()V

    check-cast v5, Lcom/mastercard/terminalsdk/listeners/UnpredictableNumberProvider;

    invoke-interface {v2, v5}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->withUnpredictableNumberProvider(Lcom/mastercard/terminalsdk/listeners/UnpredictableNumberProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;

    move-result-object v2

    .line 119
    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/DisplayImplementation;

    .line 120
    move-object v6, v1

    check-cast v6, Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;

    .line 119
    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/DisplayImplementation;-><init>(Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;)V

    check-cast v5, Lcom/mastercard/terminalsdk/listeners/DisplayProvider;

    .line 118
    invoke-interface {v2, v5}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->withMessageDisplayProvider(Lcom/mastercard/terminalsdk/listeners/DisplayProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;

    .line 123
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->configuration:Lcom/mastercard/terminalsdk/ConfigurationInterface;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-interface {v2}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->initializeLibrary()Lcom/mastercard/terminalsdk/TransactionInterface;

    move-result-object v2

    const-string v5, "configuration.initializeLibrary()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->setTransactionsApi(Lcom/mastercard/terminalsdk/TransactionInterface;)V

    .line 124
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->configuration:Lcom/mastercard/terminalsdk/ConfigurationInterface;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    const-string v2, "MPOS"

    invoke-interface {v3, v2}, Lcom/mastercard/terminalsdk/ConfigurationInterface;->selectProfile(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;->onCreate()V

    .line 50
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->Companion:Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->assignInstance(Lcom/woleapp/netpos/contactless/app/NetPosApp;)V

    .line 51
    new-instance v0, Ltimber/log/Timber$DebugTree;

    invoke-direct {v0}, Ltimber/log/Timber$DebugTree;-><init>()V

    check-cast v0, Ltimber/log/Timber$Tree;

    invoke-static {v0}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 52
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->INSTANCE:Lcom/dsofttech/dprefs/utils/DPrefs;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dsofttech/dprefs/utils/DPrefs;->initializeDPrefs(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;

    invoke-direct {v0}, Lcom/pixplicity/easyprefs/library/Prefs$Builder;-><init>()V

    .line 54
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->setContext(Landroid/content/Context;)Lcom/pixplicity/easyprefs/library/Prefs$Builder;

    move-result-object v0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->setMode(I)Lcom/pixplicity/easyprefs/library/Prefs$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->setPrefsName(Ljava/lang/String;)Lcom/pixplicity/easyprefs/library/Prefs$Builder;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->setUseDefaultSharedPreference(Z)Lcom/pixplicity/easyprefs/library/Prefs$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->build()V

    .line 59
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->initVisaLib()V

    .line 62
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveSoftPosInitialization;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/util/Observable;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->verveSoftPosInitializationObservable:Ljava/util/Observable;

    .line 63
    return-void
.end method

.method public final setBuilder(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/StringBuilder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final setNfcProvider(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->nfcProvider:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/NfcProvider;

    return-void
.end method

.method public final setOutcomeObserver(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->outcomeObserver:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;

    return-void
.end method

.method public final setTransactionsApi(Lcom/mastercard/terminalsdk/TransactionInterface;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/mastercard/terminalsdk/TransactionInterface;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->transactionsApi:Lcom/mastercard/terminalsdk/TransactionInterface;

    return-void
.end method
