.class public Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
.source "MqttProxyConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;)V
    .locals 0
    .param p1, "proxyConfig"    # Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    .line 150
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;)V

    .line 151
    return-void
.end method


# virtual methods
.method public bridge synthetic address(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/MqttProxyConfig;
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->build()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic host(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic host(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic password(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->password(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic port(I)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->port(I)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic protocol(Lcom/hivemq/client/mqtt/MqttProxyProtocol;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol(Lcom/hivemq/client/mqtt/MqttProxyProtocol;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;
    .locals 0

    .line 155
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->username(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method
