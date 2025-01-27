.class public abstract Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.super Ljava/lang/Object;
.source "MqttSubscriptionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private noLocal:Z

.field private qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private retainAsPublished:Z

.field private retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

.field private topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 44
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    .line 41
    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->DEFAULT_RETAIN_HANDLING:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    .line 42
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished:Z

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;)V
    .locals 2
    .param p1, "subscription"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->DEFAULT_QOS:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    .line 41
    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->DEFAULT_RETAIN_HANDLING:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    .line 42
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished:Z

    .line 47
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 48
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 49
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->isNoLocal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    .line 50
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getRetainHandling()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    .line 51
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->isRetainAsPublished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished:Z

    .line 52
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
    .locals 8

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    const-string v1, "Topic filter"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 93
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->isShared()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 92
    :goto_1
    const-string v1, "It is a Protocol Error to set no local to true on a Shared Subscription."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    .line 95
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-boolean v5, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iget-boolean v7, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V

    return-object v0
.end method

.method public noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1
    .param p1, "noLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal:Z

    .line 77
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1
    .param p1, "qos"    # Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TB;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    const-string v0, "QoS"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 72
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1
    .param p1, "retainAsPublished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished:Z

    .line 87
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1
    .param p1, "retainHandling"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;",
            ")TB;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    const-string v0, "Retain handling"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    .line 82
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
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

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TB;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 63
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<TB;>;"
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object v0

    return-object v0
.end method
