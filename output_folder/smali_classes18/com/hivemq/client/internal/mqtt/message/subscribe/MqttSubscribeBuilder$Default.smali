.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.source "MqttSubscribeBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Start$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Start$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V
    .locals 0
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    .line 171
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V

    .line 172
    return-void
.end method


# virtual methods
.method public bridge synthetic addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscription()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Nested;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic noLocal(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainAsPublished(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Default;
    .locals 0

    .line 176
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method
