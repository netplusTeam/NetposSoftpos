.class public final Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.source "ReferenceCountedOpenSslServerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;
    }
.end annotation


# static fields
.field private static final ID:[B

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;

    .line 50
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ID:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x74t
        0x79t
    .end array-data
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 19
    .param p1, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "key"    # Ljava/security/PrivateKey;
    .param p5, "keyPassword"    # Ljava/lang/String;
    .param p6, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p8, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p9, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p10, "sessionCacheSize"    # J
    .param p12, "sessionTimeout"    # J
    .param p14, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p15, "protocols"    # [Ljava/lang/String;
    .param p16, "startTls"    # Z
    .param p17, "enableOcsp"    # Z
    .param p18, "keyStore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJ",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    .line 60
    nop

    .line 61
    invoke-static/range {p9 .. p9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v9

    .line 60
    invoke-direct/range {v0 .. v18}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;)V

    .line 63
    return-void
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 16
    .param p1, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "key"    # Ljava/security/PrivateKey;
    .param p5, "keyPassword"    # Ljava/lang/String;
    .param p6, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p8, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p9, "apn"    # Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .param p10, "sessionCacheSize"    # J
    .param p12, "sessionTimeout"    # J
    .param p14, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p15, "protocols"    # [Ljava/lang/String;
    .param p16, "startTls"    # Z
    .param p17, "enableOcsp"    # Z
    .param p18, "keyStore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;",
            "JJ",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 71
    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    const/4 v9, 0x1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    move-object/from16 v10, p3

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move/from16 v13, p16

    move/from16 v14, p17

    move v15, v0

    invoke-direct/range {v1 .. v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    .line 74
    const/4 v12, 0x0

    .line 76
    .local v12, "success":Z
    move-object/from16 v13, p0

    :try_start_0
    iget-wide v2, v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ctx:J

    iget-object v4, v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p18

    invoke-static/range {v1 .. v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    iput-object v0, v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const/4 v0, 0x1

    .line 80
    .end local v12    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->release()Z

    .line 84
    :cond_0
    return-void

    .line 80
    .end local v0    # "success":Z
    .restart local v12    # "success":Z
    :catchall_0
    move-exception v0

    if-nez v12, :cond_1

    .line 81
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->release()Z

    .line 83
    :cond_1
    throw v0
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 48
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .locals 18
    .param p0, "thiz"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p1, "ctx"    # J
    .param p3, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p4, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p5, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p6, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p7, "key"    # Ljava/security/PrivateKey;
    .param p8, "keyPassword"    # Ljava/lang/String;
    .param p9, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p10, "keyStore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 99
    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    const/4 v10, 0x0

    .line 102
    .local v10, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    const/4 v0, 0x0

    const/16 v11, 0xa

    :try_start_0
    invoke-static {v1, v2, v0, v11}, Lio/netty/internal/tcnative/SSLContext;->setVerify(JII)V

    .line 103
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->useKeyManagerFactory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    if-nez p9, :cond_0

    .line 108
    const-string v0, "keyCertChain"

    invoke-static {v6, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    invoke-static {v1, v2, v6, v7, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    move-object/from16 v12, p9

    goto :goto_2

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v11, "KeyManagerFactory not supported"

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local p10    # "keyStore":Ljava/lang/String;
    throw v0

    .line 114
    .restart local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p10    # "keyStore":Ljava/lang/String;
    :cond_1
    if-nez p9, :cond_3

    .line 115
    invoke-static/range {p8 .. p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->keyStorePassword(Ljava/lang/String;)[C

    move-result-object v0

    .line 116
    .local v0, "keyPasswordChars":[C
    invoke-static {v6, v7, v0, v9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->buildKeyStore([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 117
    .local v11, "ks":Ljava/security/KeyStore;
    invoke-virtual {v11}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 118
    new-instance v12, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-direct {v12}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;-><init>()V

    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v12, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    goto :goto_0

    .line 120
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_2
    new-instance v12, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    .line 121
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v13

    invoke-direct {v12, v13}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 123
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_0
    :try_start_1
    invoke-virtual {v12, v11, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_1

    .line 114
    .end local v0    # "keyPasswordChars":[C
    .end local v11    # "ks":Ljava/security/KeyStore;
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_3
    move-object/from16 v12, p9

    .line 125
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_1
    invoke-static {v12, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v0

    move-object v10, v0

    .line 127
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;

    new-instance v11, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-direct {v11, v10}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;-><init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    invoke-direct {v0, v3, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V

    invoke-static {v1, v2, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 132
    :goto_2
    nop

    .line 134
    if-eqz v4, :cond_4

    .line 135
    :try_start_2
    invoke-static {v4, v5, v9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->buildTrustManagerFactory([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    move-object v5, v0

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    goto :goto_3

    .line 175
    .end local v0    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_8

    .line 173
    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_9

    .line 136
    :cond_4
    if-nez v5, :cond_5

    .line 139
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-object v5, v0

    .line 140
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .local v5, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v0, 0x0

    :try_start_3
    move-object v11, v0

    check-cast v11, Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 186
    :catchall_0
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_b

    .line 175
    :catch_2
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_8

    .line 173
    :catch_3
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_9

    .line 143
    :cond_5
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    move-object v11, v0

    .line 151
    .local v11, "manager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v1, v2, v3, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    .line 153
    invoke-interface {v11}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object v13, v0

    .line 154
    .local v13, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v13, :cond_7

    :try_start_5
    array-length v0, v13
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-lez v0, :cond_7

    .line 155
    const-wide/16 v14, 0x0

    .line 157
    .local v14, "bio":J
    :try_start_6
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-static {v0, v13}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 158
    invoke-static {v1, v2, v14, v15}, Lio/netty/internal/tcnative/SSLContext;->setCACertificateBio(JJ)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_6

    .line 162
    :try_start_7
    invoke-static {v14, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->freeBio(J)V
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    move-object/from16 p5, v5

    goto :goto_5

    .line 159
    :cond_6
    :try_start_8
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 p5, v5

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_9
    const-string v5, "unable to setup accepted issuers for trustmanager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local v11    # "manager":Ljavax/net/ssl/X509TrustManager;
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v13    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v14    # "bio":J
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 162
    .restart local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v11    # "manager":Ljavax/net/ssl/X509TrustManager;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v13    # "issuers":[Ljava/security/cert/X509Certificate;
    .restart local v14    # "bio":J
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_2
    move-exception v0

    move-object/from16 p5, v5

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_4
    :try_start_a
    invoke-static {v14, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->freeBio(J)V

    .line 163
    nop

    .end local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    throw v0

    .line 186
    .end local v11    # "manager":Ljavax/net/ssl/X509TrustManager;
    .end local v13    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v14    # "bio":J
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 p5, v5

    move-object/from16 v4, p0

    goto :goto_7

    .line 175
    :catch_4
    move-exception v0

    move-object/from16 p5, v5

    move-object/from16 v4, p0

    goto :goto_8

    .line 173
    :catch_5
    move-exception v0

    move-object/from16 p5, v5

    move-object/from16 v4, p0

    goto :goto_9

    .line 154
    .restart local v11    # "manager":Ljavax/net/ssl/X509TrustManager;
    .restart local v13    # "issuers":[Ljava/security/cert/X509Certificate;
    :cond_7
    move-object/from16 p5, v5

    .line 166
    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_5
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v4, 0x8

    if-lt v0, v4, :cond_8

    .line 171
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;

    invoke-direct {v0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V

    invoke-static {v1, v2, v0}, Lio/netty/internal/tcnative/SSLContext;->setSniHostnameMatcher(JLio/netty/internal/tcnative/SniHostNameMatcher;)V
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 177
    .end local v11    # "manager":Ljavax/net/ssl/X509TrustManager;
    .end local v13    # "issuers":[Ljava/security/cert/X509Certificate;
    :cond_8
    nop

    .line 179
    :try_start_b
    new-instance v0, Lio/netty/handler/ssl/OpenSslServerSessionContext;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v4, p0

    :try_start_c
    invoke-direct {v0, v4, v10}, Lio/netty/handler/ssl/OpenSslServerSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    .line 180
    .local v0, "sessionContext":Lio/netty/handler/ssl/OpenSslServerSessionContext;
    sget-object v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ID:[B

    invoke-virtual {v0, v5}, Lio/netty/handler/ssl/OpenSslServerSessionContext;->setSessionIdContext([B)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 182
    const/4 v5, 0x0

    .line 184
    .end local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .local v5, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    nop

    .line 186
    if-eqz v5, :cond_9

    .line 187
    invoke-virtual {v5}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 184
    :cond_9
    return-object v0

    .line 186
    .end local v0    # "sessionContext":Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .end local v5    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v4, p0

    :goto_6
    move-object/from16 v5, p5

    goto :goto_b

    .line 175
    :catch_6
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    goto :goto_8

    .line 173
    :catch_7
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    goto :goto_9

    .line 186
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .local v5, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_6
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 p5, v5

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_7
    goto :goto_b

    .line 175
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_8
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 p5, v5

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_d
    new-instance v11, Ljavax/net/ssl/SSLException;

    const-string v13, "unable to setup trustmanager"

    invoke-direct {v11, v13, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    throw v11

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 p5, v5

    .line 174
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :goto_9
    nop

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 186
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    :catchall_7
    move-exception v0

    goto :goto_b

    .end local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_8
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_b

    .line 130
    :catch_a
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_a

    .line 186
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catchall_9
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v12, p9

    goto :goto_b

    .line 130
    :catch_b
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v12, p9

    .line 131
    .end local p9    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_a
    :try_start_e
    new-instance v11, Ljavax/net/ssl/SSLException;

    const-string v13, "failed to set certificate and key"

    invoke-direct {v11, v13, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .end local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .end local p1    # "ctx":J
    .end local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .end local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p7    # "key":Ljava/security/PrivateKey;
    .end local p8    # "keyPassword":Ljava/lang/String;
    .end local p10    # "keyStore":Ljava/lang/String;
    throw v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v10    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .restart local v12    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .restart local p0    # "thiz":Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .restart local p1    # "ctx":J
    .restart local p3    # "engineMap":Lio/netty/handler/ssl/OpenSslEngineMap;
    .restart local p4    # "trustCertCollection":[Ljava/security/cert/X509Certificate;
    .restart local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local p6    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p7    # "key":Ljava/security/PrivateKey;
    .restart local p8    # "keyPassword":Ljava/lang/String;
    .restart local p10    # "keyStore":Ljava/lang/String;
    :catchall_a
    move-exception v0

    .end local p5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_b
    if-eqz v10, :cond_a

    .line 187
    invoke-virtual {v10}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 189
    :cond_a
    throw v0
.end method

.method private static setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p0, "ctx"    # J
    .param p2, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p3, "manager"    # Ljavax/net/ssl/X509TrustManager;

    .line 195
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;

    move-object v1, p3

    check-cast v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    .line 201
    :goto_0
    return-void
.end method


# virtual methods
.method public sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;

    return-object v0
.end method

.method public bridge synthetic sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    return-object v0
.end method
