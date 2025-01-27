.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.source "MqttSubscriptionBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;)V
    .locals 0
    .param p1, "subscription"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    .line 103
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;)V

    .line 104
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic noLocal(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainAsPublished(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
    .locals 0

    .line 108
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method
