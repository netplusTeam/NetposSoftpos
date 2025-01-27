.class abstract Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;
.source "MqttAckFlow.java"


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 31
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 32
    return-void
.end method


# virtual methods
.method abstract acknowledged(J)V
.end method

.method abstract onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V
.end method
