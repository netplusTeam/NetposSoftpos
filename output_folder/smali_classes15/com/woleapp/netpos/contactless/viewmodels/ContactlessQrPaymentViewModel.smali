.class public final Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ContactlessQrPaymentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J(\u0010\t\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000c \r*\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b0\u000b0\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "contactlessQrPaymentRepository",
        "Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "(Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;Lio/reactivex/disposables/CompositeDisposable;)V",
        "onCleared",
        "",
        "paymentWithQr",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/util/Resource;",
        "",
        "kotlin.jvm.PlatformType",
        "payWithQrRequest",
        "Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;",
        "savePaymentWithQrResponse",
        "data",
        "",
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
.field private final contactlessQrPaymentRepository:Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public static synthetic $r8$lambda$uVBRZIiRR3BS4S3LXO9dH8keAjY(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->paymentWithQr$lambda-0(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1
    .param p1, "contactlessQrPaymentRepository"    # Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;
    .param p2, "disposable"    # Lio/reactivex/disposables/CompositeDisposable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactlessQrPaymentRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->contactlessQrPaymentRepository:Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    .line 21
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 19
    return-void
.end method

.method private static final paymentWithQr$lambda-0(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;
    .param p1, "it"    # Lretrofit2/Response;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->savePaymentWithQrResponse(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 28
    const-string v1, "{\n                    sa\u2026ody()))\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 31
    const-string v1, "{\n                    Si\u2026ody()))\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    check-cast v0, Lio/reactivex/SingleSource;

    .line 28
    return-object v0
.end method

.method private final savePaymentWithQrResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAYMENT_WITH_QR_STRING"

    invoke-static {v1, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onCleared()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 43
    return-void
.end method

.method public final paymentWithQr(Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;)Lio/reactivex/Single;
    .locals 2
    .param p1, "payWithQrRequest"    # Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "payWithQrRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->contactlessQrPaymentRepository:Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/network/ContactlessQrPaymentRepository;->payWithQr(Lcom/woleapp/netpos/contactless/model/PayWithQrRequest;)Lio/reactivex/Single;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "contactlessQrPaymentRepo\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-object v0
.end method
