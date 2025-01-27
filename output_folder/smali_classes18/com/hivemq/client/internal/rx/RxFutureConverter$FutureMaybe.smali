.class Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;
.super Lio/reactivex/Maybe;
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
    name = "FutureMaybe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/util/Optional<",
        "TT;>;",
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
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private volatile observer:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
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

    .line 204
    const-class v0, Lcom/hivemq/client/internal/rx/RxFutureConverter;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/Optional<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe<TT;>;"
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/Optional<TT;>;>;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 213
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->future:Ljava/util/concurrent/CompletableFuture;

    .line 214
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 215
    return-void
.end method

.method private static complete(Lio/reactivex/MaybeObserver;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 267
    .local p0, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    .line 268
    invoke-interface {p0, p2}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 269
    :cond_0
    if-eqz p1, :cond_1

    .line 270
    invoke-interface {p0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {p0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 274
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 204
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe<TT;>;"
    check-cast p1, Ljava/util/Optional;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->accept(Ljava/util/Optional;Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/util/Optional;Ljava/lang/Throwable;)V
    .locals 4
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe<TT;>;"
    .local p1, "t":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    if-nez p2, :cond_1

    .line 242
    if-nez p1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "t1":Ljava/lang/Object;, "TT;"
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    .local v1, "throwable1":Ljava/lang/Throwable;
    goto :goto_0

    .line 246
    .end local v0    # "t1":Ljava/lang/Object;, "TT;"
    .end local v1    # "throwable1":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    .restart local v0    # "t1":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .restart local v1    # "throwable1":Ljava/lang/Throwable;
    goto :goto_0

    .line 250
    .end local v0    # "t1":Ljava/lang/Object;, "TT;"
    .end local v1    # "throwable1":Ljava/lang/Throwable;
    :cond_1
    const/4 v0, 0x0

    .line 251
    .restart local v0    # "t1":Ljava/lang/Object;, "TT;"
    move-object v1, p2

    .line 253
    .restart local v1    # "throwable1":Ljava/lang/Throwable;
    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->t:Ljava/lang/Object;

    .line 254
    iput-object v1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->throwable:Ljava/lang/Throwable;

    .line 255
    iget-object v2, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$100(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    iget-object v2, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->observer:Lio/reactivex/MaybeObserver;

    .line 257
    .local v2, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    if-eqz v2, :cond_2

    .line 258
    invoke-static {v2, v0, v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->complete(Lio/reactivex/MaybeObserver;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 257
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 260
    .end local v2    # "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 228
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe<TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$200(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CompletableFuture;)V

    .line 229
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 233
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe<TT;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$300(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;, "Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->observer:Lio/reactivex/MaybeObserver;

    .line 220
    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 221
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$100(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->t:Ljava/lang/Object;

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->throwable:Ljava/lang/Throwable;

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureMaybe;->complete(Lio/reactivex/MaybeObserver;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 224
    :cond_0
    return-void
.end method
