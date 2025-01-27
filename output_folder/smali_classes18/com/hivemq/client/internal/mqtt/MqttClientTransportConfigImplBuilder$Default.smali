.class public Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.source "MqttClientTransportConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V
    .locals 0
    .param p1, "transportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 269
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    .line 270
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;->buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;->build()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic localAddress(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic localAddress(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic localAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic localPort(I)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic mqttConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic proxyConfig(Lcom/hivemq/client/mqtt/MqttProxyConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig(Lcom/hivemq/client/mqtt/MqttProxyConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic proxyConfig()Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder$Nested;
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;
    .locals 0

    .line 274
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic socketConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslConfig()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object v0
.end method

.method public bridge synthetic webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic webSocketConfig()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object v0
.end method
