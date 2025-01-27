.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5Client;
.super Ljava/lang/Object;
.source "Mqtt5Client.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClient;


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
    .locals 1

    .line 40
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 31
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5Client;->getConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConfig()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;
.end method

.method public abstract toAsync()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5AsyncClient;
.end method

.method public abstract toBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
.end method

.method public abstract toRx()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5RxClient;
.end method
