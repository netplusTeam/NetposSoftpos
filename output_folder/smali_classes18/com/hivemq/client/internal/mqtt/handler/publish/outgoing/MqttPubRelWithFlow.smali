.class abstract Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;
.source "MqttPubRelWithFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2CompleteWithFlow;,
        Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;
    }
.end annotation


# instance fields
.field private final pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V
    .locals 0
    .param p1, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .param p2, "ackFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    .line 34
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    .line 35
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    .line 36
    return-void
.end method


# virtual methods
.method getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    return-object v0
.end method
