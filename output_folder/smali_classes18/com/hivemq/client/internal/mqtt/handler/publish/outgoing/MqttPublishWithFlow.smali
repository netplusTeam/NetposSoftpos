.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
.source "MqttPublishWithFlow.java"


# instance fields
.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "ackFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    .line 30
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    .line 31
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 32
    return-void
.end method


# virtual methods
.method getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-object v0
.end method
