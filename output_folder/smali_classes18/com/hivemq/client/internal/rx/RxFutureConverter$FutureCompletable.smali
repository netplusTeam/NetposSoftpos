.class Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;
.super Lio/reactivex/Completable;
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
    name = "FutureCompletable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Completable;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Object;",
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
            "*>;"
        }
    .end annotation
.end field

.field private volatile observer:Lio/reactivex/CompletableObserver;

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    const-class v0, Lcom/hivemq/client/internal/rx/RxFutureConverter;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 161
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->future:Ljava/util/concurrent/CompletableFuture;

    .line 163
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 164
    return-void
.end method

.method private static complete(Lio/reactivex/CompletableObserver;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "observer"    # Lio/reactivex/CompletableObserver;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-interface {p0}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {p0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 201
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->accept(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 187
    iput-object p2, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->throwable:Ljava/lang/Throwable;

    .line 188
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$100(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->observer:Lio/reactivex/CompletableObserver;

    .line 190
    .local v0, "observer":Lio/reactivex/CompletableObserver;
    if-eqz v0, :cond_0

    .line 191
    invoke-static {v0, p2}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->complete(Lio/reactivex/CompletableObserver;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 193
    .end local v0    # "observer":Lio/reactivex/CompletableObserver;
    :cond_1
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$200(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CompletableFuture;)V

    .line 178
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$300(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 1
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 168
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->observer:Lio/reactivex/CompletableObserver;

    .line 169
    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 170
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->done:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter;->access$100(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->throwable:Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/rx/RxFutureConverter$FutureCompletable;->complete(Lio/reactivex/CompletableObserver;Ljava/lang/Throwable;)V

    .line 173
    :cond_0
    return-void
.end method
