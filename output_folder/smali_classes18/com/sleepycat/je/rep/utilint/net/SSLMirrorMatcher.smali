.class Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;
.super Ljava/lang/Object;
.source "SSLMirrorMatcher.java"


# instance fields
.field private final logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

.field private final ourPrincipal:Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;Z)V
    .locals 2
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .param p2, "clientMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->determinePrincipal(Lcom/sleepycat/je/rep/net/InstanceContext;Z)Ljava/security/Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->ourPrincipal:Ljava/security/Principal;

    .line 60
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getLoggerFactory()Lcom/sleepycat/je/rep/net/LoggerFactory;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/net/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/sleepycat/je/rep/net/InstanceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    .line 66
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to determine a local principal for comparison with peer principals"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private determinePrincipal(Lcom/sleepycat/je/rep/net/InstanceContext;Z)Ljava/security/Principal;
    .locals 8
    .param p1, "context"    # Lcom/sleepycat/je/rep/net/InstanceContext;
    .param p2, "clientMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 112
    nop

    .line 113
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 119
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLClientKeyAlias()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLServerKeyAlias()Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 123
    .local v1, "aliasProp":Ljava/lang/String;
    invoke-static {p1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->readKeyStore(Lcom/sleepycat/je/rep/net/InstanceContext;)Ljava/security/KeyStore;

    move-result-object v2

    .line 125
    .local v2, "keyStore":Ljava/security/KeyStore;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/security/KeyStore;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 130
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "KeyStore is empty"

    invoke-interface {v3, v4, v5}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 131
    const/4 v3, 0x0

    return-object v3

    .line 132
    :cond_2
    invoke-virtual {v2}, Ljava/security/KeyStore;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 133
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "KeyStore has multiple entries but no alias was specified.  Using the first one available."

    invoke-interface {v3, v4, v5}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 137
    :cond_3
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .line 138
    .local v3, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v4

    .line 142
    .end local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    nop

    .line 145
    :cond_4
    const/4 v3, 0x0

    .line 147
    .local v3, "cert":Ljava/security/cert/Certificate;
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 153
    nop

    .line 155
    if-eqz v3, :cond_6

    .line 162
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_5

    .line 169
    move-object v4, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 170
    .local v4, "x509Cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    return-object v5

    .line 163
    .end local v4    # "x509Cert":Ljava/security/cert/X509Certificate;
    :cond_5
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The certificate for alias "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not an X509Certificate."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unable to find a valid certificate in the keystore"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_6
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No certificate for alias "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found in KeyStore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 158
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unable to find a certificate in the keystore"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :catch_0
    move-exception v4

    .line 150
    .local v4, "kse":Ljava/security/KeyStoreException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error accessing certificate with alias "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from the keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 139
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "kse":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v3

    .line 140
    .local v3, "kse":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error accessing aliases from the keystore"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public peerMatches(Ljavax/net/ssl/SSLSession;)Z
    .locals 6
    .param p1, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .line 76
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->ourPrincipal:Ljava/security/Principal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    return v1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 86
    .local v0, "peerPrincipal":Ljava/security/Principal;
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 89
    nop

    .line 91
    if-eqz v0, :cond_2

    instance-of v2, v0, Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->ourPrincipal:Ljava/security/Principal;

    invoke-interface {v1, v0}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 93
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to attempt peer validation - peer Principal is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 97
    return v1

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    return v1
.end method
