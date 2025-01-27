.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
.super Ljava/lang/Object;
.source "Mqtt3Publish.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# static fields
.field public static final DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-void
.end method

.method public static builder()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder;
    .locals 1

    .line 52
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract acknowledge()V
.end method

.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Complete;
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

.method public abstract getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
.end method

.method public abstract getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 91
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method

.method public abstract isRetain()Z
.end method
