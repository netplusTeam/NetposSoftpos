.class public abstract Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
.super Ljava/lang/Object;
.source "Mqtt3PublishViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;,
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillDefault;,
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillBase;,
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$SendVoid;,
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Default;,
        Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$Base;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field payload:Ljava/nio/ByteBuffer;

.field qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field retain:Z

.field topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 47
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;)V
    .locals 2
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    .line 49
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 50
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    .line 51
    .local v0, "delegate":Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 52
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->payload:Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 54
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->isRetain()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->retain:Z

    .line 55
    return-void
.end method


# virtual methods
.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
    .locals 1
    .param p1, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<TB;>;"
    const-string v0, "QoS"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 75
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public retain(Z)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
    .locals 1
    .param p1, "retain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->retain:Z

    .line 80
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
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

    .line 70
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
    .locals 1
    .param p1, "topic"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopic;",
            ")TB;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 66
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topic(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->topic:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder;

    move-result-object v0

    return-object v0
.end method
