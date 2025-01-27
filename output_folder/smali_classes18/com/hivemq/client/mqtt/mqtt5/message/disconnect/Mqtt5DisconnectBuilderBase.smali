.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5DisconnectBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract noSessionExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverReference(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverReference(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract sessionExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation
.end method

.method public abstract userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;",
            ")TB;"
        }
    .end annotation
.end method
