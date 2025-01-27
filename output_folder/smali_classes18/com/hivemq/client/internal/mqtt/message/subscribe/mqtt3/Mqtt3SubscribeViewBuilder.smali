.class public abstract Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
.super Ljava/lang/Object;
.source "Mqtt3SubscribeViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Publishes;,
        Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

.field private final subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 42
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;)V
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 48
    .local v0, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;"
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 49
    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 50
    return-void
.end method

.method private buildFirstSubscription()V
    .locals 2

    .line 103
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    .line 107
    :cond_0
    return-void
.end method

.method private ensureAtLeastOneSubscription()V
    .locals 2

    .line 129
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "At least one subscription must be added."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 130
    return-void
.end method

.method private getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;
    .locals 1

    .line 96
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    return-object v0
.end method


# virtual methods
.method public addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 3
    .param p1, "subscription"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ")TB;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->buildFirstSubscription()V

    .line 56
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    const-class v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionView;

    .line 57
    const-string v2, "Subscription"

    invoke-static {p1, v1, v2}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionView;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ">;)TB;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    .local p1, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;>;"
    const-string v0, "Subscriptions"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->buildFirstSubscription()V

    .line 81
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 82
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 84
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ">;)TB;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    .local p1, "subscriptions":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;>;"
    const-string v0, "Subscriptions"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->buildFirstSubscription()V

    .line 90
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 91
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 92
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 3
    .param p1, "subscriptions"    # [Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ")TB;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    const-string v0, "Subscriptions"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->buildFirstSubscription()V

    .line 68
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 70
    .local v2, "subscription":Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;
    invoke-virtual {p0, v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    .line 69
    .end local v2    # "subscription":Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 73
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;
    .locals 1

    .line 133
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->buildFirstSubscription()V

    .line 134
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 135
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;->of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    move-result-object v0

    return-object v0
.end method

.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 1
    .param p1, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;

    .line 125
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 1
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 1
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Default;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method
