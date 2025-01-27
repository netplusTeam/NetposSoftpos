.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Start;
.super Ljava/lang/Object;
.source "Mqtt5UnsubscribeBuilderBase.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Start"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public abstract topicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Nested<",
            "+TC;>;"
        }
    .end annotation
.end method

.method public abstract topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5UnsubscribeBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method
