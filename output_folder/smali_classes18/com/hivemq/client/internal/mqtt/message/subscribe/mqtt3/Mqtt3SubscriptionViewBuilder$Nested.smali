.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;
.source "Mqtt3SubscriptionViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder$Nested$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder$Nested$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
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
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            "TP;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 97
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

    .line 106
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 90
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;
    .locals 1

    .line 90
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 90
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 90
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 90
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method
