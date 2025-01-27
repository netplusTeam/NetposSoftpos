.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
.source "MqttPublish.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;


# static fields
.field public static final NO_MESSAGE_EXPIRY:J = 0x7fffffffffffffffL


# instance fields
.field private final confirmable:Lcom/hivemq/client/internal/checkpoint/Confirmable;

.field private final contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final correlationData:Ljava/nio/ByteBuffer;

.field private final messageExpiryInterval:J

.field private final payload:Ljava/nio/ByteBuffer;

.field private final payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

.field private final qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field private final retain:Z

.field private final topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V
    .locals 0
    .param p1, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .param p3, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .param p4, "retain"    # Z
    .param p5, "messageExpiryInterval"    # J
    .param p7, "payloadFormatIndicator"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .param p8, "contentType"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p9, "responseTopic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .param p10, "correlationData"    # Ljava/nio/ByteBuffer;
    .param p11, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .param p12, "confirmable"    # Lcom/hivemq/client/internal/checkpoint/Confirmable;

    .line 78
    invoke-direct {p0, p11}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 79
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 80
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    .line 81
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 82
    iput-boolean p4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    .line 83
    iput-wide p5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    .line 84
    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    .line 85
    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 86
    iput-object p9, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 87
    iput-object p10, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    .line 88
    iput-object p12, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->confirmable:Lcom/hivemq/client/internal/checkpoint/Confirmable;

    .line 89
    return-void
.end method


# virtual methods
.method public acknowledge()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->confirmable:Lcom/hivemq/client/internal/checkpoint/Confirmable;

    .line 169
    .local v0, "confirmable":Lcom/hivemq/client/internal/checkpoint/Confirmable;
    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0}, Lcom/hivemq/client/internal/checkpoint/Confirmable;->confirm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return-void

    .line 174
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A publish must not be acknowledged more than once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "A publish must not be acknowledged if manual acknowledgement is not enabled"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .locals 1

    .line 180
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 246
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return v0
.end method

.method public createStateful(IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 7
    .param p1, "packetIdentifier"    # I
    .param p2, "dup"    # Z
    .param p3, "topicAlias"    # I
    .param p4, "subscriptionIdentifiers"    # Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    .line 194
    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)V

    return-object v6
.end method

.method public createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 2
    .param p1, "packetIdentifier"    # I
    .param p2, "dup"    # Z
    .param p3, "topicAliasMapping"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    .line 200
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 201
    invoke-interface {p3, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;->onPublish(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)I

    move-result v0

    :goto_0
    nop

    .line 202
    .local v0, "topicAlias":I
    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->DEFAULT_NO_SUBSCRIPTION_IDENTIFIERS:Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZILcom/hivemq/client/internal/util/collections/ImmutableIntList;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 229
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 230
    return v0

    .line 232
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 233
    return v2

    .line 235
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 237
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-virtual {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    .line 238
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    iget-wide v5, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 241
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    .line 242
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 237
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;
    .locals 1

    .line 185
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->extend()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getCorrelationData()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->optionalReadOnly(Ljava/nio/ByteBuffer;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMessageExpiryInterval()Ljava/util/OptionalLong;
    .locals 4

    .line 122
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0
.end method

.method public getPayload()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->optionalReadOnly(Ljava/nio/ByteBuffer;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadAsBytes()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->copyBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPayloadFormatIndicator()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public getRawContentType()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public getRawCorrelationData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRawMessageExpiryInterval()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    return-wide v0
.end method

.method public getRawPayload()Ljava/nio/ByteBuffer;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRawPayloadFormatIndicator()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    return-object v0
.end method

.method public getRawResponseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    return-object v0
.end method

.method public getResponseTopic()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopic;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    return-object v0
.end method

.method public bridge synthetic getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->partialHashCode()I

    move-result v0

    .line 252
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 253
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 254
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 255
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 256
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 257
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 259
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 260
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 261
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isRetain()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    return v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 8

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    const-string v2, "byte"

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", payload="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", messageExpiryInterval="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", payloadFormatIndicator="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", contentType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", responseTopic="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", correlationData="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttPublish{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConfirmable(Lcom/hivemq/client/internal/checkpoint/Confirmable;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 14
    .param p1, "confirmable"    # Lcom/hivemq/client/internal/checkpoint/Confirmable;

    .line 206
    new-instance v13, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payload:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->retain:Z

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->messageExpiryInterval:J

    iget-object v7, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v8, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v10, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->correlationData:Ljava/nio/ByteBuffer;

    .line 207
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v11

    move-object v0, v13

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    .line 206
    return-object v13
.end method
