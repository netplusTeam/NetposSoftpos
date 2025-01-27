.class public final Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;
.super Ljava/lang/Object;
.source "MqttHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMqttHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MqttHelper.kt\ncom/woleapp/netpos/contactless/mqtt/MqttHelper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n13579#2,2:243\n1855#3,2:245\n*S KotlinDebug\n*F\n+ 1 MqttHelper.kt\ncom/woleapp/netpos/contactless/mqtt/MqttHelper\n*L\n236#1:243,2\n220#1:245,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0006H\u0002J2\u0010\u0017\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u00182\u0006\u0010\u000f\u001a\u00020\u00102\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J2\u0010\u001f\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u00182\u0006\u0010 \u001a\u00020\u00152\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001a2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;",
        "",
        "()V",
        "PORT",
        "",
        "SERVER_HOST",
        "",
        "client",
        "Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;",
        "disposables",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "mqttLocalDao",
        "Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;",
        "checkDatabaseForFailedEvents",
        "",
        "context",
        "Landroid/content/Context;",
        "disconnect",
        "getMqttClientSSLConfigImpl",
        "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;",
        "getTopic",
        "Lcom/woleapp/netpos/contactless/model/MqttTopics;",
        "string",
        "init",
        "T",
        "event",
        "Lcom/woleapp/netpos/contactless/model/MqttEvent;",
        "topic",
        "savePayloadToLocalDatabase",
        "mqttEventsLocal",
        "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
        "sendPayload",
        "mqttTopic",
        "failedEvent",
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
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

.field private static final PORT:I = 0x22b3

.field private static final SERVER_HOST:Ljava/lang/String;

.field private static client:Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

.field private static disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private static mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;


# direct methods
.method public static synthetic $r8$lambda$8xqcGpGvnx-h7PQwdaqO265qi9Q()V
    .locals 0

    invoke-static {}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload$lambda-16$lambda-15()V

    return-void
.end method

.method public static synthetic $r8$lambda$9yex7C7emIqCSlp0Voph2-JEU7I(Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->savePayloadToLocalDatabase$lambda-20(Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KD4K1nwhW8yWk4zk_f9XN_oIRiI(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->init$lambda-3$lambda-1(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nv4wCroC89N2KAp3RXLUHTZd1Dk(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disconnect$lambda-5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U3xFdi-nbPvkxtoAyc8RknZXoV8(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;Ljava/util/List;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->checkDatabaseForFailedEvents$lambda-26$lambda-21(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;Ljava/util/List;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UgBNoMM0qDwAHaJ-c7B0EUKWoIA(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->getMqttClientSSLConfigImpl$lambda-7$lambda-6(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Vri00m9-BPB3SF5OuVU6tkmJukg(Landroid/content/Context;Ljava/lang/String;Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->init$lambda-3$lambda-0(Landroid/content/Context;Ljava/lang/String;Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XVvD6jqVJU3lk-3DG4TP91EcCZQ()V
    .locals 0

    invoke-static {}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disconnect$lambda-4()V

    return-void
.end method

.method public static synthetic $r8$lambda$b6tvKrHzT6wmhWuc4ec9cW031yU(Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload$lambda-16$lambda-14(Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8IerX0j41dEmCzahfYSwG1PUcE(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload$lambda-16$lambda-12(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sjCqODUL2uFqnLtgrzn-svQfjhs(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->checkDatabaseForFailedEvents$lambda-26$lambda-25(Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    .line 30
    sget-object v0, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getBASE_URL_NETPOS_MQTT()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->SERVER_HOST:Ljava/lang/String;

    .line 33
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkDatabaseForFailedEvents(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->mqttLocalDao()Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    move-result-object v0

    .line 210
    sput-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    .line 212
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    if-eqz v0, :cond_1

    .local v0, "$this$checkDatabaseForFailedEvents_u24lambda_u2d26":Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$a$-apply-MqttHelper$checkDatabaseForFailedEvents$1":I
    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;->getLocalEvents()Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v2

    .line 216
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 217
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 218
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    .line 232
    nop

    .line 212
    .end local v0    # "$this$checkDatabaseForFailedEvents_u24lambda_u2d26":Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
    .end local v1    # "$i$a$-apply-MqttHelper$checkDatabaseForFailedEvents$1":I
    nop

    .line 233
    :cond_1
    return-void
.end method

.method private static final checkDatabaseForFailedEvents$lambda-26$lambda-21(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;Ljava/util/List;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "$this_apply"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
    .param p1, "it"    # Ljava/util/List;

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-interface {p0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;->deleteAllEvents()Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->toSingleDefault(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final checkDatabaseForFailedEvents$lambda-26$lambda-25(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 14
    .param p0, "t1"    # Ljava/util/List;
    .param p1, "t2"    # Ljava/lang/Throwable;

    .line 219
    if-eqz p0, :cond_1

    move-object v0, p0

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 220
    .local v1, "$i$a$-let-MqttHelper$checkDatabaseForFailedEvents$1$2$1":I
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 245
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v12, v5

    check-cast v12, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    .local v12, "localEvent":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    const/4 v13, 0x0

    .line 221
    .local v13, "$i$a$-forEach-MqttHelper$checkDatabaseForFailedEvents$1$2$1$1":I
    sget-object v6, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->getTopic(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttTopics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    nop

    .line 223
    invoke-virtual {v12}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->getTopic(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttTopics;

    move-result-object v7

    .line 222
    const/4 v8, 0x0

    .line 224
    nop

    .line 222
    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v9, v12

    invoke-static/range {v6 .. v11}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload$default(Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;ILjava/lang/Object;)V

    .line 226
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v12    # "localEvent":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .end local v13    # "$i$a$-forEach-MqttHelper$checkDatabaseForFailedEvents$1$2$1$1":I
    goto :goto_0

    .line 246
    :cond_0
    nop

    .line 227
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    nop

    .line 219
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-MqttHelper$checkDatabaseForFailedEvents$1$2$1":I
    nop

    .line 228
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 229
    .local v1, "$i$a$-let-MqttHelper$checkDatabaseForFailedEvents$1$2$2":I
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 230
    nop

    .line 228
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-MqttHelper$checkDatabaseForFailedEvents$1$2$2":I
    nop

    .line 231
    :cond_2
    return-void
.end method

.method private static final disconnect$lambda-4()V
    .locals 2

    .line 88
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Disconnected"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final disconnect$lambda-5(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "it"    # Ljava/lang/Throwable;

    .line 89
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method private final getMqttClientSSLConfigImpl(Landroid/content/Context;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;-><init>()V

    .line 97
    move-object v1, v0

    .local v1, "$this$getMqttClientSSLConfigImpl_u24lambda_u2d7":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$a$-apply-MqttHelper$getMqttClientSSLConfigImpl$1":I
    new-instance v3, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    .line 100
    sget-object v3, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;

    invoke-virtual {v3, p1}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getTrustManagerFactory(Landroid/content/Context;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;->trustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    .line 101
    sget-object v3, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;

    invoke-virtual {v3, p1}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getKeyMangerFactory(Landroid/content/Context;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;->keyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    .line 102
    nop

    .line 97
    .end local v1    # "$this$getMqttClientSSLConfigImpl_u24lambda_u2d7":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;
    .end local v2    # "$i$a$-apply-MqttHelper$getMqttClientSSLConfigImpl$1":I
    nop

    .line 102
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;->build()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v0

    const-string v1, "Default()\n            .a\u2026t))\n            }.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    return-object v0
.end method

.method private static final getMqttClientSSLConfigImpl$lambda-7$lambda-6(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 99
    const/4 p0, 0x1

    return p0
.end method

.method private final getTopic(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->values()[Lcom/woleapp/netpos/contactless/model/MqttTopics;

    move-result-object v0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 243
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lcom/woleapp/netpos/contactless/model/MqttTopics;
    const/4 v6, 0x0

    .line 237
    .local v6, "$i$a$-forEach-MqttHelper$getTopic$1":I
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->getTopic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 238
    return-object v5

    .line 239
    :cond_0
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .end local v6    # "$i$a$-forEach-MqttHelper$getTopic$1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    nop

    .line 240
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    sget-object v0, Lcom/woleapp/netpos/contactless/model/MqttTopics;->TRANSACTIONS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    return-object v0
.end method

.method public static synthetic init$default(Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;Landroid/content/Context;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;ILjava/lang/Object;)V
    .locals 1

    .line 36
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->init(Landroid/content/Context;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;)V

    return-void
.end method

.method private static final init$lambda-3$lambda-0(Landroid/content/Context;Ljava/lang/String;Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;)V
    .locals 2
    .param p0, "$context"    # Landroid/content/Context;
    .param p1, "$clientId"    # Ljava/lang/String;
    .param p2, "it"    # Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->checkDatabaseForFailedEvents(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Connected Successfully to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->SERVER_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private static final init$lambda-3$lambda-1(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;)V
    .locals 2
    .param p0, "it"    # Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected::cause - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method private final savePayloadToLocalDatabase(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V
    .locals 2
    .param p1, "mqttEventsLocal"    # Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    .line 194
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "saving into local"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;->insertNewTransaction(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)Lio/reactivex/Single;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 197
    nop

    .line 198
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 199
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 199
    nop

    .line 206
    sget-object v1, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    goto :goto_0

    .line 197
    :cond_0
    nop

    .line 207
    :goto_0
    return-void
.end method

.method private static final savePayloadToLocalDatabase$lambda-20(Ljava/lang/Long;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t1"    # Ljava/lang/Long;
    .param p1, "t2"    # Ljava/lang/Throwable;

    .line 200
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .local v1, "it":J
    const/4 v3, 0x0

    .line 201
    .local v3, "$i$a$-let-MqttHelper$savePayloadToLocalDatabase$1$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserted into local: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    nop

    .line 200
    .end local v1    # "it":J
    .end local v3    # "$i$a$-let-MqttHelper$savePayloadToLocalDatabase$1$1":I
    nop

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    move-object v1, p1

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-let-MqttHelper$savePayloadToLocalDatabase$1$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "did not insert into local: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    nop

    .line 203
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-MqttHelper$savePayloadToLocalDatabase$1$2":I
    nop

    .line 206
    :cond_1
    return-void
.end method

.method public static synthetic sendPayload$default(Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;ILjava/lang/Object;)V
    .locals 1

    .line 105
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 107
    move-object p2, v0

    .line 105
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 108
    move-object p3, v0

    .line 105
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload(Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    return-void
.end method

.method private static final sendPayload$lambda-16$lambda-12(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;)V
    .locals 8
    .param p0, "it"    # Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;

    .line 155
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;->getError()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "UTF_8"

    const-string v2, "it.publish.payloadAsBytes"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;->getError()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an error while publishing to topic: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;->getPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v4

    invoke-interface {v4}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;->getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; save"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;->getPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;->getPayloadAsBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 158
    move-object v0, v5

    .line 160
    .local v0, "failedPublish":Ljava/lang/String;
    sget-object v4, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    .line 161
    new-instance v5, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    .line 162
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;->getPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v6

    invoke-interface {v6}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;->getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    nop

    .line 164
    nop

    .line 161
    const-string v7, "error during publishing"

    invoke-direct {v5, v6, v0, v7}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->savePayloadToLocalDatabase(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    .line 168
    .end local v0    # "failedPublish":Ljava/lang/String;
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "Published"

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishResult;->getPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;->getPayloadAsBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method private static final sendPayload$lambda-16$lambda-14(Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "$event"    # Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .param p1, "$mqttTopic"    # Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .param p2, "$failedEvent"    # Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .param p3, "it"    # Ljava/lang/Throwable;

    const-string v0, "$mqttTopic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "throwable; save"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/woleapp/netpos/contactless/model/MqttEventKt;->toLocal(Lcom/woleapp/netpos/contactless/model/MqttEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p2

    .line 173
    :cond_1
    nop

    .line 175
    .local v0, "local":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    if-eqz v0, :cond_2

    move-object v1, v0

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    const/4 v2, 0x0

    .line 176
    .local v2, "$i$a$-let-MqttHelper$sendPayload$2$5$1":I
    sget-object v3, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-direct {v3, v0}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->savePayloadToLocalDatabase(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    .line 177
    nop

    .line 175
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .end local v2    # "$i$a$-let-MqttHelper$sendPayload$2$5$1":I
    nop

    .line 178
    :cond_2
    invoke-static {p3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method private static final sendPayload$lambda-16$lambda-15()V
    .locals 2

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Completed"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 4

    .line 80
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "disconnecting"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    sget-object v1, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->client:Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

    if-nez v1, :cond_0

    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Client is null or not connected"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;->disconnect()Lio/reactivex/Completable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda9;-><init>()V

    new-instance v3, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda10;-><init>()V

    .line 88
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "client?.disconnect()?.su\u2026mber.e(it)\n            })"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v2, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 91
    sput-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->client:Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

    .line 92
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 93
    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .param p3, "topic"    # Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/woleapp/netpos/contactless/model/MqttEvent<",
            "TT;>;",
            "Lcom/woleapp/netpos/contactless/model/MqttTopics;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->mqttLocalDao()Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    .line 39
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->client:Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->checkDatabaseForFailedEvents(Landroid/content/Context;)V

    .line 41
    return-void

    .line 43
    :cond_1
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v0

    .line 44
    .local v0, "user":Lcom/woleapp/netpos/contactless/model/User;
    if-eqz v0, :cond_5

    move-object v1, v0

    .local v1, "u":Lcom/woleapp/netpos/contactless/model/User;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-let-MqttHelper$init$1":I
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    .line 46
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Terminal ID Null"

    invoke-static {v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    goto/16 :goto_2

    .line 49
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lkotlin/ranges/IntRange;

    const/16 v5, 0x2710

    const v6, 0x3b9ac9ff

    invoke-direct {v4, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v5, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v5, Lkotlin/random/Random;

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "clientId":Ljava/lang/String;
    invoke-static {}, Lcom/hivemq/client/mqtt/MqttClient;->builder()Lcom/hivemq/client/mqtt/MqttClientBuilder;

    move-result-object v4

    .line 51
    invoke-interface {v4, v3}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/MqttClientBuilder;

    .line 52
    sget-object v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-direct {v5, p1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->getMqttClientSSLConfigImpl(Landroid/content/Context;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/mqtt/MqttClientSslConfig;

    invoke-interface {v4, v5}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/MqttClientBuilder;

    .line 53
    sget-object v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->SERVER_HOST:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/MqttClientBuilder;

    .line 54
    const/16 v5, 0x22b3

    invoke-interface {v4, v5}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/MqttClientBuilder;

    .line 55
    invoke-interface {v4}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->automaticReconnectWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/MqttClientBuilder;

    .line 56
    new-instance v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda7;

    invoke-direct {v5, p1, v3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/MqttClientBuilder;

    new-instance v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda8;-><init>()V

    .line 59
    invoke-interface {v4, v5}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v4

    const-string v5, "builder()\n              \u2026use} \")\n                }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/hivemq/client/mqtt/MqttClientBuilder;

    .line 50
    nop

    .line 62
    .local v4, "clientBuilder":Lcom/hivemq/client/mqtt/MqttClientBuilder;
    invoke-interface {v4}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->useMqttVersion3()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;

    move-result-object v5

    invoke-interface {v5}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;->buildRx()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

    move-result-object v5

    move-object v6, v5

    .local v6, "$this$init_u24lambda_u2d3_u24lambda_u2d2":Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    const/4 v7, 0x0

    .line 63
    .local v7, "$i$a$-apply-MqttHelper$init$1$1":I
    nop

    .line 62
    .end local v6    # "$this$init_u24lambda_u2d3_u24lambda_u2d2":Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    .end local v7    # "$i$a$-apply-MqttHelper$init$1$1":I
    sput-object v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->client:Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

    .line 76
    nop

    .line 44
    .end local v1    # "u":Lcom/woleapp/netpos/contactless/model/User;
    .end local v2    # "$i$a$-let-MqttHelper$init$1":I
    .end local v3    # "clientId":Ljava/lang/String;
    .end local v4    # "clientBuilder":Lcom/hivemq/client/mqtt/MqttClientBuilder;
    :cond_5
    :goto_2
    nop

    .line 77
    return-void
.end method

.method public final sendPayload(Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V
    .locals 12
    .param p1, "mqttTopic"    # Lcom/woleapp/netpos/contactless/model/MqttTopics;
    .param p2, "event"    # Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .param p3, "failedEvent"    # Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/woleapp/netpos/contactless/model/MqttTopics;",
            "Lcom/woleapp/netpos/contactless/model/MqttEvent<",
            "TT;>;",
            "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
            ")V"
        }
    .end annotation

    const-string v0, "mqttTopic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Nothing to publish"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-void

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    move-object v1, p2

    .local v1, "$this$sendPayload_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    const/4 v2, 0x0

    .line 116
    .local v2, "$i$a$-apply-MqttHelper$sendPayload$1":I
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const-string v3, "pref_last_location"

    const-string v4, "lat:6.5244 long:3.3792"

    invoke-static {v3, v4}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setGeo(Ljava/lang/String;)V

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending to topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    nop

    .line 115
    .end local v1    # "$this$sendPayload_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v2    # "$i$a$-apply-MqttHelper$sendPayload$1":I
    nop

    .line 121
    :cond_1
    sget-object v1, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->client:Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

    if-eqz v1, :cond_8

    .local v1, "client":Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$a$-let-MqttHelper$sendPayload$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client state isConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client state isCorD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnectedOrReconnect()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hivemq/client/mqtt/MqttClientState;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 125
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "not connected, save"

    invoke-static {v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->getTopic()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client not connected"

    invoke-static {p2, v3, v4}, Lcom/woleapp/netpos/contactless/model/MqttEventKt;->toLocal(Lcom/woleapp/netpos/contactless/model/MqttEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move-object v3, p3

    .line 126
    :cond_3
    nop

    .line 128
    .local v3, "local":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    if-eqz v3, :cond_4

    move-object v4, v3

    .local v4, "it":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    const/4 v5, 0x0

    .line 129
    .local v5, "$i$a$-let-MqttHelper$sendPayload$2$1":I
    sget-object v6, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-direct {v6, v3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->savePayloadToLocalDatabase(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    .line 130
    nop

    .line 128
    .end local v4    # "it":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .end local v5    # "$i$a$-let-MqttHelper$sendPayload$2$1":I
    nop

    .line 131
    :cond_4
    goto/16 :goto_0

    .line 134
    .end local v3    # "local":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    :cond_5
    const/4 v3, 0x0

    .line 135
    .local v3, "flowable":Ljava/lang/Object;
    const-string v4, "this as java.lang.String).getBytes(charset)"

    const-string v5, "forName(\"UTF-8\")"

    const-string v6, "UTF-8"

    if-eqz p2, :cond_6

    move-object v7, p2

    .local v7, "it":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    const/4 v8, 0x0

    .line 136
    .local v8, "$i$a$-let-MqttHelper$sendPayload$2$2":I
    nop

    .line 137
    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;->builder()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder;

    move-result-object v9

    .line 138
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->getTopic()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder;->topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    move-result-object v9

    check-cast v9, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;

    .line 139
    sget-object v10, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-interface {v9, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    move-result-object v9

    check-cast v9, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;

    .line 140
    sget-object v10, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v10}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v10

    invoke-virtual {v10, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "gson.toJson(event)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;->payload([B)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    move-result-object v9

    check-cast v9, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;

    .line 141
    invoke-interface {v9}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;->build()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v9

    .line 136
    invoke-static {v9}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v3

    .line 143
    nop

    .line 135
    .end local v7    # "it":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v8    # "$i$a$-let-MqttHelper$sendPayload$2$2":I
    nop

    .line 144
    :cond_6
    if-eqz p3, :cond_7

    move-object v7, p3

    .local v7, "e":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    const/4 v8, 0x0

    .line 145
    .local v8, "$i$a$-let-MqttHelper$sendPayload$2$3":I
    nop

    .line 146
    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;->builder()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder;

    move-result-object v9

    .line 147
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getTopic()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder;->topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    move-result-object v9

    check-cast v9, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;

    .line 148
    sget-object v10, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-interface {v9, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    move-result-object v9

    check-cast v9, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;

    .line 149
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v5}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;->payload([B)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;

    .line 150
    invoke-interface {v4}, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;->build()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v4

    .line 145
    invoke-static {v4}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v3

    .line 152
    nop

    .line 144
    .end local v7    # "e":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .end local v8    # "$i$a$-let-MqttHelper$sendPayload$2$3":I
    nop

    .line 153
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;->publish(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object v4

    new-instance v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;

    invoke-direct {v6, p2, p1, p3}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    new-instance v7, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v4

    const-string v5, "client.publish(flowable!\u2026 Timber.e(\"Completed\") })"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v4, v5}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 181
    nop

    .line 121
    .end local v1    # "client":Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
    .end local v2    # "$i$a$-let-MqttHelper$sendPayload$2":I
    .end local v3    # "flowable":Ljava/lang/Object;
    :cond_8
    :goto_0
    nop

    .line 183
    sget-object v1, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->client:Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;

    if-nez v1, :cond_b

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "null, save"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/MqttTopics;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client is null"

    invoke-static {p2, v0, v1}, Lcom/woleapp/netpos/contactless/model/MqttEventKt;->toLocal(Lcom/woleapp/netpos/contactless/model/MqttEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    move-object v0, p3

    .line 185
    :cond_a
    nop

    .line 187
    .local v0, "local":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    if-eqz v0, :cond_b

    move-object v1, v0

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    const/4 v2, 0x0

    .line 188
    .local v2, "$i$a$-let-MqttHelper$sendPayload$3":I
    sget-object v3, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    invoke-direct {v3, v1}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->savePayloadToLocalDatabase(Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    .line 189
    nop

    .line 191
    .end local v0    # "local":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .end local v2    # "$i$a$-let-MqttHelper$sendPayload$3":I
    :cond_b
    return-void
.end method
