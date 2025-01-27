.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientConnectedContext;
.super Ljava/lang/Object;
.source "Mqtt5ClientConnectedContext.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;


# virtual methods
.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 33
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientConnectedContext;->getClientConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClientConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
.end method

.method public abstract getConnAck()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
.end method

.method public abstract getConnect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
.end method
