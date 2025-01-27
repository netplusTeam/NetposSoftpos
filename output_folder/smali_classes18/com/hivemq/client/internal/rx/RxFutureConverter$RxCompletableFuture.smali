.class Lcom/hivemq/client/internal/rx/RxFutureConverter$RxCompletableFuture;
.super Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;
.source "RxFutureConverter.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/RxFutureConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RxCompletableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/Completable;)V
    .locals 1
    .param p1, "completable"    # Lio/reactivex/Completable;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;-><init>(Lcom/hivemq/client/internal/rx/RxFutureConverter$1;)V

    .line 78
    invoke-virtual {p1, p0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxCompletableFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxCompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method
