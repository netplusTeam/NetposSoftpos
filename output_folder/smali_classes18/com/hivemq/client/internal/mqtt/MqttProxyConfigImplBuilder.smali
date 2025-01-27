.class public abstract Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
.super Ljava/lang/Object;
.source "MqttProxyConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private handshakeTimeoutMs:I

.field private host:Ljava/lang/Object;

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

.field private username:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->DEFAULT_PROXY_PROTOCOL:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    .line 38
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host:Ljava/lang/Object;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->port:I

    .line 42
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->handshakeTimeoutMs:I

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;)V
    .locals 1
    .param p1, "proxyConfig"    # Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->DEFAULT_PROXY_PROTOCOL:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    .line 38
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host:Ljava/lang/Object;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->port:I

    .line 42
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->handshakeTimeoutMs:I

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getProtocol()Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    .line 49
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    .line 50
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getRawUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->username:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getRawPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->password:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;->getHandshakeTimeoutMs()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->handshakeTimeoutMs:I

    .line 54
    :cond_0
    return-void
.end method

.method private getAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 118
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host:Ljava/lang/Object;

    instance-of v1, v0, Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    .line 122
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0

    .line 124
    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/InetSocketAddressUtil;->create(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method private getPort()I
    .locals 2

    .line 128
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$1;->$SwitchMap$com$hivemq$client$mqtt$MqttProxyProtocol:[I

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/MqttProxyProtocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    const/16 v0, 0x50

    return v0

    .line 134
    :pswitch_0
    const/16 v0, 0x438

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setProxyHost(Ljava/lang/Object;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/Object;

    .line 79
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host:Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->port:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public address(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    const-string v0, "Proxy address"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    .line 65
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    .locals 7

    .line 142
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    new-instance v6, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->password:Ljava/lang/String;

    iget v5, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->handshakeTimeoutMs:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;-><init>(Lcom/hivemq/client/mqtt/MqttProxyProtocol;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
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

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x7fffffff

    const-string v7, "Handshake timeout in milliseconds"

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/util/Checks;->range(JJJLjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->handshakeTimeoutMs:I

    .line 114
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public host(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->setProxyHost(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public host(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->setProxyHost(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public password(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->password:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public port(I)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    const-string v0, "Proxy port"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShort(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->port:I

    .line 88
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 90
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 91
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host:Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host:Ljava/lang/Object;

    .line 95
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address:Ljava/net/InetSocketAddress;

    .line 97
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public protocol(Lcom/hivemq/client/mqtt/MqttProxyProtocol;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1
    .param p1, "protocol"    # Lcom/hivemq/client/mqtt/MqttProxyProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttProxyProtocol;",
            ")TB;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    const-string v0, "Proxy protocol"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol:Lcom/hivemq/client/mqtt/MqttProxyProtocol;

    .line 60
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public username(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->username:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method
