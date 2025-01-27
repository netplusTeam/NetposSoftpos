.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/Mqtt3Client;
.super Ljava/lang/Object;
.source "Mqtt3Client.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClient;


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
    .locals 1

    .line 40
    new-instance v0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3RxClientViewBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
    .locals 1

    .line 31
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt3/Mqtt3Client;->getConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConfig()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientConfig;
.end method

.method public abstract toAsync()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3AsyncClient;
.end method

.method public abstract toBlocking()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient;
.end method

.method public abstract toRx()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3RxClient;
.end method
