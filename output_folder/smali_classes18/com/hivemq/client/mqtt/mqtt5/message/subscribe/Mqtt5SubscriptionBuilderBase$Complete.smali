.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
.super Ljava/lang/Object;
.source "Mqtt5SubscriptionBuilderBase.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public abstract noLocal(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TC;"
        }
    .end annotation
.end method

.method public abstract qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract retainAsPublished(Z)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TC;"
        }
    .end annotation
.end method

.method public abstract retainHandling(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;",
            ")TC;"
        }
    .end annotation
.end method
