.class abstract Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;
.super Ljava/util/concurrent/CompletableFuture;
.source "RxFutureConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/RxFutureConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RxFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field volatile disposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/rx/RxFutureConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/rx/RxFutureConverter$1;

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<TT;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;->cancelled:Z

    .line 67
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;->disposable:Lio/reactivex/disposables/Disposable;

    .line 68
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    return v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 59
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<TT;>;"
    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 62
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<TT;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;->disposable:Lio/reactivex/disposables/Disposable;

    .line 53
    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;->cancelled:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 56
    :cond_0
    return-void
.end method
