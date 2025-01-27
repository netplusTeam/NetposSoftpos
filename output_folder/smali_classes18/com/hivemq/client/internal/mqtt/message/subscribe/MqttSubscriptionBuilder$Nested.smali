.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.source "MqttSubscriptionBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Nested$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Nested$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            "TP;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 119
    return-void
.end method


# virtual methods
.method public applySubscription()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic noLocal(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainAsPublished(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;
    .locals 1

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 112
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method
