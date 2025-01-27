.class public abstract Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
.super Ljava/lang/Object;
.source "MqttClientSslConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handshakeTimeoutMs:I

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->handshakeTimeoutMs:I

    .line 42
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)V
    .locals 2
    .param p1, "sslConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->handshakeTimeoutMs:I

    .line 42
    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 49
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 50
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawCipherSuites()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 51
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawProtocols()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 52
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getHandshakeTimeoutMs()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->handshakeTimeoutMs:I

    .line 53
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    .locals 8

    .line 93
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    new-instance v7, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget v5, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->handshakeTimeoutMs:I

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;-><init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjavax/net/ssl/HostnameVerifier;)V

    return-object v7
.end method

.method public cipherSuites(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    .local p1, "cipherSuites":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Cipher suites"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->copyOf(Ljava/util/Collection;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 71
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
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

    .line 80
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x7fffffff

    const-string v7, "Handshake timeout in milliseconds"

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/util/Checks;->range(JJJLjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->handshakeTimeoutMs:I

    .line 83
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")TB;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    if-nez p1, :cond_0

    sget-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 89
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .locals 1
    .param p1, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/KeyManagerFactory;",
            ")TB;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 61
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public protocols(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    .local p1, "protocols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Protocols"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->copyOf(Ljava/util/Collection;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 76
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public trustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;
    .locals 1
    .param p1, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/TrustManagerFactory;",
            ")TB;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder<TB;>;"
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 66
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method
