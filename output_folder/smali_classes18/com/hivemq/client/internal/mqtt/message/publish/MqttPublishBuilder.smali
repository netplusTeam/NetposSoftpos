.class public abstract Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.super Ljava/lang/Object;
.source "MqttPublishBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;,
        Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field correlationData:Ljava/nio/ByteBuffer;

.field messageExpiryInterval:J

.field payload:Ljava/nio/ByteBuffer;

.field payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

.field qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field retain:Z

.field topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 45
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    .line 50
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 2
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 54
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 45
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    .line 50
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 55
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 56
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payload:Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 58
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->isRetain()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->retain:Z

    .line 59
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawMessageExpiryInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    .line 60
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayloadFormatIndicator()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    .line 61
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawContentType()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 62
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawResponseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 63
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawCorrelationData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData:Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    .local p1, "publishBuilder":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 45
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    .line 50
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 68
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 69
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payload:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payload:Ljava/nio/ByteBuffer;

    .line 70
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 71
    iget-boolean v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->retain:Z

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->retain:Z

    .line 72
    iget-wide v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    .line 73
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    .line 74
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 75
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 76
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData:Ljava/nio/ByteBuffer;

    .line 77
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 78
    return-void
.end method


# virtual methods
.method public contentType(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "contentType"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ")TB;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->stringOrNull(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 128
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->stringOrNull(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 123
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "correlationData"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TB;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-string v0, "Correlation data"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData:Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public correlationData([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "correlationData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-string v0, "Correlation data"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->correlationData:Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public messageExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 2
    .param p1, "messageExpiryInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-string v0, "Message expiry interval"

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedInt(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    .line 108
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public noMessageExpiry()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->messageExpiryInterval:J

    .line 113
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public payloadFormatIndicator(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "payloadFormatIndicator"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;",
            ")TB;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    .line 118
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-string v0, "QoS"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 98
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public responseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public responseTopic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 2
    .param p1, "responseTopic"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopic;",
            ")TB;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    const-string v1, "Response topic"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 138
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public responseTopic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "responseTopic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Response topic"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 133
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public retain(Z)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "retain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->retain:Z

    .line 103
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public topic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "topic"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopic;",
            ")TB;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 89
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 84
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method

.method public userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1
    .param p1, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;",
            ")TB;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 157
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    return-object v0
.end method
