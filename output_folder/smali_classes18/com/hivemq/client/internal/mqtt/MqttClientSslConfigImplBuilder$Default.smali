.class public Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
.source "MqttClientSslConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)V
    .locals 0
    .param p1, "sslConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 102
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)V

    .line 103
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/MqttClientSslConfig;
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->build()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cipherSuites(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->cipherSuites(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic keyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->keyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic protocols(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->protocols(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;
    .locals 0

    .line 107
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->trustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method
