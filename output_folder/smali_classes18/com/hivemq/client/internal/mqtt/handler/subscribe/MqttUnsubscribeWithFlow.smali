.class Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
.source "MqttUnsubscribeWithFlow.java"


# instance fields
.field private final unsubAckFlow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;",
            ">;"
        }
    .end annotation
.end field

.field final unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;)V
    .locals 0
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p2, "unsubAckFlow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->unsubscribe:Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    .line 36
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->unsubAckFlow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    .line 37
    return-void
.end method


# virtual methods
.method getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->unsubAckFlow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    return-object v0
.end method

.method bridge synthetic getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubAckFlow;

    move-result-object v0

    return-object v0
.end method
