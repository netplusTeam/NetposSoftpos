.class public abstract Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "MqttTimeoutInboundHandler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelTimeout()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 104
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 107
    :cond_0
    return-void
.end method

.method protected abstract getTimeoutMs()J
.end method

.method protected abstract getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
.end method

.method protected abstract getTimeoutReasonString()Ljava/lang/String;
.end method

.method protected onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 113
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->cancelTimeout()V

    .line 114
    return-void
.end method

.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 56
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->operationSuccessful(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 58
    :cond_1
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v1, v0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method protected operationSuccessful(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 64
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->scheduleTimeout(Lio/netty/channel/Channel;)V

    .line 65
    return-void
.end method

.method public run()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 78
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutReasonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutReasonString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void
.end method

.method protected scheduleTimeout(Lio/netty/channel/Channel;)V
    .locals 4
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 92
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutMs()J

    move-result-wide v0

    .line 93
    .local v0, "timeoutMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 94
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v0, v1, v3}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 96
    :cond_0
    return-void
.end method
