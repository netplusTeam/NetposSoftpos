.class public Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;
.source "MqttConnectAuthHandler.java"

# interfaces
.implements Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 2
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v0

    const-string v1, "Auth mechanism"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->stateNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)V

    .line 60
    return-void
.end method

.method static synthetic lambda$readConnAckSuccess$6(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .param p1, "ctx2"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 155
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v3, "Server CONNACK with reason code SUCCESS not accepted."

    invoke-direct {v2, p0, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$writeConnect$2(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 95
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v1, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method

.method private readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 123
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->cancelTimeout()V

    .line 125
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->readConnAckError(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->validateConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->readConnAckSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method private readConnAckError(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 133
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda7;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->callMechanism(Ljava/lang/Runnable;)V

    .line 134
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 136
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT failed as CONNACK contained an Error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    .line 136
    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    .line 139
    return-void
.end method

.method private readConnAckSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 142
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    .line 143
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v3, "Must not receive CONNACK with reason code SUCCESS if client side AUTH is pending."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 146
    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_DONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 150
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 157
    return-void
.end method

.method private validateConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Z
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 169
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawEnhancedAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    move-result-object v0

    .line 170
    .local v0, "enhancedAuth":Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v5, "Auth method in CONNACK must be present."

    invoke-direct {v4, p2, v5}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 173
    return v1

    .line 175
    :cond_0
    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;->getMethod()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v5, "Auth method in CONNACK must be the same as in the CONNECT."

    invoke-direct {v4, p2, v5}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 178
    return v1

    .line 180
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private writeConnect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 87
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    .line 88
    .local v0, "enhancedAuthBuilder":Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_INIT:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 89
    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda4;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;)V

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;)V

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->callMechanismFuture(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 96
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    if-eqz v0, :cond_1

    .line 103
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 107
    :goto_0
    return-void
.end method

.method protected getTimeoutReasonString()Ljava/lang/String;
    .locals 1

    .line 228
    const-string v0, "Timeout while waiting for AUTH or CONNACK."

    return-object v0
.end method

.method synthetic lambda$onDisconnectEvent$7$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 3
    .param p1, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 221
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->onAuthError(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$readConnAckError$3$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 2
    .param p1, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 133
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->onAuthRejected(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)V

    return-void
.end method

.method synthetic lambda$readConnAckSuccess$4$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 150
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->onAuthSuccess(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$readConnAckSuccess$5$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .param p2, "ctx2"    # Lio/netty/channel/ChannelHandlerContext;

    .line 151
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 152
    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;)V

    const-string v2, "auth"

    invoke-interface {v0, p0, v2, v1}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 153
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 155
    return-void
.end method

.method synthetic lambda$writeConnect$0$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "enhancedAuthBuilder"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    .line 89
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v0, v1, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->onAuth(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$writeConnect$1$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "enhancedAuthBuilder"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p4, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 90
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 91
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 92
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->createStateful(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    move-result-object v0

    .line 93
    .local v0, "statefulConnect":Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
    invoke-interface {p4, v0, p3}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 95
    return-void
.end method

.method protected onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 218
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 220
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    .line 221
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->callMechanism(Ljava/lang/Runnable;)V

    .line 222
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 224
    :cond_0
    return-void
.end method

.method readAuthSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 191
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v3, "Must not receive AUTH with reason code SUCCESS during connect auth."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method readReAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 203
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v3, "Must not receive AUTH with reason code REAUTHENTICATE during connect auth."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 68
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-direct {p0, v0, p3}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->writeConnect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 73
    :goto_0
    return-void
.end method
