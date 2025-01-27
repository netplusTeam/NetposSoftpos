.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;
.source "MqttPublishBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;",
            "TP;>;)V"
        }
    .end annotation

    .line 230
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    .line 232
    return-void
.end method


# virtual methods
.method public bridge synthetic asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;
    .locals 1

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 1

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contentType(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->contentType(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic contentType(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->contentType(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic correlationData([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->correlationData([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic messageExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->messageExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic noMessageExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 1

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->noMessageExpiry()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object v0
.end method

.method public bridge synthetic payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payload([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payloadFormatIndicator(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->payloadFormatIndicator(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic responseTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .locals 1

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->responseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic responseTopic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->responseTopic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic responseTopic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->responseTopic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retain(Z)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->retain(Z)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<",
            "TP;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;
    .locals 1

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->self()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public send()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;->build()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .locals 1

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .locals 0

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Base;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    return-object p1
.end method
