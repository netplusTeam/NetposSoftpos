.class public abstract Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
.super Ljava/lang/Object;
.source "Mqtt3UnsubscribeViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$SendVoid;,
        Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;)V
    .locals 2
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;

    .line 47
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 49
    .local v0, "topicFilters":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 50
    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 51
    return-void
.end method

.method private ensureAtLeastOneSubscription()V
    .locals 2

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "At least one topic filter must be added."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public addTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 2
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 62
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 2
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 57
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ">;)TB;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    .local p1, "topicFilters":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;>;"
    const-string v0, "Topic Filters"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 82
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 84
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ">;)TB;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    .local p1, "topicFilters":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;>;"
    const-string v0, "Topic Filters"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 90
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 91
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 3
    .param p1, "topicFilters"    # [Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    const-string v0, "Topic Filters"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 72
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 73
    .local v2, "topicFilter":Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    invoke-virtual {p0, v2}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    .line 72
    .end local v2    # "topicFilter":Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 76
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;
    .locals 1

    .line 119
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->ensureAtLeastOneSubscription()V

    .line 120
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;->of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;

    move-result-object v0

    return-object v0
.end method

.method public reverse(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 5
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;",
            ")TB;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 96
    .local v0, "subscriptions":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;>;"
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    .line 97
    .local v2, "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 98
    .end local v2    # "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v1

    return-object v1
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
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

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 1
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;
    .locals 1
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;->addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeViewBuilder;

    move-result-object v0

    return-object v0
.end method
