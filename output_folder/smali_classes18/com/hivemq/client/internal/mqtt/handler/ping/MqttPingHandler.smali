.class public Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "MqttPingHandler.java"

# interfaces
.implements Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;
.implements Ljava/lang/Runnable;
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ping"

.field private static final PINGRESP_REQUIRED:Z = false


# instance fields
.field private final keepAliveNanos:J

.field private lastFlushTimeNanos:J

.field private lastReadTimeNanos:J

.field private messageRead:Z

.field private pingReqFlushed:Z

.field private pingReqWritten:Z

.field private timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJJ)V
    .locals 5
    .param p1, "keepAlive"    # I
    .param p2, "lastFlushTimeNanos"    # J
    .param p4, "lastReadTimeNanos"    # J

    .line 59
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->keepAliveNanos:J

    .line 61
    iput-wide p2, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    .line 62
    iput-wide p4, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastReadTimeNanos:J

    .line 63
    return-void
.end method

.method private nextDelay(J)J
    .locals 6
    .param p1, "timeNanos"    # J

    .line 93
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->keepAliveNanos:J

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastReadTimeNanos:J

    iget-wide v4, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private schedule(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "delayNanos"    # J

    .line 89
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p2, p3, v1}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 90
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastReadTimeNanos:J

    .line 80
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingResp;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 81
    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->messageRead:Z

    goto :goto_0

    .line 83
    :cond_0
    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->messageRead:Z

    .line 84
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 86
    :goto_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    .line 74
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 75
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 67
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->nextDelay(J)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 69
    return-void
.end method

.method protected onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 137
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 141
    :cond_0
    return-void
.end method

.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;

    .line 128
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqFlushed:Z

    .line 131
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

    .line 44
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqWritten:Z

    if-eqz v0, :cond_2

    .line 102
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqFlushed:Z

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    const-string v1, "Timeout while writing PINGREQ"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    .line 104
    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->messageRead:Z

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    const-string v1, "Timeout while waiting for PINGRESP"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    .line 108
    return-void

    .line 111
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqFlushed:Z

    .line 112
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->messageRead:Z

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 114
    .local v1, "timeNanos":J
    invoke-direct {p0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->nextDelay(J)J

    move-result-wide v3

    .line 115
    .local v3, "nextDelayNanos":J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    .line 116
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqWritten:Z

    .line 117
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v0, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;J)V

    goto :goto_0

    .line 119
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqWritten:Z

    .line 120
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->keepAliveNanos:J

    invoke-direct {p0, v0, v5, v6}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;J)V

    .line 121
    iput-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    .line 122
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v5, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;->INSTANCE:Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;

    invoke-interface {v0, v5}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 124
    :goto_0
    return-void
.end method
