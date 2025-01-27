.class public final Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;
.super Ljava/lang/Object;
.source "BillsPaymentUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00082\u0006\u0010\u0005\u001a\u00020\u0006\u001a2\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00102\u0006\u0010\u0011\u001a\u00020\u0012\u001a\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "checkAppToken",
        "",
        "checkBillsPaymentToken",
        "getAppToken",
        "Lio/reactivex/Single;",
        "stormApiService",
        "Lcom/woleapp/netpos/contactless/network/StormApiService;",
        "getBillsToken",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "sendSMS",
        "",
        "message",
        "",
        "number",
        "_smsSent",
        "Landroidx/lifecycle/MutableLiveData;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "sendSmSReq",
        "",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$GO1ieFHxtPse-dB3uZjg8eJjngY(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->sendSMS$lambda-7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J6s74Ill3jJgjLPjGRlW9f5QcBE(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->sendSMS$lambda-11(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNgMsJozrawb2UezAeHjw8Rev7U(Landroidx/lifecycle/MutableLiveData;Lcom/woleapp/netpos/contactless/model/TokenResp;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->getBillsToken$lambda-4(Landroidx/lifecycle/MutableLiveData;Lcom/woleapp/netpos/contactless/model/TokenResp;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cYd9f3G6o5TmDtvQqT454nUtkvA(Lcom/woleapp/netpos/contactless/network/StormApiService;Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->getBillsToken$lambda-1(Lcom/woleapp/netpos/contactless/network/StormApiService;Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pKNKiuFEMciAOXOOEZsly4JepE4(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->getAppToken$lambda-5(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static final checkAppToken()Z
    .locals 4

    .line 68
    const-string v0, "user_token"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "appToken":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/JWTHelper;->isExpired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static final checkBillsPaymentToken()Z
    .locals 4

    .line 22
    const-string v0, "pref_bills_token"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "billsToken":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/JWTHelper;->isExpired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static final getAppToken(Lcom/woleapp/netpos/contactless/network/StormApiService;)Lio/reactivex/Single;
    .locals 3
    .param p0, "stormApiService"    # Lcom/woleapp/netpos/contactless/network/StormApiService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/network/StormApiService;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "stormApiService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 74
    .local v0, "credentials":Lcom/google/gson/JsonObject;
    sget-object v1, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getAPP_NAME()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appname"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getAPP_PASSWORD()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get resp"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-interface {p0, v0}, Lcom/woleapp/netpos/contactless/network/StormApiService;->appToken(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda4;-><init>()V

    .line 78
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    const-string v2, "stormApiService.appToken\u2026}\n            )\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    return-object v1
.end method

.method private static final getAppToken$lambda-5(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 3
    .param p0, "it"    # Lcom/woleapp/netpos/contactless/model/TokenResp;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TokenResp;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_token"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method public static final getBillsToken(Lcom/woleapp/netpos/contactless/network/StormApiService;)Landroidx/lifecycle/LiveData;
    .locals 4
    .param p0, "stormApiService"    # Lcom/woleapp/netpos/contactless/network/StormApiService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/network/StormApiService;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "stormApiService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .local v0, "liveData":Landroidx/lifecycle/MutableLiveData;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 29
    .local v1, "credentials":Lcom/google/gson/JsonObject;
    const-string v2, "appname"

    const-string v3, "bills_payment"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "password"

    const-string v3, "!L@ns33mfls"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0, v1}, Lcom/woleapp/netpos/contactless/network/StormApiService;->appToken(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v2

    .line 33
    new-instance v3, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/network/StormApiService;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v2

    .line 46
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 47
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "stormApiService.appToken\u2026)\n            }\n        }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v3, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v3}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 64
    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/LiveData;

    return-object v2
.end method

.method private static final getBillsToken$lambda-1(Lcom/woleapp/netpos/contactless/network/StormApiService;Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 5
    .param p0, "$stormApiService"    # Lcom/woleapp/netpos/contactless/network/StormApiService;
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/TokenResp;

    const-string v0, "$stormApiService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/TokenResp;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 37
    move-object v1, v0

    .local v1, "$this$getBillsToken_u24lambda_u2d1_u24lambda_u2d0":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-apply-BillsPaymentUtilsKt$getBillsToken$1$billsCredentials$1":I
    const-string v3, "username"

    const-string v4, "bills@netplusadvisory.com"

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "password"

    const-string v4, "C0r3M3ltD0wn!!"

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    nop

    .line 37
    .end local v1    # "$this$getBillsToken_u24lambda_u2d1_u24lambda_u2d0":Lcom/google/gson/JsonObject;
    .end local v2    # "$i$a$-apply-BillsPaymentUtilsKt$getBillsToken$1$billsCredentials$1":I
    nop

    .line 36
    nop

    .line 41
    .local v0, "billsCredentials":Lcom/google/gson/JsonObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/woleapp/netpos/contactless/network/StormApiService;->getBillsToken(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v0

    .line 43
    .end local v0    # "billsCredentials":Lcom/google/gson/JsonObject;
    check-cast v0, Lio/reactivex/SingleSource;

    .line 35
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Login Failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final getBillsToken$lambda-4(Landroidx/lifecycle/MutableLiveData;Lcom/woleapp/netpos/contactless/model/TokenResp;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "$liveData"    # Landroidx/lifecycle/MutableLiveData;
    .param p1, "res"    # Lcom/woleapp/netpos/contactless/model/TokenResp;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "$liveData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 49
    if-eqz p1, :cond_1

    move-object v2, p1

    .local v2, "it":Lcom/woleapp/netpos/contactless/model/TokenResp;
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-let-BillsPaymentUtilsKt$getBillsToken$2$1":I
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_bills_token"

    invoke-static {v5, v4}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 58
    nop

    .line 49
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/model/TokenResp;
    .end local v3    # "$i$a$-let-BillsPaymentUtilsKt$getBillsToken$2$1":I
    :cond_1
    :goto_0
    nop

    .line 59
    if-eqz p2, :cond_2

    move-object v2, p2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 60
    .local v3, "$i$a$-let-BillsPaymentUtilsKt$getBillsToken$2$2":I
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    nop

    .line 59
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-BillsPaymentUtilsKt$getBillsToken$2$2":I
    nop

    .line 63
    :cond_2
    return-void
.end method

.method public static final sendSMS(Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "_smsSent"    # Landroidx/lifecycle/MutableLiveData;
    .param p3, "compositeDisposable"    # Lio/reactivex/disposables/CompositeDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ")V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_smsSent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->checkAppToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "app token not found, get it first"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getBillsInstance()Lcom/woleapp/netpos/contactless/network/StormApiService;

    move-result-object v0

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->getAppToken(Lcom/woleapp/netpos/contactless/network/StormApiService;)Lio/reactivex/Single;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 110
    const-string v1, "{\n        Timber.e(\"app \u2026mber)\n            }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->sendSmSReq(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 110
    :goto_0
    nop

    .line 120
    .local v0, "req":Lio/reactivex/Single;
    nop

    .line 121
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 122
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda3;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "req\n        .subscribeOn\u2026)\n            }\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {v1, p3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 137
    return-void
.end method

.method private static final sendSMS$lambda-11(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "$_smsSent"    # Landroidx/lifecycle/MutableLiveData;
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "$_smsSent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 125
    .local v2, "$i$a$-let-BillsPaymentUtilsKt$sendSMS$1$1":I
    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    nop

    .line 124
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-BillsPaymentUtilsKt$sendSMS$1$1":I
    nop

    .line 128
    :cond_0
    if-eqz p2, :cond_2

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 129
    .local v2, "$i$a$-let-BillsPaymentUtilsKt$sendSMS$1$2":I
    invoke-static {v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 130
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lretrofit2/HttpException;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 131
    .local v3, "httpException":Lretrofit2/HttpException;
    :goto_0
    move-object v4, v3

    .local v4, "e":Lretrofit2/HttpException;
    const/4 v5, 0x0

    .line 132
    .local v5, "$i$a$-let-BillsPaymentUtilsKt$sendSMS$1$2$1":I
    nop

    .line 131
    .end local v4    # "e":Lretrofit2/HttpException;
    .end local v5    # "$i$a$-let-BillsPaymentUtilsKt$sendSMS$1$2$1":I
    nop

    .line 134
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 135
    nop

    .line 128
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-BillsPaymentUtilsKt$sendSMS$1$2":I
    .end local v3    # "httpException":Lretrofit2/HttpException;
    nop

    .line 136
    :cond_2
    return-void
.end method

.method private static final sendSMS$lambda-7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lio/reactivex/SingleSource;
    .locals 1
    .param p0, "$message"    # Ljava/lang/String;
    .param p1, "$number"    # Ljava/lang/String;
    .param p2, "it"    # Ljava/lang/Boolean;

    const-string v0, "$message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->sendSmSReq(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method private static final sendSmSReq(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$sendSmSReq_u24lambda_u2d6":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$a$-apply-BillsPaymentUtilsKt$sendSmSReq$map$1":I
    const-string v3, "from"

    const-string v4, "NetPlus"

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+234"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "to"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "message"

    invoke-virtual {v1, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    nop

    .line 92
    .end local v1    # "$this$sendSmSReq_u24lambda_u2d6":Lcom/google/gson/JsonObject;
    .end local v2    # "$i$a$-apply-BillsPaymentUtilsKt$sendSmSReq$map$1":I
    nop

    .line 97
    .local v0, "map":Lcom/google/gson/JsonObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user_token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "auth":Ljava/lang/String;
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 99
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "map.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v5, "application/json; charset=utf-8"

    invoke-virtual {v4, v5}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 99
    nop

    .line 101
    .local v2, "body":Lokhttp3/RequestBody;
    sget-object v3, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getSmsServiceInstance()Lcom/woleapp/netpos/contactless/network/SmsService;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/woleapp/netpos/contactless/network/SmsService;->sendSms(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/Single;

    move-result-object v3

    return-object v3
.end method
