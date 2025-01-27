.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientConfig;
.super Ljava/lang/Object;
.source "MqttClientConfig.java"


# virtual methods
.method public abstract getAutomaticReconnect()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClientIdentifier()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectedListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionConfig()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "+",
            "Lcom/hivemq/client/mqtt/MqttClientConnectionConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisconnectedListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExecutorConfig()Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;
.end method

.method public abstract getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;
.end method

.method public getServerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 58
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientConfig;->getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClientTransportConfig;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientConfig;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .line 72
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientConfig;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getSslConfig()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfig;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientConfig;->getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClientTransportConfig;->getSslConfig()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public abstract getState()Lcom/hivemq/client/mqtt/MqttClientState;
.end method

.method public abstract getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
.end method

.method public getWebSocketConfig()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfig;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/MqttClientConfig;->getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClientTransportConfig;->getWebSocketConfig()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
