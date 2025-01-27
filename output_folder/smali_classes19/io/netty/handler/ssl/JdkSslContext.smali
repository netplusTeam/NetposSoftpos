.class public Lio/netty/handler/ssl/JdkSslContext;
.super Lio/netty/handler/ssl/SslContext;
.source "JdkSslContext.java"


# static fields
.field private static final DEFAULT_CIPHERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CIPHERS_NON_TLSV13:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:[Ljava/lang/String;

.field private static final DEFAULT_PROVIDER:Ljava/security/Provider;

.field static final PROTOCOL:Ljava/lang/String; = "TLS"

.field private static final SUPPORTED_CIPHERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CIPHERS_NON_TLSV13:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

.field private final cipherSuites:[Ljava/lang/String;

.field private final clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field private final isClient:Z

.field private final protocols:[Ljava/lang/String;

.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final unmodifiableCipherSuites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 60
    const-class v0, Lio/netty/handler/ssl/JdkSslContext;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/JdkSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 73
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 74
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 79
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROVIDER:Ljava/security/Provider;

    .line 81
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .line 82
    .local v2, "engine":Ljavax/net/ssl/SSLEngine;
    invoke-static {v1, v2}, Lio/netty/handler/ssl/JdkSslContext;->defaultProtocols(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    .line 84
    invoke-static {v2}, Lio/netty/handler/ssl/JdkSslContext;->supportedCiphers(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS:Ljava/util/Set;

    .line 85
    invoke-static {v2, v4}, Lio/netty/handler/ssl/JdkSslContext;->defaultCiphers(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v6, "ciphersNonTLSv13":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 89
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS_NON_TLSV13:Ljava/util/List;

    .line 91
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v7

    .line 92
    .local v4, "suppertedCiphersNonTLSv13":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 93
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    sput-object v7, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS_NON_TLSV13:Ljava/util/Set;

    .line 95
    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v7, "Default protocols (JDK): {} "

    invoke-interface {v0, v7, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v3, "Default cipher suites (JDK): {}"

    invoke-interface {v0, v3, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v2    # "engine":Ljavax/net/ssl/SSLEngine;
    .end local v4    # "suppertedCiphersNonTLSv13":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "ciphersNonTLSv13":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "failed to initialize the default SSL context"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZLio/netty/handler/ssl/ClientAuth;)V
    .locals 9
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "isClient"    # Z
    .param p3, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    sget-object v4, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    sget-object v5, Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;->INSTANCE:Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;Lio/netty/handler/ssl/ClientAuth;)V
    .locals 9
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "isClient"    # Z
    .param p4, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p5, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p6, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "Lio/netty/handler/ssl/ClientAuth;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    .local p3, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V
    .locals 10
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "isClient"    # Z
    .param p4, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p5, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p6, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p7, "protocols"    # [Ljava/lang/String;
    .param p8, "startTls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 227
    .local p3, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    nop

    .line 231
    xor-int/lit8 v0, p2, 0x1

    move-object v9, p5

    invoke-static {p5, v0}, Lio/netty/handler/ssl/JdkSslContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;Z)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    move-result-object v5

    if-nez p7, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual/range {p7 .. p7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 227
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V
    .locals 7
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "isClient"    # Z
    .param p4, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p5, "apn"    # Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .param p6, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p7, "protocols"    # [Ljava/lang/String;
    .param p8, "startTls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 240
    .local p3, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0, p8}, Lio/netty/handler/ssl/SslContext;-><init>(Z)V

    .line 241
    const-string v0, "apn"

    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    iput-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    .line 242
    const-string v0, "clientAuth"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/ClientAuth;

    iput-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 243
    const-string v0, "sslContext"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 247
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROVIDER:Ljava/security/Provider;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    if-nez p7, :cond_0

    sget-object v0, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p7

    :goto_0
    iput-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    .line 249
    invoke-static {v0}, Lio/netty/handler/ssl/JdkSslContext;->isTlsV13Supported([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS:Ljava/util/Set;

    .line 251
    .local v0, "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS:Ljava/util/List;

    .local v1, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 254
    .end local v0    # "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext;->SUPPORTED_CIPHERS_NON_TLSV13:Ljava/util/Set;

    .line 255
    .restart local v0    # "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lio/netty/handler/ssl/JdkSslContext;->DEFAULT_CIPHERS_NON_TLSV13:Ljava/util/List;

    .restart local v1    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 261
    .end local v0    # "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 263
    .local v0, "engine":Ljavax/net/ssl/SSLEngine;
    if-nez p7, :cond_3

    .line 264
    :try_start_0
    invoke-static {p1, v0}, Lio/netty/handler/ssl/JdkSslContext;->defaultProtocols(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    goto :goto_1

    .line 266
    :cond_3
    iput-object p7, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    .line 268
    :goto_1
    invoke-static {v0}, Lio/netty/handler/ssl/JdkSslContext;->supportedCiphers(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;

    move-result-object v1

    .line 269
    .local v1, "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lio/netty/handler/ssl/JdkSslContext;->defaultCiphers(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    invoke-static {v3}, Lio/netty/handler/ssl/JdkSslContext;->isTlsV13Supported([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 272
    sget-object v3, Lio/netty/handler/ssl/SslUtils;->DEFAULT_TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 273
    .local v6, "cipher":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    nop

    .end local v6    # "cipher":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 278
    :cond_4
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 279
    move-object v0, v1

    move-object v1, v2

    .line 282
    .end local v2    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v1, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    const-string v2, "cipherFilter"

    invoke-static {p4, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/ssl/CipherSuiteFilter;

    invoke-interface {v2, p3, v1, v0}, Lio/netty/handler/ssl/CipherSuiteFilter;->filterCipherSuites(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/ssl/JdkSslContext;->cipherSuites:[Ljava/lang/String;

    .line 285
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/ssl/JdkSslContext;->unmodifiableCipherSuites:Ljava/util/List;

    .line 286
    iput-boolean p2, p0, Lio/netty/handler/ssl/JdkSslContext;->isClient:Z

    .line 287
    return-void

    .line 278
    .end local v1    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "engine":Ljavax/net/ssl/SSLEngine;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 279
    throw v1
.end method

.method protected static buildKeyManagerFactory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 1
    .param p0, "certChainFile"    # Ljava/io/File;
    .param p1, "keyFile"    # Ljava/io/File;
    .param p2, "keyPassword"    # Ljava/lang/String;
    .param p3, "kmf"    # Ljavax/net/ssl/KeyManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 473
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/JdkSslContext;->buildKeyManagerFactory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method static buildKeyManagerFactory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 7
    .param p0, "certChainFile"    # Ljava/io/File;
    .param p1, "keyFile"    # Ljava/io/File;
    .param p2, "keyPassword"    # Ljava/lang/String;
    .param p3, "kmf"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p4, "keyStore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "algorithm":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 452
    const-string v0, "SunX509"

    .line 454
    :cond_0
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lio/netty/handler/ssl/JdkSslContext;->buildKeyManagerFactory(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    return-object v1
.end method

.method protected static buildKeyManagerFactory(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 6
    .param p0, "certChainFile"    # Ljava/io/File;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "keyFile"    # Ljava/io/File;
    .param p3, "keyPassword"    # Ljava/lang/String;
    .param p4, "kmf"    # Ljavax/net/ssl/KeyManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    invoke-static {p0}, Lio/netty/handler/ssl/JdkSslContext;->toX509Certificates(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 522
    invoke-static {p2, p3}, Lio/netty/handler/ssl/JdkSslContext;->toPrivateKey(Ljava/io/File;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    .line 521
    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/handler/ssl/JdkSslContext;->buildKeyManagerFactory([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method static buildKeyManagerFactory(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 6
    .param p0, "certChainFile"    # Ljava/io/File;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "keyFile"    # Ljava/io/File;
    .param p3, "keyPassword"    # Ljava/lang/String;
    .param p4, "kmf"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p5, "keyStore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 496
    invoke-static {p0}, Lio/netty/handler/ssl/JdkSslContext;->toX509Certificates(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 497
    invoke-static {p2, p3}, Lio/netty/handler/ssl/JdkSslContext;->toPrivateKey(Ljava/io/File;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 496
    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/netty/handler/ssl/JdkSslContext;->buildKeyManagerFactory([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method private configureAndWrapEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
    .locals 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 340
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->protocols:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->isClient()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 343
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ClientAuth:[I

    iget-object v1, p0, Lio/netty/handler/ssl/JdkSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    invoke-virtual {v1}, Lio/netty/handler/ssl/ClientAuth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 354
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/ssl/JdkSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_0
    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 350
    goto :goto_0

    .line 346
    :pswitch_2
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 357
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    invoke-interface {v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;->wrapperFactory()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;

    move-result-object v0

    .line 358
    .local v0, "factory":Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;
    instance-of v1, v0, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;

    if-eqz v1, :cond_1

    .line 359
    move-object v1, v0

    check-cast v1, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;

    iget-object v2, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    .line 360
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->isServer()Z

    move-result v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$AllocatorAwareSslEngineWrapperFactory;->wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 359
    return-object v1

    .line 362
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->isServer()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$SslEngineWrapperFactory;->wrapSslEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static defaultCiphers(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    .local p1, "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "ciphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lio/netty/handler/ssl/SslUtils;->DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslUtils;->useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;[Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method private static defaultProtocols(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 103
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "supportedProtocols":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 105
    .local v1, "supportedProtocolsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "TLSv1.2"

    const-string v4, "TLSv1.1"

    const-string v5, "TLSv1"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 112
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isTlsV13Supported([Ljava/lang/String;)Z
    .locals 5
    .param p0, "protocols"    # [Ljava/lang/String;

    .line 155
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 156
    .local v3, "protocol":Ljava/lang/String;
    const-string v4, "TLSv1.3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const/4 v0, 0x1

    return v0

    .line 155
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    return v1
.end method

.method private static supportedCiphers(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;
    .locals 7
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "supportedCiphers":[Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 122
    .local v1, "supportedCiphersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 123
    aget-object v3, v0, v2

    .line 124
    .local v3, "supportedCipher":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v4, "SSL_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TLS_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "tlsPrefixedCipherName":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {p0, v5}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 138
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_1

    .line 139
    :catch_0
    move-exception v5

    .line 122
    .end local v3    # "supportedCipher":Ljava/lang/String;
    .end local v4    # "tlsPrefixedCipherName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method static toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;Z)Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .locals 6
    .param p0, "config"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p1, "isServer"    # Z

    .line 378
    if-nez p0, :cond_0

    .line 379
    sget-object v0, Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;->INSTANCE:Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;

    return-object v0

    .line 382
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " failure behavior"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "JDK provider does not support "

    packed-switch v0, :pswitch_data_0

    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " protocol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_0
    if-eqz p1, :cond_1

    .line 409
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    .line 415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :pswitch_1
    new-instance v0, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 411
    :pswitch_2
    new-instance v0, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 419
    :cond_1
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_2

    .line 425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :pswitch_3
    new-instance v0, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 421
    :pswitch_4
    new-instance v0, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/netty/handler/ssl/JdkNpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 386
    :pswitch_5
    if-eqz p1, :cond_2

    .line 387
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_3

    .line 393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_6
    new-instance v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 389
    :pswitch_7
    new-instance v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 397
    :cond_2
    sget-object v0, Lio/netty/handler/ssl/JdkSslContext$1;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_4

    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :pswitch_8
    new-instance v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 399
    :pswitch_9
    new-instance v0, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->supportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lio/netty/handler/ssl/JdkAlpnApplicationProtocolNegotiator;-><init>(ZLjava/lang/Iterable;)V

    return-object v0

    .line 384
    :pswitch_a
    sget-object v0, Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;->INSTANCE:Lio/netty/handler/ssl/JdkDefaultApplicationProtocolNegotiator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    move-result-object v0

    return-object v0
.end method

.method public final applicationProtocolNegotiator()Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;
    .locals 1

    .line 367
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->apn:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;

    return-object v0
.end method

.method public final cipherSuites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->unmodifiableCipherSuites:Ljava/util/List;

    return-object v0
.end method

.method public final context()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 293
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslContext;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public final isClient()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lio/netty/handler/ssl/JdkSslContext;->isClient:Z

    return v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 330
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/JdkSslContext;->configureAndWrapEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I

    .line 335
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/JdkSslContext;->configureAndWrapEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final sessionCacheSize()J
    .locals 2

    .line 320
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->sessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionCacheSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->isServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->context()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final sessionTimeout()J
    .locals 2

    .line 325
    invoke-virtual {p0}, Lio/netty/handler/ssl/JdkSslContext;->sessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
