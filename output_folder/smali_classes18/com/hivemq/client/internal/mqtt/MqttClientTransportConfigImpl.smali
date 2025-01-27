.class public Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
.super Ljava/lang/Object;
.source "MqttClientTransportConfigImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientTransportConfig;


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# instance fields
.field private final localAddress:Ljava/net/InetSocketAddress;

.field private final mqttConnectTimeoutMs:I

.field private final proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

.field private final serverAddress:Ljava/net/InetSocketAddress;

.field private final socketConnectTimeoutMs:I

.field private final sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

.field private final webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v8, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 34
    const-string v0, "localhost"

    const/16 v1, 0x75b

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/InetSocketAddressUtil;->create(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x2710

    const v7, 0xea60

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;II)V

    sput-object v8, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;II)V
    .locals 0
    .param p1, "serverAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "localAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "sslConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .param p4, "webSocketConfig"    # Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    .param p5, "proxyConfig"    # Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    .param p6, "socketConnectTimeoutMs"    # I
    .param p7, "mqttConnectTimeoutMs"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    .line 55
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 56
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 57
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 58
    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 59
    iput p6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    .line 60
    iput p7, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 126
    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 129
    return v2

    .line 131
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    .line 133
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 134
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 133
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;
    .locals 1

    .line 120
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->extend()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMqttConnectTimeoutMs()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    return v0
.end method

.method public getProxyConfig()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/MqttProxyConfig;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRawLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getRawProxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    return-object v0
.end method

.method public getRawSslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    return-object v0
.end method

.method public getRawWebSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getServerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSocketConnectTimeoutMs()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

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

    .line 83
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
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

    .line 92
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v0

    .line 143
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->sslConfig:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 145
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->webSocketConfig:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 146
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->proxyConfig:Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 147
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->socketConnectTimeoutMs:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 148
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->mqttConnectTimeoutMs:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 149
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
