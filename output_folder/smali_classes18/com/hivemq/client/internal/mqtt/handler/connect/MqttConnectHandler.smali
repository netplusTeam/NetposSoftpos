.class public Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;
.source "MqttConnectHandler.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
.end annotation


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field public static final NAME:Ljava/lang/String; = "connect"


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field private connectFlushTime:J

.field private connectWritten:Z

.field private final decoder:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

.field private final session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;)V
    .locals 1
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .param p2, "connAckFlow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;
    .param p3, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p4, "session"    # Lcom/hivemq/client/internal/mqtt/handler/MqttSession;
    .param p5, "decoder"    # Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectWritten:Z

    .line 86
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 87
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 88
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 89
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    .line 90
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->decoder:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    .line 91
    return-void
.end method

.method private addConnectionConfig(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .locals 31
    .param p1, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .param p2, "channel"    # Lio/netty/channel/Channel;

    .line 250
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawServerKeepAlive()I

    move-result v1

    .line 251
    .local v1, "keepAlive":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 252
    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v1

    .line 255
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawSessionExpiryInterval()J

    move-result-wide v2

    .line 256
    .local v2, "sessionExpiryInterval":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 257
    iget-object v4, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v2

    move-wide/from16 v26, v2

    goto :goto_0

    .line 256
    :cond_1
    move-wide/from16 v26, v2

    .line 260
    .end local v2    # "sessionExpiryInterval":J
    .local v26, "sessionExpiryInterval":J
    :goto_0
    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v28

    .line 261
    .local v28, "restrictions":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    move-result-object v29

    .line 264
    .local v29, "connAckRestrictions":Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    new-instance v30, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 265
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v3

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 267
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v5

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 268
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 270
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v2

    if-eqz v2, :cond_3

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v6

    :goto_2
    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 271
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v2

    if-eqz v2, :cond_4

    move v10, v4

    goto :goto_3

    :cond_4
    move v10, v6

    :goto_3
    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 272
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v11

    .line 273
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getReceiveMaximum()I

    move-result v12

    .line 274
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v13

    .line 275
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v14

    .line 276
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v15

    .line 277
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v16

    .line 278
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendMaximum()I

    move-result v2

    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getReceiveMaximum()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 279
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendMaximumPacketSize()I

    move-result v2

    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getMaximumPacketSize()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 280
    invoke-virtual/range {v28 .. v28}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendTopicAliasMaximum()I

    move-result v2

    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getTopicAliasMaximum()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 281
    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getMaximumQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v20

    .line 282
    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->isRetainAvailable()Z

    move-result v21

    .line 283
    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->isWildcardSubscriptionAvailable()Z

    move-result v22

    .line 284
    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->isSharedSubscriptionAvailable()Z

    move-result v23

    .line 285
    invoke-virtual/range {v29 .. v29}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->areSubscriptionIdentifiersAvailable()Z

    move-result v24

    move-object/from16 v2, v30

    move v4, v1

    move v6, v7

    move-wide/from16 v7, v26

    move-object/from16 v25, p2

    invoke-direct/range {v2 .. v25}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;IZZJZZLcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;IIIZZIIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZLio/netty/channel/Channel;)V

    .line 289
    .local v2, "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    iget-object v3, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v3, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setConnectionConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V

    .line 290
    return-object v2
.end method

.method private readConnAck(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)V
    .locals 10
    .param p1, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .param p2, "channel"    # Lio/netty/channel/Channel;

    .line 157
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT failed as CONNACK contained an Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    .line 158
    invoke-static {p2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto/16 :goto_2

    .line 162
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->validateClientIdentifier(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->addConnectionConfig(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    .line 165
    .local v0, "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 167
    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-string v2, "encoder"

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->onConnected(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V

    .line 169
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {p2}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->startOrResume(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/EventLoop;)V

    .line 171
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getKeepAlive()I

    move-result v1

    .line 172
    .local v1, "keepAlive":I
    if-lez v1, :cond_1

    .line 173
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;

    iget-wide v6, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectFlushTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object v4, v2

    move v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;-><init>(IJJ)V

    .line 174
    .local v2, "pingHandler":Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;
    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    const-string v4, "decoder"

    const-string v5, "ping"

    invoke-interface {v3, v4, v5, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 177
    .end local v2    # "pingHandler":Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;
    :cond_1
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v2

    .line 180
    .local v2, "connectedListeners":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;>;"
    invoke-interface {v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 182
    invoke-static {v3, v4, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;

    move-result-object v3

    .line 183
    .local v3, "context":Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;
    invoke-interface {v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;

    .line 185
    .local v5, "connectedListener":Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;
    :try_start_0
    invoke-interface {v5, v3}, Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;->onConnected(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    goto :goto_1

    .line 186
    :catchall_0
    move-exception v6

    .line 187
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v8, "Unexpected exception thrown by connected listener."

    invoke-interface {v7, v8, v6}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v5    # "connectedListener":Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 192
    .end local v3    # "context":Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;
    :cond_2
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-virtual {v3, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onSuccess(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)V

    .line 194
    .end local v0    # "connectionConfig":Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .end local v1    # "keepAlive":I
    .end local v2    # "connectedListeners":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;>;"
    :cond_3
    :goto_2
    return-void
.end method

.method private readOtherThanConnAck(Ljava/lang/Object;Lio/netty/channel/Channel;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "channel"    # Lio/netty/channel/Channel;

    .line 208
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    .line 210
    invoke-interface {v2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message must not be received before CONNACK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {p2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    const-string v0, "No data must be received before CONNECT is sent"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void
.end method

.method private validateClientIdentifier(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Z
    .locals 5
    .param p1, "connAck"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .param p2, "channel"    # Lio/netty/channel/Channel;

    .line 226
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    .line 227
    .local v0, "clientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawAssignedClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v1

    .line 229
    .local v1, "assignedClientIdentifier":Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    sget-object v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    if-ne v0, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 231
    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v4, "Server did not assign a Client Identifier"

    invoke-direct {v3, p1, v4}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {p2, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 233
    const/4 v2, 0x0

    return v2

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    .line 237
    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v3, "Server overwrote the Client Identifier {} with {}"

    invoke-interface {v2, v3, v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    :cond_1
    if-eqz v1, :cond_2

    .line 242
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setClientIdentifier(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;)V

    .line 244
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private writeConnect(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 118
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectWritten:Z

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectWritten:Z

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectFlushTime:J

    .line 121
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 122
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->createStateful(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 121
    :goto_0
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 122
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 103
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->writeConnect(Lio/netty/channel/ChannelHandlerContext;)V

    .line 104
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 105
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->cancelTimeout()V

    .line 138
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->readConnAck(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->readOtherThanConnAck(Ljava/lang/Object;Lio/netty/channel/Channel;)V

    .line 143
    :goto_0
    return-void
.end method

.method protected getTimeoutMs()J
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getMqttConnectTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 1

    .line 310
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object v0
.end method

.method protected getTimeoutReasonString()Ljava/lang/String;
    .locals 1

    .line 315
    const-string v0, "Timeout while waiting for CONNACK"

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 95
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 96
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->writeConnect(Lio/netty/channel/ChannelHandlerContext;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 297
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    .line 299
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 300
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    .line 299
    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    .line 301
    return-void
.end method

.method protected operationSuccessful(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 128
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->scheduleTimeout(Lio/netty/channel/Channel;)V

    .line 131
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->decoder:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    const-string v2, "encoder"

    const-string v3, "decoder"

    invoke-interface {v0, v2, v3, v1}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 132
    return-void
.end method
