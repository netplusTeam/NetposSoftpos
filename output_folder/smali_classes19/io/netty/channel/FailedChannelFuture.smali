.class final Lio/netty/channel/FailedChannelFuture;
.super Lio/netty/channel/CompleteChannelFuture;
.source "FailedChannelFuture.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, p1, p2}, Lio/netty/channel/CompleteChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    .line 39
    const-string v0, "cause"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lio/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    .line 40
    return-void
.end method


# virtual methods
.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public sync()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 55
    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lio/netty/channel/FailedChannelFuture;->sync()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 61
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/channel/FailedChannelFuture;->syncUninterruptibly()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
