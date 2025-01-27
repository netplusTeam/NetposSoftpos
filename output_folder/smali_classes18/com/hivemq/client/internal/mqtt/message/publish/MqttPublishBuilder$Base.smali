.class abstract Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.source "MqttPublishBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<",
        "TB;>;>",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<",
        "TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 169
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<TB;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    .line 170
    return-void
.end method


# virtual methods
.method public asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;
    .locals 1

    .line 183
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 15

    .line 187
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    const-string v1, "Topic"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v6, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->retain:Z

    iget-wide v7, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->messageExpiryInterval:J

    iget-object v9, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payloadFormatIndicator:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v10, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->contentType:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v11, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->responseTopic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    iget-object v12, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->correlationData:Ljava/nio/ByteBuffer;

    iget-object v13, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Lcom/hivemq/client/internal/checkpoint/Confirmable;)V

    return-object v0
.end method

.method public payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
    .locals 1
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TB;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->slice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload:Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    return-object v0
.end method

.method public payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
    .locals 1
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload:Ljava/nio/ByteBuffer;

    .line 174
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    return-object v0
.end method
