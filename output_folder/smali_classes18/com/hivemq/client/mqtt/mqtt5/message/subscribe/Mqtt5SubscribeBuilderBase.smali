.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5SubscribeBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Start;,
        Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addSubscription(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract addSubscription()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilder$Nested<",
            "+TC;>;"
        }
    .end annotation
.end method

.method public abstract addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ">;)TC;"
        }
    .end annotation
.end method

.method public abstract addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ">;)TC;"
        }
    .end annotation
.end method

.method public varargs abstract addSubscriptions([Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;",
            ")TC;"
        }
    .end annotation
.end method
