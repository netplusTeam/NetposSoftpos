.class Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;
.super Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;
.source "RxFutureConverter.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/RxFutureConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RxSingleFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/reactivex/Single;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture<TT;>;"
    .local p1, "single":Lio/reactivex/Single;, "Lio/reactivex/Single<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;-><init>(Lcom/hivemq/client/internal/rx/RxFutureConverter$1;)V

    .line 113
    invoke-virtual {p1, p0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;->complete(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void
.end method
