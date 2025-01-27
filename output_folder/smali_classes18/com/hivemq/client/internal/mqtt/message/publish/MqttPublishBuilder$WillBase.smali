.class abstract Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.source "MqttPublishBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WillBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<",
        "TB;>;>",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private delayInterval:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 249
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;-><init>()V

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    .line 249
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 2
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 252
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<TB;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    .line 253
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    if-eqz v0, :cond_0

    .line 254
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;->getDelayInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    .line 258
    :goto_0
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

    .line 261
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<TB;>;"
    .local p1, "publishBuilder":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    .line 262
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    if-eqz v0, :cond_0

    .line 263
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    iget-wide v0, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    .line 267
    :goto_0
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .locals 17

    .line 285
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<TB;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    const-string v2, "Topic"

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    iget-object v4, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v5, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload:Ljava/nio/ByteBuffer;

    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v7, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->retain:Z

    iget-wide v8, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->messageExpiryInterval:J

    iget-object v10, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v11, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v12, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v13, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->correlationData:Ljava/nio/ByteBuffer;

    iget-object v14, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iget-wide v2, v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    move-wide v15, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;J)V

    return-object v1
.end method

.method public delayInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;
    .locals 2
    .param p1, "delayInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<TB;>;"
    const-string v0, "Will delay interval"

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedInt(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval:J

    .line 281
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    return-object v0
.end method

.method public payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;
    .locals 1
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TB;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<TB;>;"
    const-string v0, "Payload"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload:Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    return-object v0
.end method

.method public payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;
    .locals 1
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<TB;>;"
    const-string v0, "Payload"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload:Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    return-object v0
.end method
