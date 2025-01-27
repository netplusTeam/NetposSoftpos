.class abstract Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
.super Lcom/hivemq/client/internal/util/collections/NodeList$Node;
.source "MqttPubOrRelWithFlow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;",
        ">;"
    }
.end annotation


# instance fields
.field private final ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

.field packetIdentifier:I


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V
    .locals 0
    .param p1, "ackFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    .line 30
    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    .line 32
    return-void
.end method


# virtual methods
.method getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->ackFlow:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    return-object v0
.end method
