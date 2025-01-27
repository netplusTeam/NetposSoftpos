.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientConnectedContext;
.super Ljava/lang/Object;
.source "Mqtt3ClientConnectedContext.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;


# virtual methods
.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 33
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientConnectedContext;->getClientConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClientConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
.end method

.method public abstract getConnAck()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;
.end method

.method public abstract getConnect()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
.end method
