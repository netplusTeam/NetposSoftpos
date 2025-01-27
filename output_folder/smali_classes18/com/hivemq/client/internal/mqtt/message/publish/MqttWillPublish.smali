.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
.source "MqttWillPublish.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;


# instance fields
.field private final delayInterval:J


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;J)V
    .locals 13
    .param p1, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .param p3, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .param p4, "isRetain"    # Z
    .param p5, "messageExpiryInterval"    # J
    .param p7, "payloadFormatIndicator"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;
    .param p8, "contentType"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p9, "responseTopic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .param p10, "correlationData"    # Ljava/nio/ByteBuffer;
    .param p11, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .param p12, "delayInterval"    # J

    .line 52
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    .line 54
    move-wide/from16 v1, p12

    iput-wide v1, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->delayInterval:J

    .line 55
    return-void
.end method


# virtual methods
.method public asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .locals 0

    .line 64
    return-object p0
.end method

.method public bridge synthetic asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 85
    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 92
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->delayInterval:J

    iget-wide v5, v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->delayInterval:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 88
    .end local v1    # "that":Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    :cond_3
    :goto_1
    return v2
.end method

.method public extendAsWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;
    .locals 1

    .line 69
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    return-object v0
.end method

.method public bridge synthetic extendAsWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Complete;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->extendAsWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    move-result-object v0

    return-object v0
.end method

.method public getDelayInterval()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->delayInterval:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 102
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->hashCode()I

    move-result v0

    .line 103
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->delayInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 104
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->delayInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttWillPublish{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->toAttributeString()Ljava/lang/String;

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
