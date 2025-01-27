.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelBuilder;
.super Ljava/lang/Object;
.source "Mqtt5PubRelBuilder.java"


# virtual methods
.method public abstract getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;
.end method

.method public abstract reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelBuilder;
.end method

.method public abstract reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelBuilder;
.end method

.method public abstract userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelBuilder;
.end method
