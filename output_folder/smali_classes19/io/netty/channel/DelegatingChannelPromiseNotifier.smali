.class public final Lio/netty/channel/DelegatingChannelPromiseNotifier;
.super Ljava/lang/Object;
.source "DelegatingChannelPromiseNotifier.java"

# interfaces
.implements Lio/netty/channel/ChannelPromise;
.implements Lio/netty/channel/ChannelFutureListener;


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final delegate:Lio/netty/channel/ChannelPromise;

.field private final logNotifyFailure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lio/netty/channel/DelegatingChannelPromiseNotifier;

    .line 34
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 33
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "delegate"    # Lio/netty/channel/ChannelPromise;

    .line 39
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;-><init>(Lio/netty/channel/ChannelPromise;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelPromise;Z)V
    .locals 1
    .param p1, "delegate"    # Lio/netty/channel/ChannelPromise;
    .param p2, "logNotifyFailure"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelPromise;

    iput-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    .line 44
    iput-boolean p2, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->logNotifyFailure:Z

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation

    .line 96
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 97
    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation

    .line 102
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 103
    return-object p0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic await()Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->await()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->await()Lio/netty/channel/ChannelPromise;

    .line 131
    return-object p0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->await()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->await()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelPromise;->await(J)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelPromise;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->awaitUninterruptibly()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->awaitUninterruptibly()Lio/netty/channel/ChannelPromise;

    .line 137
    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->awaitUninterruptibly()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->awaitUninterruptibly()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 167
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelPromise;->awaitUninterruptibly(J)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 162
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelPromise;->awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 177
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 224
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelPromise;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic getNow()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->getNow()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getNow()Ljava/lang/Void;
    .locals 1

    .line 172
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public isCancellable()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isCancellable()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public isVoid()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isVoid()Z

    move-result v0

    return v0
.end method

.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->logNotifyFailure:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->logger:Lio/netty/util/internal/logging/InternalLogger;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    .local v0, "internalLogger":Lio/netty/util/internal/logging/InternalLogger;
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    .line 52
    .local v1, "result":Ljava/lang/Void;
    iget-object v2, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-static {v2, v1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 53
    .end local v1    # "result":Ljava/lang/Void;
    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-static {v1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryCancel(Lio/netty/util/concurrent/Promise;Lio/netty/util/internal/logging/InternalLogger;)V

    goto :goto_1

    .line 56
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    .line 57
    .local v1, "cause":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-static {v2, v1, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 59
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation

    .line 108
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 109
    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation

    .line 114
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 115
    return-object p0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 90
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 91
    return-object p0
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public setSuccess()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 75
    return-object p0
.end method

.method public setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .line 68
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelPromise;

    .line 69
    return-object p0
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public setUncancellable()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic sync()Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->sync()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->sync()Lio/netty/channel/ChannelPromise;

    .line 203
    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->sync()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->sync()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->syncUninterruptibly()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 208
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->syncUninterruptibly()Lio/netty/channel/ChannelPromise;

    .line 209
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->syncUninterruptibly()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->syncUninterruptibly()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 120
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public trySuccess()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySuccess(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->trySuccess(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public trySuccess(Ljava/lang/Void;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .line 85
    iget-object v0, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPromise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unvoid()Lio/netty/channel/ChannelPromise;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/channel/DelegatingChannelPromiseNotifier;

    iget-object v1, p0, Lio/netty/channel/DelegatingChannelPromiseNotifier;->delegate:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/channel/DelegatingChannelPromiseNotifier;-><init>(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
