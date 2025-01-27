.class Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;
.super Lio/reactivex/Single;
.source "RxFutureConverter.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/rx/RxFutureConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureSingle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/util/function/BiConsumer<",
        "TT;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final done:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private volatile t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    const-class v0, Lcom/hivemq/client/internal/rx/RxFutureConverter;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle<TT;>;"
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 283
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 286
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->future:Ljava/util/concurrent/CompletableFuture;

    .line 287
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 288
    return-void
.end method

.method private static complete(Lio/reactivex/SingleObserver;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 325
    .local p0, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 326
    invoke-interface {p0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 328
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    :goto_0
    invoke-interface {p0, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 330
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 277
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle<TT;>;"
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 311
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->t:Ljava/lang/Object;

    .line 312
    iput-object p2, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->throwable:Ljava/lang/Throwable;

    .line 313
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$100(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->observer:Lio/reactivex/SingleObserver;

    .line 315
    .local v0, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    if-eqz v0, :cond_0

    .line 316
    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->complete(Lio/reactivex/SingleObserver;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 318
    .end local v0    # "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 301
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle<TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$200(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CompletableFuture;)V

    .line 302
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 306
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle<TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$300(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle<TT;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->observer:Lio/reactivex/SingleObserver;

    .line 293
    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 294
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$100(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->t:Ljava/lang/Object;

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->throwable:Ljava/lang/Throwable;

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;->complete(Lio/reactivex/SingleObserver;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 297
    :cond_0
    return-void
.end method
