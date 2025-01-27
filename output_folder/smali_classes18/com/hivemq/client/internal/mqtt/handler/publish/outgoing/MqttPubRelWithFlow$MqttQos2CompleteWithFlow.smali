.class Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2CompleteWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
.source "MqttPubRelWithFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MqttQos2CompleteWithFlow"
.end annotation


# instance fields
.field private final pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V
    .locals 0
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .param p2, "pubRec"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    .param p3, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .param p4, "ackFlow"    # Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    .line 69
    invoke-direct {p0, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    .line 70
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2CompleteWithFlow;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    .line 71
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2CompleteWithFlow;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    .line 72
    return-void
.end method


# virtual methods
.method getPubRec()Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2CompleteWithFlow;->pubRec:Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    return-object v0
.end method

.method getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2CompleteWithFlow;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-object v0
.end method
