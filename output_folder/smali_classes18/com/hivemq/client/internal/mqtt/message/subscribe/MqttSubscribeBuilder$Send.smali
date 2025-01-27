.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;
.super Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
.source "MqttSubscribeBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
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
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "TP;>;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    .line 207
    return-void
.end method


# virtual methods
.method public bridge synthetic addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscription()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Nested;
    .locals 1

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscription()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscriptionBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic noLocal(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->noLocal(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainAsPublished(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->retainAsPublished(Z)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method protected self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<",
            "TP;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;
    .locals 1

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;->self()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;

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

    .line 216
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;->build()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .locals 1

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .locals 0

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribeBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;

    return-object p1
.end method
