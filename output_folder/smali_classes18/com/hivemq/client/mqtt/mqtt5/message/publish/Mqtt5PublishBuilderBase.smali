.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5PublishBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$WillBase;,
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract topic()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested<",
            "+TC;>;"
        }
    .end annotation
.end method

.method public abstract topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttTopic;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method
