.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
.source "Mqtt3SubscribeViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Send$Start$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Send$Start$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;",
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
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;",
            "TP;>;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    .line 180
    return-void
.end method


# virtual methods
.method public bridge synthetic addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscription()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder$Nested;
    .locals 1

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscriptionViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .locals 0

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<",
            "TP;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;
    .locals 1

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public send()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;
    .locals 0

    .line 173
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilderBase$Complete;

    return-object p1
.end method
