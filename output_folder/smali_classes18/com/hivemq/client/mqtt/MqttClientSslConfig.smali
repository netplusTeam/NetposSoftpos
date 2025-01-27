.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientSslConfig;
.super Ljava/lang/Object;
.source "MqttClientSslConfig.java"


# static fields
.field public static final DEFAULT_HANDSHAKE_TIMEOUT_MS:J = 0x2710L


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder;
    .locals 1

    .line 51
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder;
.end method

.method public abstract getCipherSuites()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getHandshakeTimeoutMs()J
.end method

.method public abstract getHostnameVerifier()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/net/ssl/HostnameVerifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyManagerFactory()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/net/ssl/KeyManagerFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProtocols()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTrustManagerFactory()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/net/ssl/TrustManagerFactory;",
            ">;"
        }
    .end annotation
.end method
