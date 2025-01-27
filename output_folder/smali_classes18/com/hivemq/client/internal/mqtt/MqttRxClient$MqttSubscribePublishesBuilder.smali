.class Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Publishes;
.source "MqttRxClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttRxClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MqttSubscribePublishesBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Publishes<",
        "Lcom/hivemq/client/rx/FlowableWithSingle<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hivemq/client/internal/mqtt/MqttRxClient;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Publishes;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;Lcom/hivemq/client/internal/mqtt/MqttRxClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/MqttRxClient;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/MqttRxClient$1;

    .line 283
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttRxClient;)V

    return-void
.end method


# virtual methods
.method public applySubscribe()Lcom/hivemq/client/rx/FlowableWithSingle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/rx/FlowableWithSingle<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/MqttRxClient;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;->manualAcknowledgement:Z

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttRxClient;->subscribePublishes(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Z)Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applySubscribe()Ljava/lang/Object;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttRxClient$MqttSubscribePublishesBuilder;->applySubscribe()Lcom/hivemq/client/rx/FlowableWithSingle;

    move-result-object v0

    return-object v0
.end method
