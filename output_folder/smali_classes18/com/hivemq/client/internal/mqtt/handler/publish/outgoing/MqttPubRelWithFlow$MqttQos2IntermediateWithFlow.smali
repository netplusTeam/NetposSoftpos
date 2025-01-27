.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
.source "MqttPubRelWithFlow.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MqttQos2IntermediateWithFlow"
.end annotation


# instance fields
.field private state:I


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V
    .locals 0
    .param p1, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .param p2, "ackFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 3

    .line 54
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;->state:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
