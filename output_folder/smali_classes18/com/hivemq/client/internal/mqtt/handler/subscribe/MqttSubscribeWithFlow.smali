.class Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
.source "MqttSubscribeWithFlow.java"


# instance fields
.field private final flow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;"
        }
    .end annotation
.end field

.field final subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

.field final subscriptionIdentifier:I


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V
    .locals 0
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "subscriptionIdentifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "I",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p3, "flow":Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;, "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    .line 39
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    .line 40
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->flow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    .line 41
    return-void
.end method


# virtual methods
.method getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->flow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    return-object v0
.end method
