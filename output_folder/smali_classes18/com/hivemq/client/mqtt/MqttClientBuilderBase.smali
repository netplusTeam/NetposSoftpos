.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
.super Ljava/lang/Object;
.source "MqttClientBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addConnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract addDisconnectedListener(Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract automaticReconnect(Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract automaticReconnect()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract automaticReconnectWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract executorConfig()Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttClientExecutorConfigBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public abstract identifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfig;",
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

.method public abstract sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientTransportConfig;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation
.end method

.method public useSsl(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1
    .param p1, "sslConfig"    # Lcom/hivemq/client/mqtt/MqttClientSslConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfig;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    .local p0, "this":Lcom/hivemq/client/mqtt/MqttClientBuilderBase;, "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<TB;>;"
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public useSsl()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    .local p0, "this":Lcom/hivemq/client/mqtt/MqttClientBuilderBase;, "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<TB;>;"
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->sslConfig()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public useSslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    .local p0, "this":Lcom/hivemq/client/mqtt/MqttClientBuilderBase;, "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<TB;>;"
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public useWebSocket(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1
    .param p1, "webSocketConfig"    # Lcom/hivemq/client/mqtt/MqttWebSocketConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfig;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    .local p0, "this":Lcom/hivemq/client/mqtt/MqttClientBuilderBase;, "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<TB;>;"
    invoke-interface {p0, p1}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public useWebSocket()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested<",
            "+TB;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    .local p0, "this":Lcom/hivemq/client/mqtt/MqttClientBuilderBase;, "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<TB;>;"
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->webSocketConfig()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public useWebSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    .local p0, "this":Lcom/hivemq/client/mqtt/MqttClientBuilderBase;, "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<TB;>;"
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
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

.method public abstract webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
