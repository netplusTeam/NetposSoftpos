.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/disconnect/Mqtt3Disconnect;
.super Ljava/lang/Object;
.source "Mqtt3Disconnect.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# virtual methods
.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 35
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method
