.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
.super Ljava/lang/Object;
.source "Mqtt5Publish.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;


# static fields
.field public static final DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method

.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder;
    .locals 1

    .line 54
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract acknowledge()V
.end method

.method public abstract asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;
.end method

.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;
.end method

.method public abstract getContentType()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCorrelationData()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageExpiryInterval()Ljava/util/OptionalLong;
.end method

.method public abstract getPayload()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPayloadAsBytes()[B
.end method

.method public abstract getPayloadFormatIndicator()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
.end method

.method public abstract getResponseTopic()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopic;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 123
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    return-object v0
.end method

.method public abstract getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
.end method

.method public abstract isRetain()Z
.end method
