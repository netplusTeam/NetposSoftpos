.class public interface abstract Lcom/hivemq/client/mqtt/MqttProxyConfig;
.super Ljava/lang/Object;
.source "MqttProxyConfig.java"


# static fields
.field public static final DEFAULT_HANDSHAKE_TIMEOUT_MS:I = 0x2710

.field public static final DEFAULT_HTTP_PROXY_PORT:I = 0x50

.field public static final DEFAULT_PROXY_HOST:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_PROXY_PROTOCOL:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

.field public static final DEFAULT_SOCKS_PROXY_PORT:I = 0x438


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/hivemq/client/mqtt/MqttProxyProtocol;->SOCKS_5:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    sput-object v0, Lcom/hivemq/client/mqtt/MqttProxyConfig;->DEFAULT_PROXY_PROTOCOL:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    return-void
.end method

.method public static builder()Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder;
    .locals 1

    .line 62
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder;
.end method

.method public abstract getAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getHandshakeTimeoutMs()I
.end method

.method public abstract getPassword()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProtocol()Lcom/hivemq/client/mqtt/MqttProxyProtocol;
.end method

.method public abstract getUsername()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
