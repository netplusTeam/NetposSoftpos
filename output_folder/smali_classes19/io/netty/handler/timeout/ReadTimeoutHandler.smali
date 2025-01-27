.class public Lio/netty/handler/timeout/ReadTimeoutHandler;
.super Lio/netty/handler/timeout/IdleStateHandler;
.source "ReadTimeoutHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "timeoutSeconds"    # I

    .line 72
    int-to-long v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/timeout/ReadTimeoutHandler;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 73
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 84
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/timeout/IdleStateHandler;-><init>(JJJLjava/util/concurrent/TimeUnit;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected final channelIdle(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/timeout/IdleStateEvent;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lio/netty/handler/timeout/IdleStateEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p2}, Lio/netty/handler/timeout/IdleStateEvent;->state()Lio/netty/handler/timeout/IdleState;

    move-result-object v0

    sget-object v1, Lio/netty/handler/timeout/IdleState;->READER_IDLE:Lio/netty/handler/timeout/IdleState;

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lio/netty/handler/timeout/ReadTimeoutHandler;->readTimedOut(Lio/netty/channel/ChannelHandlerContext;)V

    .line 91
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected readTimedOut(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lio/netty/handler/timeout/ReadTimeoutHandler;->closed:Z

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lio/netty/handler/timeout/ReadTimeoutException;->INSTANCE:Lio/netty/handler/timeout/ReadTimeoutException;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 99
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/timeout/ReadTimeoutHandler;->closed:Z

    .line 102
    :cond_0
    return-void
.end method
