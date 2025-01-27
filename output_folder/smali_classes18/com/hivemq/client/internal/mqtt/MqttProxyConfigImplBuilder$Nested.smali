.class public Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
.source "MqttProxyConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/MqttProxyConfigBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "proxyConfig"    # Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;)V

    .line 169
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 170
    return-void
.end method


# virtual methods
.method public bridge synthetic address(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->address(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public applyProxyConfig()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic host(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic host(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->host(Ljava/net/InetAddress;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic password(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->password(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic port(I)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->port(I)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic protocol(Lcom/hivemq/client/mqtt/MqttProxyProtocol;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->protocol(Lcom/hivemq/client/mqtt/MqttProxyProtocol;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;
    .locals 1

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .locals 0

    .line 159
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;->username(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;

    return-object p1
.end method
