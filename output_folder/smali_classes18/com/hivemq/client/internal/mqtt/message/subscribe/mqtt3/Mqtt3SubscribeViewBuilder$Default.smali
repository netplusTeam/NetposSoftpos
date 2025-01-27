.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
.source "Mqtt3SubscribeViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Start$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Start$Complete;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;)V
    .locals 0
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    .line 144
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;)V

    .line 145
    return-void
.end method


# virtual methods
.method public bridge synthetic addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscription()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder$Nested;
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;
    .locals 0

    .line 149
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method
