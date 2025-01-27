.class public Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
.super Ljava/lang/Object;
.source "MqttClientSslConfigImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientSslConfig;


# static fields
.field static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

.field static final DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private final cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handshakeTimeoutMs:I

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private final protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    :try_start_0
    new-instance v1, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v1}, Ljavax/net/ssl/SSLParameters;-><init>()V

    const-string v2, "HTTPS"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    move-object v8, v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    move-object v8, v0

    .line 44
    .end local v0    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    .local v8, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    :goto_0
    sput-object v8, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    .end local v8    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x2710

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;-><init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjavax/net/ssl/HostnameVerifier;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p5, "handshakeTimeoutMs"    # I
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")V"
        }
    .end annotation

    .line 64
    .local p3, "cipherSuites":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Ljava/lang/String;>;"
    .local p4, "protocols":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 67
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 68
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 69
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 70
    iput p5, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    .line 71
    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 132
    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 135
    return v2

    .line 137
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    .line 139
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 140
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 143
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 139
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;
    .locals 1

    .line 126
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->extend()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getCipherSuites()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeTimeoutMs()J
    .locals 2

    .line 112
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHostnameVerifier()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/net/ssl/HostnameVerifier;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getKeyManagerFactory()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/net/ssl/KeyManagerFactory;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getProtocols()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRawCipherSuites()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public getRawHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getRawKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    return-object v0
.end method

.method public getRawProtocols()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public getRawTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    return-object v0
.end method

.method public getTrustManagerFactory()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/net/ssl/TrustManagerFactory;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 149
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 152
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 153
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
