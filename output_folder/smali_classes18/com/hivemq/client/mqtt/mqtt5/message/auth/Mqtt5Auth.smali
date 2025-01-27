.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;
.super Ljava/lang/Object;
.source "Mqtt5Auth.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;


# virtual methods
.method public abstract getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
.end method

.method public abstract getReasonString()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 54
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    return-object v0
.end method

.method public abstract getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
.end method
