.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
.super Ljava/lang/Object;
.source "Mqtt5AuthBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;


# virtual methods
.method public abstract data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
.end method

.method public abstract data([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
.end method

.method public bridge synthetic data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;
    .locals 0

    .line 35
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;->data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic data([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;
    .locals 0

    .line 35
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;->data([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
.end method

.method public abstract reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
.end method

.method public abstract userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;
.end method
