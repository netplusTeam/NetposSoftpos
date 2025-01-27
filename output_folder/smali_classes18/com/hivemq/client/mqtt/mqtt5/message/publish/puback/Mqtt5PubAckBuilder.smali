.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
.super Ljava/lang/Object;
.source "Mqtt5PubAckBuilder.java"


# virtual methods
.method public abstract reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
.end method

.method public abstract reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
.end method

.method public abstract reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
.end method

.method public abstract userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
.end method
