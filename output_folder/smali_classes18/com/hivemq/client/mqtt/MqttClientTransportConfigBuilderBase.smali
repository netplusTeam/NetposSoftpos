.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
.super Ljava/lang/Object;
.source "MqttClientTransportConfigBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract localAddress(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract localAddress(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract localAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract localPort(I)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract mqttConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract proxyConfig(Lcom/hivemq/client/mqtt/MqttProxyConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttProxyConfig;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract proxyConfig()Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverPort(I)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract socketConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract sslConfig()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfig;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfig;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract webSocketConfig()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
