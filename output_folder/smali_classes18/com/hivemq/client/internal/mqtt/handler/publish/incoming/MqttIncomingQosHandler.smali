.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.source "MqttIncomingQosHandler.java"


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ClientScope;
.end annotation


# static fields
.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field public static final NAME:Ljava/lang/String; = "qos.incoming"


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private connectionIndex:J

.field final incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

.field private final messages:Lcom/hivemq/client/internal/util/collections/IntIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private receiveMaximum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    .line 58
    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V
    .locals 2
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "incomingPublishFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;-><init>()V

    .line 70
    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;-><init>(Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    .line 82
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 83
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    invoke-direct {v0, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    .line 84
    return-void
.end method

.method private ack(Ljava/lang/Object;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z
    .locals 5
    .param p1, "prevMessage"    # Ljava/lang/Object;
    .param p2, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 260
    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    .line 261
    if-nez p1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iget-object v2, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getPacketIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, p1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-wide v1, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private buildPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;
    .locals 4
    .param p1, "pubAckBuilder"    # Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;

    .line 318
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    .line 319
    .local v0, "interceptors":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getIncomingQos1Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;

    move-result-object v1

    .line 321
    .local v1, "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;
    if-eqz v1, :cond_0

    .line 322
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-interface {v1, v2, v3, p1}, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;->onPublish(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;)V

    .line 325
    .end local v1    # "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos1/Mqtt5IncomingQos1Interceptor;
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    move-result-object v1

    return-object v1
.end method

.method private buildPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;
    .locals 4
    .param p1, "pubCompBuilder"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    .line 340
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    .line 341
    .local v0, "interceptors":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getIncomingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    move-result-object v1

    .line 343
    .local v1, "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
    if-eqz v1, :cond_0

    .line 344
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;->onPubRel(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRel;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompBuilder;)V

    .line 347
    .end local v1    # "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    move-result-object v1

    return-object v1
.end method

.method private buildPubRec(Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    .locals 4
    .param p1, "pubRecBuilder"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;

    .line 329
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    move-result-object v0

    .line 330
    .local v0, "interceptors":Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;->getIncomingQos2Interceptor()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;

    move-result-object v1

    .line 332
    .local v1, "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
    if-eqz v1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-interface {v1, v2, v3, p1}, Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;->onPublish(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecBuilder;)V

    .line 336
    .end local v1    # "interceptor":Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/qos2/Mqtt5IncomingQos2Interceptor;
    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    move-result-object v1

    return-object v1
.end method

.method private checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 225
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isDup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_0
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "DUP flag must be set for a resent PUBLISH ({})"

    invoke-interface {v0, v1, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DUP flag must be set for a resent QoS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PUBLISH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    iget-object v0, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getPacketIdentifier()I

    move-result v0

    return v0

    .line 62
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->getPacketIdentifier()I

    move-result v0

    return v0
.end method

.method private readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 212
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    invoke-virtual {v0, p2, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublishQos1Or2(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    return v0

    .line 215
    :cond_0
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v1, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 215
    const-string v3, "Received more QoS 1 and/or 2 PUBLISH messages ({}) than allowed by receive maximum ({})"

    invoke-interface {v0, v3, v1, v2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->RECEIVE_MAXIMUM_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "Received more QoS 1 and/or 2 PUBLISH messages than allowed by receive maximum"

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method private readPubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    .line 282
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;->getPacketIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "prevMessage":Ljava/lang/Object;
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    invoke-direct {v1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V

    goto :goto_0

    .line 285
    :cond_0
    if-nez v0, :cond_1

    .line 286
    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    invoke-direct {v1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;->PACKET_IDENTIFIER_NOT_FOUND:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    .line 287
    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    move-result-object v1

    .line 286
    invoke-direct {p0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V

    goto :goto_0

    .line 290
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 291
    .local v1, "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v2, v3, :cond_2

    .line 293
    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v3, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    const-string v4, "PUBREL ({}) must not carry the same packet identifier as an unacknowledged QoS 2 PUBLISH ({})"

    invoke-interface {v2, v4, p2, v3}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v4, "PUBREL must not carry the same packet identifier as an unacknowledged QoS 2 PUBLISH"

    invoke-static {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v3, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    const-string v4, "PUBREL ({}) must not carry the same packet identifier as a QoS 1 PUBLISH ({})"

    invoke-interface {v2, v4, p2, v3}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v4, "PUBREL must not carry the same packet identifier as a QoS 1 PUBLISH"

    invoke-static {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 305
    .end local v1    # "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    :goto_0
    return-void
.end method

.method private readPublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 107
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;->$SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublishQos2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublishQos1(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    .line 113
    goto :goto_0

    .line 109
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublishQos0(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    .line 110
    nop

    .line 118
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readPublishQos0(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 3
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 121
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublishQos0(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)V

    .line 122
    return-void
.end method

.method private readPublishQos1(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 125
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    .line 126
    .local v0, "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    iput-wide v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    .line 127
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->putIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "prevMessage":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 130
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getPacketIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 132
    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    const-string v3, "QoS 1 PUBLISH must not carry the same packet identifier as a QoS 2 PUBLISH"

    const-string v4, "QoS 1 PUBLISH ({}) must not carry the same packet identifier as a QoS 2 PUBLISH ({})"

    if-eqz v2, :cond_5

    .line 133
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 134
    .local v2, "prevPublishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    iget-object v5, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v5

    sget-object v6, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v5, v6, :cond_3

    .line 135
    iget-wide v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v3, v4, :cond_1

    .line 137
    sget-object v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v4, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    const-string v5, "QoS 1 PUBLISH ({}) must not be resent ({}) during the same connection"

    invoke-interface {v3, v5, v4, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v5, "QoS 1 PUBLISH must not be resent during the same connection"

    invoke-static {v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z

    goto :goto_0

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_3
    sget-object v5, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v6, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-interface {v5, v4, p2, v6}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    sget-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-static {v4, v5, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 156
    .end local v2    # "prevPublishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    :cond_4
    :goto_0
    goto :goto_1

    .line 157
    :cond_5
    sget-object v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    invoke-interface {v2, v4, p2, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-static {v2, v4, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 162
    :cond_6
    :goto_1
    return-void
.end method

.method private readPublishQos2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 165
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    .line 166
    .local v0, "publishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    iput-wide v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    .line 167
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->putIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    .local v1, "prevMessage":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 170
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getPacketIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 172
    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    if-eqz v2, :cond_6

    .line 173
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 174
    .local v2, "prevPublishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    iget-object v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v3, v4, :cond_3

    .line 175
    iget-wide v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v3, v4, :cond_1

    .line 177
    sget-object v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v4, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    const-string v5, "QoS 2 PUBLISH ({}) must not be resent ({}) during the same connection"

    invoke-interface {v3, v5, v4, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v5, "QoS 2 PUBLISH must not be resent during the same connection"

    invoke-static {v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z

    goto :goto_0

    .line 185
    :cond_2
    iput-wide v5, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z

    goto :goto_0

    .line 189
    :cond_3
    iget-wide v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 190
    sget-object v3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v4, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    const-string v5, "QoS 2 PUBLISH ({}) must not carry the same packet identifier as a QoS 1 PUBLISH ({})"

    invoke-interface {v3, v5, p2, v4}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v5, "QoS 2 PUBLISH must not carry the same packet identifier as a QoS 1 PUBLISH"

    invoke-static {v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 197
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v2    # "prevPublishWithFlows":Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;
    :cond_5
    :goto_0
    goto :goto_1

    .line 202
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 203
    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-direct {p0, p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    .line 206
    :cond_7
    :goto_1
    return-void
.end method

.method private writePubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubAck"    # Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    .line 274
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 275
    return-void
.end method

.method private writePubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubComp"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    .line 308
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 309
    return-void
.end method

.method private writePubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pubRec"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    .line 278
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 279
    return-void
.end method


# virtual methods
.method ack(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 3
    .param p1, "publishWithFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    .line 236
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;->$SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 246
    :pswitch_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubRec(Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    move-result-object v0

    .line 247
    .local v0, "pubRec":Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    .line 248
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;->getPacketIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    nop

    .line 249
    .local v1, "prevMessage":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Ljava/lang/Object;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    goto :goto_1

    .line 238
    .end local v0    # "pubRec":Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    .end local v1    # "prevMessage":Ljava/lang/Object;
    :pswitch_1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    move-result-object v0

    .line 239
    .local v0, "pubAck":Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;->getPacketIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 240
    .restart local v1    # "prevMessage":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Ljava/lang/Object;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v2, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    .line 255
    .end local v0    # "pubAck":Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;
    .end local v1    # "prevMessage":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    goto :goto_0

    .line 99
    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    if-eqz v0, :cond_1

    .line 100
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 104
    :goto_0
    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 313
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    .line 314
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    .line 315
    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 4
    .param p1, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .param p2, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 90
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getReceiveMaximum()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    .line 91
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    .line 92
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 93
    return-void
.end method
