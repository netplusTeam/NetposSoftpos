.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
.source "MqttPublishBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 198
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    .line 199
    return-void
.end method


# virtual methods
.method public bridge synthetic asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Complete;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contentType(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->contentType(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic contentType(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->contentType(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic correlationData([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->correlationData([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic messageExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->messageExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic noMessageExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->noMessageExpiry()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object v0
.end method

.method public bridge synthetic payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payload([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payloadFormatIndicator(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payloadFormatIndicator(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic responseTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->responseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic responseTopic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->responseTopic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic responseTopic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->responseTopic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retain(Z)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->retain(Z)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;
    .locals 0

    .line 203
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method
