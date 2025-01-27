.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
.super Ljava/lang/Object;
.source "Mqtt5ClientReconnector.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;


# virtual methods
.method public abstract connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
.end method

.method public abstract connectWith()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 40
    invoke-interface {p0, p1, p2, p3}, Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;->delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public abstract delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
.end method

.method public abstract getConnect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;
.end method

.method public bridge synthetic reconnect(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 40
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;->reconnect(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public abstract reconnect(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
.end method

.method public bridge synthetic reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 40
    invoke-interface {p0, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;->reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public abstract reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;"
        }
    .end annotation
.end method

.method public bridge synthetic republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 40
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;->republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public abstract republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
.end method

.method public bridge synthetic resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 40
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;->resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public abstract resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
.end method

.method public abstract transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .locals 0

    .line 40
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;->transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;

    move-result-object p1

    return-object p1
.end method

.method public abstract transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/mqtt5/lifecycle/Mqtt5ClientReconnector;
.end method
