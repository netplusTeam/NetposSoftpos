.class public abstract Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.super Ljava/lang/Object;
.source "MqttClientTransportConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private localAddress:Ljava/net/InetSocketAddress;

.field private mqttConnectTimeoutMs:I

.field private proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

.field private serverAddress:Ljava/net/InetSocketAddress;

.field private serverHost:Ljava/lang/Object;

.field private serverPort:I

.field private socketConnectTimeoutMs:I

.field private sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

.field private webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    .line 47
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    .line 48
    const v0, 0xea60

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V
    .locals 1
    .param p1, "transportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    .line 47
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    .line 48
    const v0, 0xea60

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    .line 53
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->set(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    .local p1, "builder":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    .line 47
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    .line 48
    const v0, 0xea60

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    .line 57
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    .line 58
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    .line 59
    iget v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    .line 60
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    .line 61
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 62
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 63
    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 64
    iget v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    .line 65
    iget v0, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    .line 66
    return-void
.end method

.method private checkLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .line 145
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-object p1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local bind address must not be unresolved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLocalPort()I
    .locals 1

    .line 162
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getServerAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 233
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 234
    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    instance-of v1, v0, Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    .line 237
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getServerPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0

    .line 239
    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getServerPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/InetSocketAddressUtil;->create(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method private getServerPort()I
    .locals 2

    .line 243
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 244
    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    if-nez v0, :cond_1

    .line 248
    const/16 v0, 0x75b

    return v0

    .line 250
    :cond_1
    const/16 v0, 0x50

    return v0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    if-nez v0, :cond_3

    .line 253
    const/16 v0, 0x22b3

    return v0

    .line 255
    :cond_3
    const/16 v0, 0x1bb

    return v0
.end method

.method private removeLocalAddress()V
    .locals 2

    .line 152
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    .line 159
    :cond_1
    :goto_0
    return-void
.end method

.method private setServerHost(Ljava/lang/Object;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/Object;

    .line 96
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 9

    .line 259
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    new-instance v8, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    iget v6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    iget v7, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;II)V

    return-object v8
.end method

.method public localAddress(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    if-nez p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->removeLocalAddress()V

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getLocalPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->checkLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public localAddress(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    if-nez p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->removeLocalAddress()V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->getLocalPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public localAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->checkLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public localPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    goto :goto_1

    .line 171
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    goto :goto_1

    .line 175
    :cond_1
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    .line 177
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public mqttConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x7fffffff

    const-string v7, "MQTT connect timeout in milliseconds"

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/util/Checks;->range(JJJLjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    .line 229
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public proxyConfig(Lcom/hivemq/client/mqtt/MqttProxyConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 2
    .param p1, "proxyConfig"    # Lcom/hivemq/client/mqtt/MqttProxyConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttProxyConfig;",
            ")TB;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    const-string v1, "Proxy config"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 211
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public proxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-string v0, "Server address"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    .line 82
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-string v0, "Server host"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->setServerHost(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-string v0, "Server host"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->setServerHost(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-string v0, "Server port"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShort(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort:I

    .line 105
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 107
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 108
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost:Ljava/lang/Object;

    .line 112
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    .line 114
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method set(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V
    .locals 1
    .param p1, "transportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 69
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress:Ljava/net/InetSocketAddress;

    .line 70
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress:Ljava/net/InetSocketAddress;

    .line 71
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawSslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 72
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawWebSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 73
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawProxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 74
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getSocketConnectTimeoutMs()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    .line 75
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getMqttConnectTimeoutMs()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeoutMs:I

    .line 76
    return-void
.end method

.method public socketConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x7fffffff

    const-string v7, "Socket connect timeout in milliseconds"

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/util/Checks;->range(JJJLjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeoutMs:I

    .line 222
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 2
    .param p1, "sslConfig"    # Lcom/hivemq/client/mqtt/MqttClientSslConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttClientSslConfig;",
            ")TB;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    const-string v1, "SSL config"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 187
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 182
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 2
    .param p1, "webSocketConfig"    # Lcom/hivemq/client/mqtt/MqttWebSocketConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttWebSocketConfig;",
            ")TB;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    const-class v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 201
    const-string v1, "WebSocket config"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 202
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public webSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<TB;>;"
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 196
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method
