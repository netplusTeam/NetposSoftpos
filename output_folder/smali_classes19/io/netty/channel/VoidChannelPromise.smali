.class public final Lio/netty/channel/VoidChannelPromise;
.super Lio/netty/util/concurrent/AbstractFuture;
.source "VoidChannelPromise.java"

# interfaces
.implements Lio/netty/channel/ChannelPromise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/AbstractFuture<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/channel/ChannelPromise;"
    }
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private final fireExceptionListener:Lio/netty/channel/ChannelFutureListener;


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;Z)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "fireException"    # Z

    .line 38
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 39
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lio/netty/channel/VoidChannelPromise;->channel:Lio/netty/channel/Channel;

    .line 41
    if-eqz p2, :cond_0

    .line 42
    new-instance v0, Lio/netty/channel/VoidChannelPromise$1;

    invoke-direct {v0, p0}, Lio/netty/channel/VoidChannelPromise$1;-><init>(Lio/netty/channel/VoidChannelPromise;)V

    iput-object v0, p0, Lio/netty/channel/VoidChannelPromise;->fireExceptionListener:Lio/netty/channel/ChannelFutureListener;

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/VoidChannelPromise;->fireExceptionListener:Lio/netty/channel/ChannelFutureListener;

    .line 54
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/VoidChannelPromise;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/VoidChannelPromise;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 27
    invoke-direct {p0, p1}, Lio/netty/channel/VoidChannelPromise;->fireException0(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static fail()V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "void future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fireException0(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 235
    iget-object v0, p0, Lio/netty/channel/VoidChannelPromise;->fireExceptionListener:Lio/netty/channel/ChannelFutureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/VoidChannelPromise;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lio/netty/channel/VoidChannelPromise;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;
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
            "Lio/netty/channel/VoidChannelPromise;"
        }
    .end annotation

    .line 58
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 59
    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;
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
            "Lio/netty/channel/VoidChannelPromise;"
        }
    .end annotation

    .line 64
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 65
    return-object p0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

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

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->await()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->await()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/channel/VoidChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 82
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    return-object p0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->await()Lio/netty/channel/VoidChannelPromise;

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

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->await()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 96
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 90
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->awaitUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->awaitUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/VoidChannelPromise;
    .locals 0

    .line 102
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 103
    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->awaitUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->awaitUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 114
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 108
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 120
    iget-object v0, p0, Lio/netty/channel/VoidChannelPromise;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public bridge synthetic getNow()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->getNow()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getNow()Ljava/lang/Void;
    .locals 1

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCancellable()Z
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isVoid()Z
    .locals 1

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;
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
            "Lio/netty/channel/VoidChannelPromise;"
        }
    .end annotation

    .line 71
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;
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
            "Lio/netty/channel/VoidChannelPromise;"
        }
    .end annotation

    .line 77
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    return-object p0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/channel/VoidChannelPromise;
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 167
    invoke-direct {p0, p1}, Lio/netty/channel/VoidChannelPromise;->fireException0(Ljava/lang/Throwable;)V

    .line 168
    return-object p0
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuccess()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->setSuccess()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public setSuccess()Lio/netty/channel/VoidChannelPromise;
    .locals 0

    .line 173
    return-object p0
.end method

.method public setSuccess(Ljava/lang/Void;)Lio/netty/channel/VoidChannelPromise;
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 203
    return-object p0
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/VoidChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method public setUncancellable()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic sync()Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->sync()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/channel/ChannelPromise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->sync()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/channel/VoidChannelPromise;
    .locals 0

    .line 155
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 156
    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->sync()Lio/netty/channel/VoidChannelPromise;

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

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->sync()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->syncUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->syncUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/VoidChannelPromise;
    .locals 0

    .line 161
    invoke-static {}, Lio/netty/channel/VoidChannelPromise;->fail()V

    .line 162
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->syncUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/channel/VoidChannelPromise;->syncUninterruptibly()Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 178
    invoke-direct {p0, p1}, Lio/netty/channel/VoidChannelPromise;->fireException0(Ljava/lang/Throwable;)V

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public trySuccess()Z
    .locals 1

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySuccess(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/VoidChannelPromise;->trySuccess(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public trySuccess(Ljava/lang/Void;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public unvoid()Lio/netty/channel/ChannelPromise;
    .locals 2

    .line 218
    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    iget-object v1, p0, Lio/netty/channel/VoidChannelPromise;->channel:Lio/netty/channel/Channel;

    invoke-direct {v0, v1}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;)V

    .line 219
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    iget-object v1, p0, Lio/netty/channel/VoidChannelPromise;->fireExceptionListener:Lio/netty/channel/ChannelFutureListener;

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 222
    :cond_0
    return-object v0
.end method
