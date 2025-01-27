.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
.super Ljava/lang/Object;
.source "MqttClientTransportConfig.java"


# static fields
.field public static final DEFAULT_MQTT_CONNECT_TIMEOUT_MS:I = 0xea60

.field public static final DEFAULT_SOCKET_CONNECT_TIMEOUT_MS:I = 0x2710


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder;
    .locals 1

    .line 54
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder;
.end method

.method public abstract getLocalAddress()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMqttConnectTimeoutMs()I
.end method

.method public abstract getProxyConfig()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/MqttProxyConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getSocketConnectTimeoutMs()I
.end method

.method public abstract getSslConfig()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWebSocketConfig()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfig;",
            ">;"
        }
    .end annotation
.end method
