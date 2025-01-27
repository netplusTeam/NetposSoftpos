.class public Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "MqttDisconnectOnAuthHandler.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 58
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v3, "Server must not send AUTH"

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method private readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 63
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawEnhancedAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v3, "Server must not include auth in CONNACK"

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 69
    :goto_0
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;->readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    .line 50
    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_1

    .line 51
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;->readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 55
    :goto_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method
