.class public abstract Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
.super Ljava/lang/Object;
.source "MqttUnsubscribeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<",
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

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 47
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;)V
    .locals 2
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    .line 50
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 51
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;->getTopicFilters()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 52
    .local v0, "topicFilters":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;>;"
    invoke-interface {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 53
    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->addAll(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 54
    return-void
.end method

.method private ensureAtLeastOneSubscription()V
    .locals 2

    .line 127
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

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

    .line 128
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

    .line 69
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 2
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 65
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 2
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 60
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTopicFilters(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
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

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    .local p1, "topicFilters":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;>;"
    const-string v0, "Topic Filters"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 85
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 86
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 87
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTopicFilters(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
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

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    .local p1, "topicFilters":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;>;"
    const-string v0, "Topic Filters"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 94
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addTopicFilters([Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 3
    .param p1, "topicFilters"    # [Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    const-string v0, "Topic Filters"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->ensureFree(I)V

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 76
    .local v2, "topicFilter":Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    invoke-virtual {p0, v2}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    .line 75
    .end local v2    # "topicFilter":Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 79
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .locals 3

    .line 131
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->ensureAtLeastOneSubscription()V

    .line 132
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method public reverse(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 5
    .param p1, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;",
            ")TB;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 99
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

    .line 100
    .local v2, "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->topicFiltersBuilder:Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 101
    .end local v2    # "subscription":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v1

    return-object v1
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
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

    .line 123
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 1
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 1
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->addTopicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

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

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;
    .locals 1
    .param p1, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;",
            ")TB;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;, "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 107
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribeBuilder;

    move-result-object v0

    return-object v0
.end method
