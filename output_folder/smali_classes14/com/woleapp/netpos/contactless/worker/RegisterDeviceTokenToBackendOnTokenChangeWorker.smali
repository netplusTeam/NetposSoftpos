.class public final Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;
.super Landroidx/work/Worker;
.source "RegisterDeviceTokenToBackendOnTokenChangeWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "workParameters",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "getContext",
        "()Landroid/content/Context;",
        "notificationRepository",
        "Lcom/woleapp/netpos/contactless/network/NotificationService;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
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


# instance fields
.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final context:Landroid/content/Context;

.field private final notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationService;

.field private final workParameters:Landroidx/work/WorkerParameters;


# direct methods
.method public static synthetic $r8$lambda$cf4vxHFxLvN6g8KLOtQp00fcbL4(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->doWork$lambda-2$lambda-1$lambda-0(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workParameters"    # Landroidx/work/WorkerParameters;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 17
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->workParameters:Landroidx/work/WorkerParameters;

    .line 20
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 22
    sget-object v0, Lcom/woleapp/netpos/contactless/util/NotificationClient;->Companion:Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/NotificationClient$Companion;->getInstance()Lcom/woleapp/netpos/contactless/network/NotificationService;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationService;

    .line 16
    return-void
.end method

.method private static final doWork$lambda-2$lambda-1$lambda-0(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;)V
    .locals 1
    .param p0, "$tokenResponse"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "value"    # Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;

    const-string v0, "$tokenResponse"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 13

    .line 25
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 26
    .local v0, "terminalId":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/User;->getNetplus_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "userName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->getInputData()Landroidx/work/Data;

    move-result-object v3

    const-string v4, "WORKER_INPUT_FIREBASE_DEVICE_TOKEN_TAG"

    invoke-virtual {v3, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "deviceToken":Ljava/lang/String;
    if-eqz v0, :cond_4

    move-object v4, v0

    .local v4, "tid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 30
    .local v5, "$i$a$-let-RegisterDeviceTokenToBackendOnTokenChangeWorker$doWork$response$1":I
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 31
    .local v6, "tokenResponse":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v3, :cond_2

    move-object v7, v3

    .local v7, "token":Ljava/lang/String;
    const/4 v8, 0x0

    .line 32
    .local v8, "$i$a$-let-RegisterDeviceTokenToBackendOnTokenChangeWorker$doWork$response$1$1":I
    new-instance v9, Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;

    invoke-direct {v9, v7, v4, v2}, Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v9, "req":Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;
    iget-object v10, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationService;

    invoke-interface {v10, v9}, Lcom/woleapp/netpos/contactless/network/NotificationService;->registerDeviceToken(Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;)Lio/reactivex/Single;

    move-result-object v10

    .line 34
    sget-object v11, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RxJavaUtils;

    const-string v12, "NOTIFICATION_ERROR"

    invoke-virtual {v11, v12}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->getSingleTransformer(Ljava/lang/String;)Lio/reactivex/SingleTransformer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v10

    .line 35
    new-instance v11, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker$$ExternalSyntheticLambda0;

    invoke-direct {v11, v6}, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v10, v11}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v10

    const-string v11, "notificationRepository.r\u2026lue\n                    }"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v11, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v10, v11}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 38
    nop

    .line 31
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "$i$a$-let-RegisterDeviceTokenToBackendOnTokenChangeWorker$doWork$response$1$1":I
    .end local v9    # "req":Lcom/woleapp/netpos/contactless/model/NotificationRegisterDeviceTokenModel;
    nop

    .line 39
    :cond_2
    iget-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;->getSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 29
    .end local v4    # "tid":Ljava/lang/String;
    .end local v5    # "$i$a$-let-RegisterDeviceTokenToBackendOnTokenChangeWorker$doWork$response$1":I
    .end local v6    # "tokenResponse":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    .line 40
    :cond_4
    const/4 v1, 0x0

    .line 29
    :goto_2
    nop

    .line 42
    .local v1, "response":Z
    if-eqz v1, :cond_5

    .line 43
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    .line 42
    const-string v5, "{\n            Result.success()\n        }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_5
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    .line 44
    const-string v5, "{\n            Result.retry()\n        }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :goto_3
    return-object v4
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->context:Landroid/content/Context;

    return-object v0
.end method
