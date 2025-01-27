.class public final Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;
.super Ljava/lang/Object;
.source "UtilitiesViewModel.kt"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->verifyDestinationAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2",
        "Lio/reactivex/SingleObserver;",
        "Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;",
        "onError",
        "",
        "e",
        "",
        "onSubscribe",
        "d",
        "Lio/reactivex/disposables/Disposable;",
        "onSuccess",
        "t",
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
.field final synthetic $utilitiesPayload:Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V
    .locals 0
    .param p1, "$utilitiesPayload"    # Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    .param p2, "$receiver"    # Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->$utilitiesPayload:Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not verify destination Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->$utilitiesPayload:Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getDestinationAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;-><init>(Ljava/lang/String;)V

    .line 198
    nop

    .line 200
    .local v0, "errorResponse":Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->access$get_result$p(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v2, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->access$getCompositeDisposable$p(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 195
    return-void
.end method

.method public onSuccess(Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;)V
    .locals 3
    .param p1, "t"    # Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getBillVerifiedOnline()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;->getBillVerifiedOnline()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->access$get_billResponse$p(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->checkHasSufficientBalance()V

    .line 191
    return-void

    .line 185
    :cond_1
    :goto_0
    new-instance v0, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not verify destination Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->$utilitiesPayload:Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->getDestinationAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;-><init>(Ljava/lang/String;)V

    .line 184
    nop

    .line 186
    .local v0, "errorResponse":Lcom/woleapp/netpos/contactless/model/ErrorNetworkResponse;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->access$get_result$p(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v2, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 180
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$verifyDestinationAccount$2;->onSuccess(Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;)V

    return-void
.end method
