.class public Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.source "MqttClientTransportConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "transportConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    .line 293
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 294
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<",
            "*>;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    .local p1, "builder":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder<*>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V

    .line 301
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 302
    return-void
.end method


# virtual methods
.method public applyTransportConfig()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;->buildTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic localAddress(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic localAddress(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic localAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic localPort(I)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->localPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic mqttConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->mqttConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic proxyConfig(Lcom/hivemq/client/mqtt/MqttProxyConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig(Lcom/hivemq/client/mqtt/MqttProxyConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic proxyConfig()Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder$Nested;
    .locals 1

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->proxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;
    .locals 1

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverAddress(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverHost(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverPort(I)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->serverPort(I)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic socketConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->socketConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslConfig()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;
    .locals 1

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 1

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object v0
.end method

.method public bridge synthetic webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 0

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig(Lcom/hivemq/client/mqtt/MqttWebSocketConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic webSocketConfig()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;
    .locals 1

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;
    .locals 1

    .line 283
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->webSocketWithDefaultConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilderBase;

    return-object v0
.end method
