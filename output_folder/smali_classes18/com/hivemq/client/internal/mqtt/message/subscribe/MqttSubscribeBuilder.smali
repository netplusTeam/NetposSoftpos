.class public abstract Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.super Ljava/lang/Object;
.source "MqttSubscribeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Publishes;,
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

.field private final subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 47
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 48
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V
    .locals 2
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    .line 51
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 52
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 53
    .local v0, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;"
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 54
    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 55
    return-void
.end method

.method private buildFirstSubscription()V
    .locals 2

    .line 116
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    .line 120
    :cond_0
    return-void
.end method

.method private ensureAtLeastOneSubscription()V
    .locals 2

    .line 157
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

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

    .line 158
    return-void
.end method

.method private getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
    .locals 1

    .line 109
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->firstSubscriptionBuilder:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    return-object v0
.end method


# virtual methods
.method public addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 3
    .param p1, "subscription"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ")TB;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->buildFirstSubscription()V

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    const-class v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    const-string v2, "Subscription"

    invoke-static {p1, v1, v2}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 62
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ">;)TB;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    .local p1, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;>;"
    const-string v0, "Subscriptions"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->buildFirstSubscription()V

    .line 85
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 86
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 88
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ">;)TB;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    .local p1, "subscriptions":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;>;"
    const-string v0, "Subscriptions"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->buildFirstSubscription()V

    .line 94
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 96
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 3
    .param p1, "subscriptions"    # [Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ")TB;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    const-string v0, "Subscriptions"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->buildFirstSubscription()V

    .line 72
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 74
    .local v2, "subscription":Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;
    invoke-virtual {p0, v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    .line 73
    .end local v2    # "subscription":Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 77
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .locals 3

    .line 161
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->buildFirstSubscription()V

    .line 162
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 163
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->subscriptionsBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method public noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .param p1, "noLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .param p1, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .param p1, "retainAsPublished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    .line 153
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .param p1, "retainHandling"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;",
            ")TB;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    .line 148
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
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

    .line 133
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->getFirstSubscriptionBuilder()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    .line 124
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1
    .param p1, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;",
            ")TB;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 101
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object v0

    return-object v0
.end method
