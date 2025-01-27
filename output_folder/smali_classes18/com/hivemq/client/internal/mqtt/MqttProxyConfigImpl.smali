.class public Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
.super Ljava/lang/Object;
.source "MqttProxyConfigImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttProxyConfig;


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private final handshakeTimeoutMs:I

.field private final password:Ljava/lang/String;

.field private final protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

.field private final username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hivemq/client/mqtt/MqttProxyProtocol;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "protocol"    # Lcom/hivemq/client/mqtt/MqttProxyProtocol;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "handshakeTimeoutMs"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    .line 47
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->address:Ljava/net/InetSocketAddress;

    .line 48
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->username:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->password:Ljava/lang/String;

    .line 50
    iput p5, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->handshakeTimeoutMs:I

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 97
    return v2

    .line 99
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 101
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->address:Ljava/net/InetSocketAddress;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->username:Ljava/lang/String;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->username:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->password:Ljava/lang/String;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->password:Ljava/lang/String;

    .line 102
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->handshakeTimeoutMs:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->handshakeTimeoutMs:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 101
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;
    .locals 1

    .line 88
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->extend()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getHandshakeTimeoutMs()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->handshakeTimeoutMs:I

    return v0
.end method

.method public getPassword()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->password:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Lcom/hivemq/client/mqtt/MqttProxyProtocol;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    return-object v0
.end method

.method public getRawPassword()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUsername()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->username:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/MqttProxyProtocol;->hashCode()I

    move-result v0

    .line 108
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 109
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->username:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 110
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->password:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 111
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->handshakeTimeoutMs:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 112
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
