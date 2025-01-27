.class public Lio/netty/channel/DefaultChannelProgressivePromise;
.super Lio/netty/util/concurrent/DefaultProgressivePromise;
.source "DefaultChannelProgressivePromise.java"

# interfaces
.implements Lio/netty/channel/ChannelProgressivePromise;
.implements Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/DefaultProgressivePromise<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/channel/ChannelProgressivePromise;",
        "Lio/netty/channel/ChannelFlushPromiseNotifier$FlushCheckpoint;"
    }
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private checkpoint:J


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 41
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;-><init>()V

    .line 42
    iput-object p1, p0, Lio/netty/channel/DefaultChannelProgressivePromise;->channel:Lio/netty/channel/Channel;

    .line 43
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 52
    invoke-direct {p0, p2}, Lio/netty/util/concurrent/DefaultProgressivePromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 53
    iput-object p1, p0, Lio/netty/channel/DefaultChannelProgressivePromise;->channel:Lio/netty/channel/Channel;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation

    .line 101
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    .line 102
    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation

    .line 107
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    .line 108
    return-object p0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

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

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->await()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/channel/ChannelProgressiveFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->await()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->await()Lio/netty/util/concurrent/ProgressivePromise;

    .line 139
    return-object p0
.end method

.method public bridge synthetic await()Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->await()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->await()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->await()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->await()Lio/netty/channel/ChannelProgressivePromise;

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

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->await()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/ChannelProgressiveFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;
    .locals 0

    .line 144
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->awaitUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    .line 145
    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/channel/DefaultChannelProgressivePromise;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method protected checkDeadLock()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->checkDeadLock()V

    .line 168
    :cond_0
    return-void
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 2

    .line 58
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 59
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    return-object v1

    .line 62
    :cond_0
    return-object v0
.end method

.method public flushCheckpoint()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lio/netty/channel/DefaultChannelProgressivePromise;->checkpoint:J

    return-wide v0
.end method

.method public flushCheckpoint(J)V
    .locals 0
    .param p1, "checkpoint"    # J

    .line 155
    iput-wide p1, p0, Lio/netty/channel/DefaultChannelProgressivePromise;->checkpoint:J

    .line 156
    return-void
.end method

.method public isVoid()Z
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public promise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 0

    .line 160
    return-object p0
.end method

.method public bridge synthetic promise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->promise()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation

    .line 113
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    .line 114
    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation

    .line 120
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    .line 121
    return-object p0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 89
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/ProgressivePromise;

    .line 90
    return-object p0
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public setProgress(JJ)Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .param p1, "progress"    # J
    .param p3, "total"    # J

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/DefaultProgressivePromise;->setProgress(JJ)Lio/netty/util/concurrent/ProgressivePromise;

    .line 96
    return-object p0
.end method

.method public bridge synthetic setProgress(JJ)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/channel/DefaultChannelProgressivePromise;->setProgress(JJ)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public setSuccess()Lio/netty/channel/ChannelProgressivePromise;
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelProgressivePromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 78
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/ProgressivePromise;

    .line 79
    return-object p0
.end method

.method public bridge synthetic setSuccess()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->setSuccess()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelProgressivePromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sync()Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->sync()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/channel/ChannelProgressiveFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->sync()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/channel/ChannelProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->sync()Lio/netty/util/concurrent/ProgressivePromise;

    .line 127
    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->sync()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->sync()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->sync()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->sync()Lio/netty/channel/ChannelProgressivePromise;

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

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->sync()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/ChannelProgressiveFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;
    .locals 0

    .line 132
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->syncUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    .line 133
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public trySuccess()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelProgressivePromise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unvoid()Lio/netty/channel/ChannelProgressivePromise;
    .locals 0

    .line 172
    return-object p0
.end method

.method public bridge synthetic unvoid()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelProgressivePromise;->unvoid()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method
