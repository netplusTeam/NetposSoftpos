.class public final synthetic Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder;

    move-result-object p1

    return-object p1
.end method
