.class public final Lio/netty/handler/ssl/SslContextBuilder;
.super Ljava/lang/Object;
.source "SslContextBuilder.java"


# instance fields
.field private apn:Lio/netty/handler/ssl/ApplicationProtocolConfig;

.field private cipherFilter:Lio/netty/handler/ssl/CipherSuiteFilter;

.field private ciphers:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field private enableOcsp:Z

.field private final forServer:Z

.field private key:Ljava/security/PrivateKey;

.field private keyCertChain:[Ljava/security/cert/X509Certificate;

.field private keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private keyPassword:Ljava/lang/String;

.field private keyStoreType:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private provider:Lio/netty/handler/ssl/SslProvider;

.field private sessionCacheSize:J

.field private sessionTimeout:J

.field private sslContextProvider:Ljava/security/Provider;

.field private startTls:Z

.field private trustCertCollection:[Ljava/security/cert/X509Certificate;

.field private trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method private constructor <init>(Z)V
    .locals 1
    .param p1, "forServer"    # Z

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    sget-object v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->cipherFilter:Lio/netty/handler/ssl/CipherSuiteFilter;

    .line 188
    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 192
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyStoreType:Ljava/lang/String;

    .line 195
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->forServer:Z

    .line 196
    return-void
.end method

.method public static forClient()Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2

    .line 49
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static forServer(Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "keyCertChainFile"    # Ljava/io/File;
    .param p1, "keyFile"    # Ljava/io/File;

    .line 60
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0, p1}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "keyCertChainFile"    # Ljava/io/File;
    .param p1, "keyFile"    # Ljava/io/File;
    .param p2, "keyPassword"    # Ljava/lang/String;

    .line 107
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "keyCertChainInputStream"    # Ljava/io/InputStream;
    .param p1, "keyInputStream"    # Ljava/io/InputStream;

    .line 71
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0, p1}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "keyCertChainInputStream"    # Ljava/io/InputStream;
    .param p1, "keyInputStream"    # Ljava/io/InputStream;
    .param p2, "keyPassword"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljava/security/PrivateKey;Ljava/lang/Iterable;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 93
    .local p1, "keyCertChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Lio/netty/handler/ssl/SslContextBuilder;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "keyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 149
    .local p2, "keyCertChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    invoke-static {p2, v0}, Lio/netty/handler/ssl/SslContextBuilder;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-static {p0, p1, v0}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forServer(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "keyPassword"    # Ljava/lang/String;
    .param p2, "keyCertChain"    # [Ljava/security/cert/X509Certificate;

    .line 135
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forServer(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "keyCertChain"    # [Ljava/security/cert/X509Certificate;

    .line 82
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0, p1}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljavax/net/ssl/KeyManager;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "keyManager"    # Ljavax/net/ssl/KeyManager;

    .line 171
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljavax/net/ssl/KeyManager;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forServer(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p0, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;

    .line 162
    new-instance v0, Lio/netty/handler/ssl/SslContextBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/SslContextBuilder;-><init>(Z)V

    invoke-virtual {v0, p0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 583
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "prototype":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 584
    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 588
    .local v2, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    .end local v2    # "element":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 590
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applicationProtocolConfig(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;

    .line 495
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->apn:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    .line 496
    return-object p0
.end method

.method public build()Lio/netty/handler/ssl/SslContext;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 570
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->forServer:Z

    if-eqz v1, :cond_0

    .line 571
    iget-object v2, v0, Lio/netty/handler/ssl/SslContextBuilder;->provider:Lio/netty/handler/ssl/SslProvider;

    iget-object v3, v0, Lio/netty/handler/ssl/SslContextBuilder;->sslContextProvider:Ljava/security/Provider;

    iget-object v4, v0, Lio/netty/handler/ssl/SslContextBuilder;->trustCertCollection:[Ljava/security/cert/X509Certificate;

    iget-object v5, v0, Lio/netty/handler/ssl/SslContextBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v6, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyCertChain:[Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Lio/netty/handler/ssl/SslContextBuilder;->key:Ljava/security/PrivateKey;

    iget-object v8, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyPassword:Ljava/lang/String;

    iget-object v9, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v10, v0, Lio/netty/handler/ssl/SslContextBuilder;->ciphers:Ljava/lang/Iterable;

    iget-object v11, v0, Lio/netty/handler/ssl/SslContextBuilder;->cipherFilter:Lio/netty/handler/ssl/CipherSuiteFilter;

    iget-object v12, v0, Lio/netty/handler/ssl/SslContextBuilder;->apn:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    iget-wide v13, v0, Lio/netty/handler/ssl/SslContextBuilder;->sessionCacheSize:J

    move-object/from16 v22, v2

    iget-wide v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->sessionTimeout:J

    move-wide v15, v1

    iget-object v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    move-object/from16 v17, v1

    iget-object v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->protocols:[Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->startTls:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->enableOcsp:Z

    move/from16 v20, v1

    iget-object v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyStoreType:Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v2, v22

    invoke-static/range {v2 .. v21}, Lio/netty/handler/ssl/SslContext;->newServerContextInternal(Lio/netty/handler/ssl/SslProvider;Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;)Lio/netty/handler/ssl/SslContext;

    move-result-object v1

    return-object v1

    .line 576
    :cond_0
    iget-object v2, v0, Lio/netty/handler/ssl/SslContextBuilder;->provider:Lio/netty/handler/ssl/SslProvider;

    iget-object v3, v0, Lio/netty/handler/ssl/SslContextBuilder;->sslContextProvider:Ljava/security/Provider;

    iget-object v4, v0, Lio/netty/handler/ssl/SslContextBuilder;->trustCertCollection:[Ljava/security/cert/X509Certificate;

    iget-object v5, v0, Lio/netty/handler/ssl/SslContextBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v6, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyCertChain:[Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Lio/netty/handler/ssl/SslContextBuilder;->key:Ljava/security/PrivateKey;

    iget-object v8, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyPassword:Ljava/lang/String;

    iget-object v9, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v10, v0, Lio/netty/handler/ssl/SslContextBuilder;->ciphers:Ljava/lang/Iterable;

    iget-object v11, v0, Lio/netty/handler/ssl/SslContextBuilder;->cipherFilter:Lio/netty/handler/ssl/CipherSuiteFilter;

    iget-object v12, v0, Lio/netty/handler/ssl/SslContextBuilder;->apn:Lio/netty/handler/ssl/ApplicationProtocolConfig;

    iget-object v13, v0, Lio/netty/handler/ssl/SslContextBuilder;->protocols:[Ljava/lang/String;

    iget-wide v14, v0, Lio/netty/handler/ssl/SslContextBuilder;->sessionCacheSize:J

    move-object/from16 v20, v2

    iget-wide v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->sessionTimeout:J

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->enableOcsp:Z

    move/from16 v18, v1

    iget-object v1, v0, Lio/netty/handler/ssl/SslContextBuilder;->keyStoreType:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v2, v20

    invoke-static/range {v2 .. v19}, Lio/netty/handler/ssl/SslContext;->newClientContextInternal(Lio/netty/handler/ssl/SslProvider;Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;)Lio/netty/handler/ssl/SslContext;

    move-result-object v1

    return-object v1
.end method

.method public ciphers(Ljava/lang/Iterable;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 477
    .local p1, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    sget-object v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/SslContextBuilder;->ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p2, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            ")",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 486
    .local p1, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-string v0, "cipherFilter"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/CipherSuiteFilter;

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->cipherFilter:Lio/netty/handler/ssl/CipherSuiteFilter;

    .line 487
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->ciphers:Ljava/lang/Iterable;

    .line 488
    return-object p0
.end method

.method public clientAuth(Lio/netty/handler/ssl/ClientAuth;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;

    .line 521
    const-string v0, "clientAuth"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ClientAuth;

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 522
    return-object p0
.end method

.method public enableOcsp(Z)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "enableOcsp"    # Z

    .line 560
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->enableOcsp:Z

    .line 561
    return-object p0
.end method

.method public keyManager(Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "keyCertChainFile"    # Ljava/io/File;
    .param p2, "keyFile"    # Ljava/io/File;

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 5
    .param p1, "keyCertChainFile"    # Ljava/io/File;
    .param p2, "keyFile"    # Ljava/io/File;
    .param p3, "keyPassword"    # Ljava/lang/String;

    .line 343
    :try_start_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslContext;->toX509Certificates(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    .local v0, "keyCertChain":[Ljava/security/cert/X509Certificate;
    nop

    .line 348
    :try_start_1
    invoke-static {p2, p3}, Lio/netty/handler/ssl/SslContext;->toPrivateKey(Ljava/io/File;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    .local v1, "key":Ljava/security/PrivateKey;
    nop

    .line 352
    invoke-virtual {p0, v1, p3, v0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v2

    return-object v2

    .line 349
    .end local v1    # "key":Ljava/security/PrivateKey;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not contain valid private key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 344
    .end local v0    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not contain valid certificates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keyManager(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "keyCertChainInputStream"    # Ljava/io/InputStream;
    .param p2, "keyInputStream"    # Ljava/io/InputStream;

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 4
    .param p1, "keyCertChainInputStream"    # Ljava/io/InputStream;
    .param p2, "keyInputStream"    # Ljava/io/InputStream;
    .param p3, "keyPassword"    # Ljava/lang/String;

    .line 369
    :try_start_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslContext;->toX509Certificates(Ljava/io/InputStream;)[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    .local v0, "keyCertChain":[Ljava/security/cert/X509Certificate;
    nop

    .line 374
    :try_start_1
    invoke-static {p2, p3}, Lio/netty/handler/ssl/SslContext;->toPrivateKey(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    .local v1, "key":Ljava/security/PrivateKey;
    nop

    .line 378
    invoke-virtual {p0, v1, p3, v0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v2

    return-object v2

    .line 375
    .end local v1    # "key":Ljava/security/PrivateKey;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Input stream does not contain valid private key."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 370
    .end local v0    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input stream not contain valid certificates."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keyManager(Ljava/security/PrivateKey;Ljava/lang/Iterable;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 327
    .local p2, "keyCertChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    invoke-static {p2, v0}, Lio/netty/handler/ssl/SslContextBuilder;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "keyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 425
    .local p3, "keyCertChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    invoke-static {p3, v0}, Lio/netty/handler/ssl/SslContextBuilder;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs keyManager(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "keyPassword"    # Ljava/lang/String;
    .param p3, "keyCertChain"    # [Ljava/security/cert/X509Certificate;

    .line 391
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->forServer:Z

    if-eqz v0, :cond_1

    .line 392
    const-string v0, "keyCertChain required for servers"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 393
    array-length v0, p3

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "key required for servers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCertChain must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    array-length v1, p3

    if-nez v1, :cond_2

    goto :goto_2

    .line 401
    :cond_2
    array-length v1, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p3, v2

    .line 402
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_3

    .line 401
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 403
    .restart local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCertChain contains null entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4
    invoke-virtual {p3}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyCertChain:[Ljava/security/cert/X509Certificate;

    goto :goto_3

    .line 399
    :cond_5
    :goto_2
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyCertChain:[Ljava/security/cert/X509Certificate;

    .line 408
    :goto_3
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->key:Ljava/security/PrivateKey;

    .line 409
    iput-object p2, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyPassword:Ljava/lang/String;

    .line 410
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 411
    return-object p0
.end method

.method public varargs keyManager(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "keyCertChain"    # [Ljava/security/cert/X509Certificate;

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljava/security/PrivateKey;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keyManager(Ljavax/net/ssl/KeyManager;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p1, "keyManager"    # Ljavax/net/ssl/KeyManager;

    .line 458
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->forServer:Z

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "keyManager required for servers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 462
    new-instance v1, Lio/netty/handler/ssl/KeyManagerFactoryWrapper;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/KeyManagerFactoryWrapper;-><init>(Ljavax/net/ssl/KeyManager;)V

    iput-object v1, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    goto :goto_0

    .line 464
    :cond_1
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 466
    :goto_0
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyCertChain:[Ljava/security/cert/X509Certificate;

    .line 467
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->key:Ljava/security/PrivateKey;

    .line 468
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyPassword:Ljava/lang/String;

    .line 469
    return-object p0
.end method

.method public keyManager(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;

    .line 440
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->forServer:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "keyManagerFactory required for servers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyCertChain:[Ljava/security/cert/X509Certificate;

    .line 444
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->key:Ljava/security/PrivateKey;

    .line 445
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyPassword:Ljava/lang/String;

    .line 446
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    .line 447
    return-object p0
.end method

.method public keyStoreType(Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "keyStoreType"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->keyStoreType:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public protocols(Ljava/lang/Iterable;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 541
    .local p1, "protocols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-static {p1, v0}, Lio/netty/handler/ssl/SslContextBuilder;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslContextBuilder;->protocols([Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs protocols([Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 531
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->protocols:[Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public sessionCacheSize(J)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "sessionCacheSize"    # J

    .line 504
    iput-wide p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->sessionCacheSize:J

    .line 505
    return-object p0
.end method

.method public sessionTimeout(J)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "sessionTimeout"    # J

    .line 513
    iput-wide p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->sessionTimeout:J

    .line 514
    return-object p0
.end method

.method public sslContextProvider(Ljava/security/Provider;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "sslContextProvider"    # Ljava/security/Provider;

    .line 219
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->sslContextProvider:Ljava/security/Provider;

    .line 220
    return-object p0
.end method

.method public sslProvider(Lio/netty/handler/ssl/SslProvider;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "provider"    # Lio/netty/handler/ssl/SslProvider;

    .line 202
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->provider:Lio/netty/handler/ssl/SslProvider;

    .line 203
    return-object p0
.end method

.method public startTls(Z)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 0
    .param p1, "startTls"    # Z

    .line 548
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->startTls:Z

    .line 549
    return-object p0
.end method

.method public trustManager(Ljava/io/File;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 4
    .param p1, "trustCertCollectionFile"    # Ljava/io/File;

    .line 229
    :try_start_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslContext;->toX509Certificates(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager([Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not contain valid certificates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public trustManager(Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 3
    .param p1, "trustCertCollectionInputStream"    # Ljava/io/InputStream;

    .line 242
    :try_start_0
    invoke-static {p1}, Lio/netty/handler/ssl/SslContext;->toX509Certificates(Ljava/io/InputStream;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager([Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input stream does not contain valid certificates."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public trustManager(Ljava/lang/Iterable;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lio/netty/handler/ssl/SslContextBuilder;"
        }
    .end annotation

    .line 261
    .local p1, "trustCertCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Lio/netty/handler/ssl/SslContextBuilder;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager([Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public trustManager(Ljavax/net/ssl/TrustManager;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "trustManager"    # Ljavax/net/ssl/TrustManager;

    .line 281
    new-instance v0, Lio/netty/handler/ssl/TrustManagerFactoryWrapper;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/TrustManagerFactoryWrapper;-><init>(Ljavax/net/ssl/TrustManager;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->trustCertCollection:[Ljava/security/cert/X509Certificate;

    .line 283
    return-object p0
.end method

.method public trustManager(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 1
    .param p1, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->trustCertCollection:[Ljava/security/cert/X509Certificate;

    .line 269
    iput-object p1, p0, Lio/netty/handler/ssl/SslContextBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 270
    return-object p0
.end method

.method public varargs trustManager([Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;
    .locals 2
    .param p1, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;

    .line 252
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lio/netty/handler/ssl/SslContextBuilder;->trustCertCollection:[Ljava/security/cert/X509Certificate;

    .line 253
    iput-object v0, p0, Lio/netty/handler/ssl/SslContextBuilder;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    .line 254
    return-object p0
.end method
