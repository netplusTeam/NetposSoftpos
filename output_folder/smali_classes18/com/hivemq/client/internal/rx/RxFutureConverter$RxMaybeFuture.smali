.class Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;
.super Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;
.source "RxFutureConverter.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/RxFutureConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RxMaybeFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<",
        "Ljava/util/Optional<",
        "TT;>;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/Maybe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Maybe<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture<TT;>;"
    .local p1, "maybe":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;-><init>(Lcom/hivemq/client/internal/rx/RxFutureConverter$1;)V

    .line 92
    invoke-virtual {p1, p0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 104
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture<TT;>;"
    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;->complete(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 98
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;->complete(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method
