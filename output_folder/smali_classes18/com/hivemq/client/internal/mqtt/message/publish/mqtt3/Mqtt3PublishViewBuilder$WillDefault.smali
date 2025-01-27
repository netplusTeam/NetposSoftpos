.class public Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillDefault;
.super Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;
.source "Mqtt3PublishViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WillDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillDefault;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    .line 210
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;)V

    .line 211
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->build()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->build()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic payload([B)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->payload([B)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retain(Z)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->retain(Z)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    return-object p1
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillDefault;
    .locals 0

    .line 215
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillDefault;->self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->topic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;->topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;

    return-object p1
.end method
