.class final Lio/netty/channel/SucceededChannelFuture;
.super Lio/netty/channel/CompleteChannelFuture;
.source "SucceededChannelFuture.java"


# direct methods
.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 33
    invoke-direct {p0, p1, p2}, Lio/netty/channel/CompleteChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    .line 34
    return-void
.end method


# virtual methods
.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method
