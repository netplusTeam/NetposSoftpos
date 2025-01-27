.class public final Lcom/hivemq/client/internal/rx/RxFutureConverter;
.super Ljava/lang/Object;
.source "RxFutureConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;,
        Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;,
        Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;,
        Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;,
        Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;,
        Lcom/hivemq/client/internal/rx/RxFutureConverter$RxCompletableFuture;,
        Lcom/hivemq/client/internal/rx/RxFutureConverter$RxFuture;
    }
.end annotation


# static fields
.field private static final INITIAL:I = 0x0

.field private static final SUBSCRIBED_AND_COMPLETE_OR_CANCELLED:I = 0x2

.field private static final SUBSCRIBED_OR_COMPLETE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    invoke-static {p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->checkComplete(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "x1"    # Ljava/util/concurrent/CompletableFuture;

    .line 32
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->dispose(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    invoke-static {p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->isDisposed(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method private static checkComplete(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 3
    .param p0, "done"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    .line 142
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    nop

    .line 141
    :goto_0
    return v0
.end method

.method private static dispose(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .param p0, "done"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 146
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 148
    return-void
.end method

.method private static isDisposed(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 2
    .param p0, "done"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toCompletable(Ljava/util/concurrent/CompletableFuture;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 125
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    return-object v0
.end method

.method public static toFuture(Lio/reactivex/Completable;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "completable"    # Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Completable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxCompletableFuture;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxCompletableFuture;-><init>(Lio/reactivex/Completable;)V

    return-object v0
.end method

.method public static toFuture(Lio/reactivex/Maybe;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Maybe<",
            "TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 39
    .local p0, "maybe":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<TT;>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxMaybeFuture;-><init>(Lio/reactivex/Maybe;)V

    return-object v0
.end method

.method public static toFuture(Lio/reactivex/Single;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Single<",
            "TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 43
    .local p0, "single":Lio/reactivex/Single;, "Lio/reactivex/Single<TT;>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$RxSingleFuture;-><init>(Lio/reactivex/Single;)V

    return-object v0
.end method

.method public static toMaybe(Ljava/util/concurrent/CompletableFuture;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/Optional<",
            "TT;>;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/Optional<TT;>;>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    return-object v0
.end method

.method public static toSingle(Ljava/util/concurrent/CompletableFuture;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureSingle;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    return-object v0
.end method
