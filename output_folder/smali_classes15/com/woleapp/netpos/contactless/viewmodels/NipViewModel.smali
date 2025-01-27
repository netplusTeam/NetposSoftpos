.class public final Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NipViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "nipService",
        "Lcom/woleapp/netpos/contactless/network/NipService;",
        "getNipByReference",
        "",
        "reference",
        "",
        "setNipService",
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
.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private nipService:Lcom/woleapp/netpos/contactless/network/NipService;


# direct methods
.method public static synthetic $r8$lambda$r_3XKS16UuCxBgqMjhlWvZUVGio(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel;->getNipByReference$lambda-0(Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 12
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 10
    return-void
.end method

.method private static final getNipByReference$lambda-0(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    return-void
.end method


# virtual methods
.method public final getNipByReference(Ljava/lang/String;)V
    .locals 2
    .param p1, "reference"    # Ljava/lang/String;

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel;->nipService:Lcom/woleapp/netpos/contactless/network/NipService;

    if-nez v0, :cond_0

    const-string v0, "nipService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/woleapp/netpos/contactless/network/NipService;->getNotificationByReference(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 20
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 21
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel$$ExternalSyntheticLambda0;-><init>()V

    .line 22
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "nipService.getNotificati\u2026   .subscribe { _, _ -> }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 23
    return-void
.end method

.method public final setNipService(Lcom/woleapp/netpos/contactless/network/NipService;)V
    .locals 1
    .param p1, "nipService"    # Lcom/woleapp/netpos/contactless/network/NipService;

    const-string v0, "nipService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NipViewModel;->nipService:Lcom/woleapp/netpos/contactless/network/NipService;

    .line 16
    return-void
.end method
