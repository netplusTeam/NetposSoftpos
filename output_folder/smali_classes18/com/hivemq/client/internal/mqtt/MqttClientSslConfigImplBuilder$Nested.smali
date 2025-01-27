.class public Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
.source "MqttClientSslConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "sslConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)V

    .line 121
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 122
    return-void
.end method


# virtual methods
.method public applySslConfig()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cipherSuites(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->cipherSuites(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic keyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->keyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic protocols(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->protocols(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .locals 1

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .locals 0

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->trustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;

    return-object p1
.end method
