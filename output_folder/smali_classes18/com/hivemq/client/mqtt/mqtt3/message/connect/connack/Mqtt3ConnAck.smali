.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
.super Ljava/lang/Object;
.source "Mqtt3ConnAck.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# virtual methods
.method public abstract getReturnCode()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 46
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method

.method public abstract isSessionPresent()Z
.end method
