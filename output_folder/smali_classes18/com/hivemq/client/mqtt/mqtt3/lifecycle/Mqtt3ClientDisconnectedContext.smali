.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientDisconnectedContext;
.super Ljava/lang/Object;
.source "Mqtt3ClientDisconnectedContext.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;


# virtual methods
.method public bridge synthetic getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 31
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientDisconnectedContext;->getClientConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClientConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
.end method

.method public bridge synthetic getReconnector()Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 1

    .line 31
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientDisconnectedContext;->getReconnector()Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;

    move-result-object v0

    return-object v0
.end method

.method public abstract getReconnector()Lcom/hivemq/client/mqtt/mqtt3/lifecycle/Mqtt3ClientReconnector;
.end method
