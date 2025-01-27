.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/unsuback/Mqtt3UnsubAck;
.super Ljava/lang/Object;
.source "Mqtt3UnsubAck.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# virtual methods
.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 36
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method
