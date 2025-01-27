.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

.field public final synthetic f$2:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;->f$0:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;->f$1:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;->f$2:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;->f$0:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;->f$1:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda3;->f$2:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->lambda$unsubscribe$3$com-hivemq-client-internal-mqtt-handler-subscribe-MqttSubscriptionHandler(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)V

    return-void
.end method
