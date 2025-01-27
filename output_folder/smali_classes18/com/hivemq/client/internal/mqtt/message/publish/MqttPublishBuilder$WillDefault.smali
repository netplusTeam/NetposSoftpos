.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;
.source "MqttPublishBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WillDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 296
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)V

    .line 297
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 300
    .local p1, "publishBuilder":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V

    .line 301
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contentType(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->contentType(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic contentType(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->contentType(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic correlationData([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->correlationData([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic delayInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$WillBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->delayInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$WillBase$Complete;

    return-object p1
.end method

.method public bridge synthetic messageExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->messageExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic noMessageExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->noMessageExpiry()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object v0
.end method

.method public bridge synthetic payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payload([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payloadFormatIndicator(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->payloadFormatIndicator(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic responseTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->responseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic responseTopic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->responseTopic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic responseTopic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->responseTopic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retain(Z)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->retain(Z)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;
    .locals 0

    .line 305
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->topic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillBase;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method
