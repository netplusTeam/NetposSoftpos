.class public Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.source "MqttSubscriptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ClientScope;
.end annotation


# static fields
.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

.field public static final MAX_SUB_PENDING:I = 0xa

.field public static final NAME:Ljava/lang/String; = "subscription"


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

.field private final incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

.field private nextSubscriptionIdentifier:I

.field private final packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

.field private final pending:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

.field private subscriptionIdentifiersAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    .line 66
    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    .line 67
    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda4;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V
    .locals 5
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "incomingPublishFlows"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;-><init>()V

    .line 75
    new-instance v0, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    .line 80
    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;-><init>(Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    .line 89
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 90
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    .line 92
    const v0, 0xffff

    .line 93
    .local v0, "maxPacketIdentifier":I
    const v1, 0xfff6

    .line 94
    .local v1, "minPacketIdentifier":I
    new-instance v2, Lcom/hivemq/client/internal/util/Ranges;

    const v3, 0xfff6

    const v4, 0xffff

    invoke-direct {v2, v3, v4}, Lcom/hivemq/client/internal/util/Ranges;-><init>(II)V

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    .line 95
    return-void
.end method

.method private completePending(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V
    .locals 2
    .param p1, "oldPending"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 322
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 323
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    iget v1, p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    .line 324
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->run()V

    .line 325
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)I
    .locals 1
    .param p0, "x"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 68
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    return v0
.end method

.method private queue(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V
    .locals 1
    .param p1, "subOrUnsubWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 152
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 153
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-nez v0, :cond_0

    .line 154
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 155
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->run()V

    .line 157
    :cond_0
    return-void
.end method

.method private readSubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "subAck"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    .line 229
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;->getPacketIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 231
    .local v0, "subOrUnsubWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    if-nez v0, :cond_0

    .line 232
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v3, "Unknown packet identifier for SUBACK"

    invoke-static {v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 234
    return-void

    .line 236
    :cond_0
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    if-nez v1, :cond_1

    .line 237
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v3, "SUBACK received for an UNSUBSCRIBE"

    invoke-static {v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    .line 242
    .local v1, "subscribeWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    move-result-object v2

    .line 244
    .local v2, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;>;"
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v3

    .line 245
    .local v3, "reasonCodes":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;>;"
    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v4

    invoke-interface {v4}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v4

    invoke-interface {v3}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 246
    .local v4, "countNotMatching":Z
    :goto_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v5

    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->allErrors(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Z

    move-result v5

    .line 248
    .local v5, "allErrors":Z
    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    iget-object v7, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget v8, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    invoke-virtual {v6, v7, v8, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subAck(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/util/collections/ImmutableList;)V

    .line 250
    if-eqz v2, :cond_7

    .line 251
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 252
    invoke-interface {v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 253
    invoke-interface {v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_3
    sget-object v6, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v7, "Subscribe was successful but the SubAck flow has been cancelled"

    invoke-interface {v6, v7}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_4
    if-eqz v4, :cond_5

    .line 260
    const-string v6, "Count of Reason Codes in SUBACK does not match count of subscriptions in SUBSCRIBE"

    .local v6, "errorMessage":Ljava/lang/String;
    goto :goto_1

    .line 262
    .end local v6    # "errorMessage":Ljava/lang/String;
    :cond_5
    const-string v6, "SUBACK contains only Error Codes"

    .line 264
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 265
    new-instance v7, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;

    invoke-direct {v7, p2, v6}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 267
    :cond_6
    sget-object v7, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but the SubAck flow has been cancelled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 272
    .end local v6    # "errorMessage":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->completePending(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V

    .line 273
    return-void
.end method

.method private readUnsubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "unsubAck"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    .line 276
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;->getPacketIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 278
    .local v0, "subOrUnsubWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    if-nez v0, :cond_0

    .line 279
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v3, "Unknown packet identifier for UNSUBACK"

    invoke-static {v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 281
    return-void

    .line 283
    :cond_0
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;

    if-nez v1, :cond_1

    .line 284
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v3, "UNSUBACK received for a SUBSCRIBE"

    invoke-static {v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;

    .line 289
    .local v1, "unsubscribeWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    move-result-object v2

    .line 291
    .local v2, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;>;"
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v3

    .line 292
    .local v3, "reasonCodes":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;>;"
    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    invoke-virtual {v4}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v4

    invoke-interface {v4}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v4

    invoke-interface {v3}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 293
    .local v4, "countNotMatching":Z
    :goto_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v5

    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->allErrors(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Z

    move-result v5

    .line 295
    .local v5, "allErrors":Z
    sget-object v6, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;->REASON_CODES_ALL_SUCCESS:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    if-eq v3, v6, :cond_6

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    goto :goto_2

    .line 306
    :cond_3
    if-eqz v4, :cond_4

    .line 307
    const-string v6, "Count of Reason Codes in UNSUBACK does not match count of Topic Filters in UNSUBSCRIBE"

    .local v6, "errorMessage":Ljava/lang/String;
    goto :goto_1

    .line 309
    .end local v6    # "errorMessage":Ljava/lang/String;
    :cond_4
    const-string v6, "UNSUBACK contains only Error Codes"

    .line 311
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 312
    new-instance v7, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;

    invoke-direct {v7, p2, v6}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAck;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 314
    :cond_5
    sget-object v7, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but the UnsubAck flow has been cancelled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 297
    .end local v6    # "errorMessage":Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    iget-object v7, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    invoke-virtual {v6, v7, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->unsubscribe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    .line 299
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 300
    invoke-virtual {v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->onSuccess(Ljava/lang/Object;)V

    goto :goto_3

    .line 302
    :cond_7
    sget-object v6, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v7, "Unsubscribe was successful but the UnsubAck flow has been cancelled"

    invoke-interface {v6, v7}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 318
    :goto_3
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->completePending(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V

    .line 319
    return-void
.end method

.method private writeSubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "subscribeWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    .line 196
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscriptionIdentifiersAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 198
    .local v0, "subscriptionIdentifier":I
    :goto_0
    iget-object v1, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget v2, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->packetIdentifier:I

    .line 199
    invoke-virtual {v1, v2, v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->createStateful(II)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    move-result-object v1

    .line 201
    .local v1, "statefulSubscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 202
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 203
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 204
    return-void
.end method

.method private writeUnsubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "unsubscribeWithFlow"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;

    .line 209
    iget-object v0, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    iget v1, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->packetIdentifier:I

    .line 210
    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->createStateful(I)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;

    move-result-object v0

    .line 212
    .local v0, "statefulUnsubscribe":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 213
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 215
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 219
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    if-eqz v0, :cond_0

    .line 220
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->readSubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V

    goto :goto_0

    .line 221
    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    if-eqz v0, :cond_1

    .line 222
    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->readUnsubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 226
    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 329
    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-eqz v0, :cond_2

    .line 330
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 331
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iget v1, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    .line 332
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iget v1, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    move-result-object v0

    .line 335
    .local v0, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<*>;"
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onError(Ljava/lang/Throwable;)V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    if-eqz v2, :cond_1

    .line 340
    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    .line 341
    .local v1, "subscribeWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    iget-object v3, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    sget-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    .line 342
    invoke-static {v5}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->of(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v5

    .line 341
    invoke-virtual {v2, v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subAck(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/util/collections/ImmutableList;)V

    .line 345
    .end local v1    # "subscribeWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 346
    .end local v0    # "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<*>;"
    goto :goto_0

    .line 347
    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 349
    :goto_0
    return-void
.end method

.method synthetic lambda$onSessionStartOrResume$1$com-hivemq-client-internal-mqtt-handler-subscribe-MqttSubscriptionHandler(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 5
    .param p1, "subscriptionIdentifier"    # Ljava/lang/Integer;
    .param p2, "subscriptions"    # Ljava/util/List;

    .line 105
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-static {p2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 107
    .local v0, "subscribe":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/NodeList;->addFirst(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    .line 108
    return-void
.end method

.method synthetic lambda$subscribe$2$com-hivemq-client-internal-mqtt-handler-subscribe-MqttSubscriptionHandler(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V
    .locals 3
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
    .param p2, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    .line 124
    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->init()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    .line 126
    .local v0, "subscriptionIdentifier":I
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    instance-of v2, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p2, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    .line 128
    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    invoke-direct {v1, p2, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->queue(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V

    .line 130
    .end local v0    # "subscriptionIdentifier":I
    :cond_1
    return-void
.end method

.method synthetic lambda$subscribeGlobal$4$com-hivemq-client-internal-mqtt-handler-subscribe-MqttSubscriptionHandler(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 1
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    .line 145
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    .line 148
    :cond_0
    return-void
.end method

.method synthetic lambda$unsubscribe$3$com-hivemq-client-internal-mqtt-handler-subscribe-MqttSubscriptionHandler(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)V
    .locals 1
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;
    .param p2, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    .line 137
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;

    invoke-direct {v0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->queue(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 353
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    .line 355
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 357
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .local v0, "current":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    :goto_0
    if-eqz v0, :cond_1

    .line 358
    iget v1, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    if-nez v1, :cond_0

    .line 359
    goto :goto_1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    iget v2, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    .line 362
    const/4 v1, 0x0

    iput v1, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    .line 357
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    goto :goto_0

    .line 365
    .end local v0    # "current":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->isResubscribeIfSessionExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v0, v1, :cond_2

    .line 366
    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->clear(Ljava/lang/Throwable;)V

    .line 370
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .restart local v0    # "current":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    :goto_2
    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    move-result-object v1

    .line 372
    .local v1, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<*>;"
    if-eqz v1, :cond_3

    .line 373
    invoke-interface {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onError(Ljava/lang/Throwable;)V

    .line 370
    .end local v1    # "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<*>;"
    :cond_3
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    goto :goto_2

    .line 376
    .end local v0    # "current":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    :cond_4
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->clear()V

    .line 377
    const/4 v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    .line 378
    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 2
    .param p1, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .param p2, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 101
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->areSubscriptionIdentifiersAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscriptionIdentifiersAvailable:Z

    .line 103
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->hasSession:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->getSubscriptions()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    .line 112
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-interface {p2, p0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 117
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    .line 118
    return-void
.end method

.method public run()V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 163
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 167
    .local v1, "written":I
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    .line 168
    .local v2, "subOrUnsubWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    :goto_0
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    .line 171
    iget v3, v2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    if-nez v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/util/Ranges;->getId()I

    move-result v3

    .line 173
    .local v3, "packetIdentifier":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 174
    sget-object v4, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v5, "No Packet Identifier available for (UN)SUBSCRIBE. This must not happen and is a bug."

    invoke-interface {v4, v5}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 176
    return-void

    .line 178
    :cond_1
    iput v3, v2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    .line 180
    .end local v3    # "packetIdentifier":I
    :cond_2
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    instance-of v3, v3, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    if-eqz v3, :cond_3

    .line 182
    move-object v3, v2

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    invoke-direct {p0, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->writeSubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;)V

    goto :goto_1

    .line 184
    :cond_3
    move-object v3, v2

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;

    invoke-direct {p0, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->writeUnsubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;)V

    .line 186
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 169
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    move-object v2, v3

    iput-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    goto :goto_0

    .line 188
    .end local v2    # "subOrUnsubWithFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
    :cond_4
    if-lez v1, :cond_5

    .line 189
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 191
    :cond_5
    return-void
.end method

.method public subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p2, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;>;"
    invoke-interface {p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->getEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 2
    .param p1, "flow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    .line 144
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;->getEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public unsubscribe(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;)V
    .locals 2
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p2, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;>;"
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;->getEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method
