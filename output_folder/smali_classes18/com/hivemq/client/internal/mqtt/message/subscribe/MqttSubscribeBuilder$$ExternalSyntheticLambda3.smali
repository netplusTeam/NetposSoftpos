.class public final synthetic Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    return-void
.end method
