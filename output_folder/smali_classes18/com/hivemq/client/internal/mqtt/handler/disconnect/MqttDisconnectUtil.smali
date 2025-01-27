.class public final Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;
.super Ljava/lang/Object;
.source "MqttDisconnectUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lio/netty/channel/Channel;Ljava/lang/String;)V
    .locals 2
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "reason"    # Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    .line 44
    return-void
.end method

.method public static close(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 53
    sget-object v0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    .line 54
    return-void
.end method

.method public static disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V
    .locals 3
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .param p2, "reasonString"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    .line 70
    .local v0, "disconnect":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-direct {v1, v0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/String;)V

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    .line 72
    return-void
.end method

.method public static disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 86
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;-><init>()V

    .line 87
    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v0

    .line 88
    .local v0, "disconnect":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-direct {v1, v0, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    .line 89
    return-void
.end method

.method static fireDisconnectEvent(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 1
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 102
    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 103
    return-void
.end method

.method public static fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V
    .locals 1
    .param p0, "channel"    # Lio/netty/channel/Channel;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "source"    # Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    .line 96
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-direct {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;-><init>(Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 97
    return-void
.end method
