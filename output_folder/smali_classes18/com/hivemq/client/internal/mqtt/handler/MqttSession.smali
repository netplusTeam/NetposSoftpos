.class public Lcom/hivemq/client/internal/mqtt/handler/MqttSession;
.super Ljava/lang/Object;
.source "MqttSession.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ClientScope;
.end annotation


# instance fields
.field private expireFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private hasSession:Z

.field private final incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

.field private final outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

.field private final subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V
    .locals 0
    .param p1, "subscriptionHandler"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
    .param p2, "incomingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
    .param p3, "outgoingQosHandler"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    .line 58
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    .line 59
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    .line 60
    return-void
.end method

.method private end(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 112
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    .line 114
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    .line 115
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    .line 116
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public expire(Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .param p3, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 94
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSessionExpiryInterval()J

    move-result-wide v0

    .line 96
    .local v0, "expiryInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/MqttSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;)V

    invoke-interface {p3, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 100
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 101
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/MqttSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 106
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v3, v5

    double-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-interface {p3, v2, v3, v4, v5}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$expire$0$com-hivemq-client-internal-mqtt-handler-MqttSession(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 99
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    const-string v1, "Session expired as connection was closed."

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->end(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$expire$1$com-hivemq-client-internal-mqtt-handler-MqttSession(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 102
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 104
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    const-string v1, "Session expired after expiry interval"

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->end(Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public startOrResume(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/EventLoop;)V
    .locals 4
    .param p1, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .param p2, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .param p3, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p4, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 69
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->isSessionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "Session expired as CONNACK did not contain the session present flag."

    .line 71
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v3, "Session expired as CONNACK did not contain the session present flag."

    invoke-direct {v2, p1, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->end(Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    .line 75
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 76
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    const-string v1, "decoder"

    const-string/jumbo v2, "subscription"

    invoke-interface {p3, v1, v2, v0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 81
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    const-string/jumbo v2, "qos.incoming"

    invoke-interface {p3, v1, v2, v0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 82
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    const-string/jumbo v2, "qos.outgoing"

    invoke-interface {p3, v1, v2, v0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 83
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    invoke-virtual {v0, p2, p4}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 84
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {v0, p2, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 85
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-virtual {v0, p2, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 86
    return-void
.end method
