.class final Lio/netty/channel/ChannelFutureListener$3;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/ChannelFutureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;

    .line 68
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 71
    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelFutureListener$3;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
