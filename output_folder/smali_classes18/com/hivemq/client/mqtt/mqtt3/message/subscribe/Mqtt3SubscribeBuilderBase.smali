.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt3SubscribeBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase$Start;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase<",
        "TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract addSubscription()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscriptionBuilder$Nested<",
            "+TC;>;"
        }
    .end annotation
.end method

.method public abstract addSubscriptions(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ">;)TC;"
        }
    .end annotation
.end method

.method public abstract addSubscriptions(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ">;)TC;"
        }
    .end annotation
.end method

.method public varargs abstract addSubscriptions([Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ")TC;"
        }
    .end annotation
.end method
