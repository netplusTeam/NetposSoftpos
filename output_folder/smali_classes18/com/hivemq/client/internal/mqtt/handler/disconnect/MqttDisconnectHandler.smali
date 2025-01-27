.class public Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "MqttDisconnectHandler.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;
    }
.end annotation


# static fields
.field private static final DISCONNECT_TIMEOUT:I = 0xa

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field public static final NAME:Ljava/lang/String; = "disconnect"

.field private static final STATE_CLOSED:Ljava/lang/Object;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

.field private state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/MqttSession;)V
    .locals 1
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "session"    # Lcom/hivemq/client/internal/mqtt/handler/MqttSession;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 79
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    .line 80
    return-void
.end method

.method private disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 4
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 214
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    .line 215
    .local v0, "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expire(Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 218
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->reconnect(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 220
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setConnectionConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V

    .line 222
    :cond_0
    return-void
.end method

.method private readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 102
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 104
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v3, "Must not receive second CONNACK."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 107
    :cond_0
    return-void
.end method

.method private readDisconnect(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 94
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 96
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    const-string v2, "Server sent DISCONNECT."

    invoke-direct {v1, p2, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/String;)V

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    .line 99
    :cond_0
    return-void
.end method

.method private reconnect(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 23
    .param p1, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
    .param p2, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .param p3, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    move-result-object v1

    .line 230
    .local v1, "connectDefaults":Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v2

    .line 232
    .local v2, "enhancedAuthMechanism":Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    new-instance v13, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getKeepAlive()I

    move-result v4

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSessionExpiryInterval()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v5, v3

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSessionExpiryInterval()J

    move-result-wide v6

    new-instance v8, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getReceiveMaximum()I

    move-result v15

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximum()I

    move-result v16

    .line 239
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getMaximumPacketSize()I

    move-result v17

    .line 240
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximumPacketSize()I

    move-result v18

    .line 241
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getTopicAliasMaximum()I

    move-result v19

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendTopicAliasMaximum()I

    move-result v20

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->isProblemInformationRequested()Z

    move-result v21

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->isResponseInformationRequested()Z

    move-result v22

    move-object v14, v8

    invoke-direct/range {v14 .. v22}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;-><init>(IIIIIIZZ)V

    .line 246
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v9

    if-nez v2, :cond_1

    .line 247
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    :cond_1
    move-object v10, v2

    .line 248
    :goto_1
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;->getWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v11

    sget-object v12, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 251
    .local v3, "connect":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    iget-object v4, v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 251
    move-object/from16 v7, p3

    invoke-static {v4, v5, v6, v3, v7}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/EventLoop;)V

    .line 253
    return-void
.end method

.method private writeDisconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 3
    .param p1, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .param p2, "flow"    # Lcom/hivemq/client/internal/rx/CompletableFlow;

    .line 143
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 144
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 145
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 146
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    invoke-direct {v2, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;-><init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    .line 150
    :goto_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 111
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 112
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 114
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    const-string v2, "Server closed connection without DISCONNECT."

    invoke-direct {v1, v2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    if-eqz v1, :cond_1

    .line 118
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    .line 119
    .local v0, "disconnectingState":Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 120
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$000(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 121
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$100(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/channel/Channel;

    move-result-object v1

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$200(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 122
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->access$200(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->getFlow()Lcom/hivemq/client/internal/rx/CompletableFlow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onComplete()V

    .line 124
    .end local v0    # "disconnectingState":Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;
    :cond_1
    :goto_0
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->readDisconnect(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    goto :goto_0

    .line 86
    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->readConnAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 91
    :goto_0
    return-void
.end method

.method public disconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 2
    .param p1, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .param p2, "flow"    # Lcom/hivemq/client/internal/rx/CompletableFlow;

    .line 137
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executeInEventLoop(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    .line 140
    :cond_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 128
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v1, p2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    .line 131
    :cond_0
    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "Exception while disconnecting: {}"

    invoke-interface {v0, v1, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$disconnect$0$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V
    .locals 0
    .param p1, "disconnect"    # Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .param p2, "flow"    # Lcom/hivemq/client/internal/rx/CompletableFlow;

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->writeDisconnect(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;Lcom/hivemq/client/internal/rx/CompletableFlow;)V

    return-void
.end method

.method synthetic lambda$null$1$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 3
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEventByUser"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    .param p3, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
    .param p4, "cf"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    invoke-direct {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;-><init>(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 192
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->getFlow()Lcom/hivemq/client/internal/rx/CompletableFlow;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    .line 194
    :goto_0
    return-void
.end method

.method synthetic lambda$null$3$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
    .param p3, "cf"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method synthetic lambda$onDisconnectEvent$2$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 3
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEventByUser"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    .param p3, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
    .param p4, "f"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    move-object v0, p1

    check-cast v0, Lio/netty/channel/socket/DuplexChannel;

    invoke-interface {v0}, Lio/netty/channel/socket/DuplexChannel;->shutdownOutput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 197
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;->getFlow()Lcom/hivemq/client/internal/rx/CompletableFlow;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/rx/CompletableFlow;->onError(Ljava/lang/Throwable;)V

    .line 199
    :goto_0
    return-void
.end method

.method synthetic lambda$onDisconnectEvent$4$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
    .param p3, "f"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda6;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method synthetic lambda$onDisconnectEvent$5$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
    .param p3, "cf"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method synthetic lambda$onDisconnectEvent$6$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;
    .param p3, "cf"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method

.method protected onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 156
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->STATE_CLOSED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->state:Ljava/lang/Object;

    .line 158
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 160
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    if-ne v1, v2, :cond_0

    .line 161
    invoke-direct {p0, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->disconnected(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 162
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 163
    return-void

    .line 166
    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getDisconnect()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v1

    .line 167
    .local v1, "disconnect":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    if-eqz v1, :cond_5

    .line 169
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getRawSessionExpiryInterval()J

    move-result-wide v2

    .line 170
    .local v2, "sessionExpiryInterval":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v4

    .line 172
    .local v4, "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    if-eqz v4, :cond_2

    .line 173
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->isCleanStop()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    sget-object v7, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v8, "Session expiry interval must not be set in DISCONNECT if it was set to 0 in CONNECT"

    invoke-interface {v7, v8}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->extend()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v4, v2, v3}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->setSessionExpiryInterval(J)V

    .line 183
    .end local v4    # "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    :cond_2
    :goto_0
    instance-of v4, p2, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    if-eqz v4, :cond_3

    .line 184
    move-object v4, p2

    check-cast v4, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    .line 185
    .local v4, "disconnectEventByUser":Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v5

    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v0, v4, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-interface {v5, v6}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 201
    .end local v4    # "disconnectEventByUser":Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v4

    sget-object v5, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v4, v5, :cond_4

    .line 202
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    new-instance v5, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 203
    invoke-interface {v4, v5}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 206
    :cond_4
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v4

    new-instance v5, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda4;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-interface {v4, v5}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 208
    .end local v2    # "sessionExpiryInterval":J
    :goto_1
    goto :goto_2

    .line 209
    :cond_5
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda5;-><init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 211
    :goto_2
    return-void
.end method
