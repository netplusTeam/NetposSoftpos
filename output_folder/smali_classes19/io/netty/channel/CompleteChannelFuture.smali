.class abstract Lio/netty/channel/CompleteChannelFuture;
.super Lio/netty/util/concurrent/CompleteFuture;
.source "CompleteChannelFuture.java"

# interfaces
.implements Lio/netty/channel/ChannelFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/CompleteFuture<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/channel/ChannelFuture;"
    }
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/Channel;


# direct methods
.method protected constructor <init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 38
    invoke-direct {p0, p2}, Lio/netty/util/concurrent/CompleteFuture;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 39
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    iput-object v0, p0, Lio/netty/channel/CompleteChannelFuture;->channel:Lio/netty/channel/Channel;

    .line 40
    return-void
.end method


# virtual methods
.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
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
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 54
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 55
    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
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
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 60
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 61
    return-object p0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public await()Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 88
    return-object p0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->await()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 93
    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->awaitUninterruptibly()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/netty/channel/CompleteChannelFuture;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 2

    .line 44
    invoke-super {p0}, Lio/netty/util/concurrent/CompleteFuture;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 45
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    return-object v1

    .line 48
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getNow()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->getNow()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getNow()Ljava/lang/Void;
    .locals 1

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVoid()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
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
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 66
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 67
    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
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
            "Lio/netty/channel/ChannelFuture;"
        }
    .end annotation

    .line 72
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 73
    return-object p0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/CompleteChannelFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public sync()Lio/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 83
    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 78
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/CompleteChannelFuture;->syncUninterruptibly()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
