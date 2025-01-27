.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda1;->f$1:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda1;->f$1:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->lambda$subscribeGlobal$4$com-hivemq-client-internal-mqtt-handler-subscribe-MqttSubscriptionHandler(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    return-void
.end method
