.class public final Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.source "ReferenceCountedOpenSslClientContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
    }
.end annotation


# static fields
.field private static final SUPPORTED_KEY_TYPES:Ljava/util/Set;
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
.field private final sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 51
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;

    .line 52
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "RSA"

    const-string v2, "DH_RSA"

    const-string v3, "EC"

    const-string v4, "EC_RSA"

    const-string v5, "EC_EC"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->SUPPORTED_KEY_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;)V
    .locals 16
    .param p1, "trustCertCollection"    # [Ljava/security/cert/X509Certificate;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p4, "key"    # Ljava/security/PrivateKey;
    .param p5, "keyPassword"    # Ljava/lang/String;
    .param p6, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p8, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p9, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p10, "protocols"    # [Ljava/lang/String;
    .param p11, "sessionCacheSize"    # J
    .param p13, "sessionTimeout"    # J
    .param p15, "enableOcsp"    # Z
    .param p16, "keyStore"    # Ljava/lang/String;
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
            "[",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 67
    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    sget-object v11, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-wide/from16 v5, p11

    move-wide/from16 v7, p13

    move-object/from16 v10, p3

    move-object/from16 v12, p10

    move/from16 v14, p15

    move v15, v0

    invoke-direct/range {v1 .. v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    .line 69
    const/4 v12, 0x0

    .line 71
    .local v12, "success":Z
    move-object/from16 v13, p0

    :try_start_0
    iget-wide v2, v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->ctx:J

    iget-object v4, v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p16

    invoke-static/range {v1 .. v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    iput-object v0, v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 v0, 0x1

    .line 75
    .end local v12    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 76
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->release()Z

    .line 79
    :cond_0
    return-void

    .line 75
    .end local v0    # "success":Z
    .restart local v12    # "success":Z
    :catchall_0
    move-exception v0

    if-nez v12, :cond_1

    .line 76
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->release()Z

    .line 78
    :cond_1
    throw v0
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 50
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 50
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->SUPPORTED_KEY_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method static newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 5
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

    .line 93
    if-nez p7, :cond_0

    if-nez p6, :cond_1

    :cond_0
    if-eqz p7, :cond_2

    if-eqz p6, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either both keyCertChain and key needs to be null or none of them"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 100
    .local v0, "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->useKeyManagerFactory()Z

    move-result v1

    if-nez v1, :cond_4

    .line 101
    if-nez p9, :cond_3

    .line 105
    if-eqz p6, :cond_8

    .line 106
    invoke-static {p1, p2, p6, p7, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    goto :goto_4

    .line 102
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KeyManagerFactory not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    throw v1

    .line 110
    .restart local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    :cond_4
    if-nez p9, :cond_6

    if-eqz p6, :cond_6

    .line 111
    invoke-static {p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->keyStorePassword(Ljava/lang/String;)[C

    move-result-object v1

    .line 112
    .local v1, "keyPasswordChars":[C
    invoke-static {p6, p7, v1, p10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->buildKeyStore([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 113
    .local v2, "ks":Ljava/security/KeyStore;
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    new-instance v3, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-direct {v3}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;-><init>()V

    move-object p9, v3

    goto :goto_1

    .line 116
    :cond_5
    new-instance v3, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    .line 117
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    move-object p9, v3

    .line 119
    :goto_1
    invoke-virtual {p9, v2, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 120
    invoke-static {p9, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v3

    move-object v0, v3

    .end local v1    # "keyPasswordChars":[C
    .end local v2    # "ks":Ljava/security/KeyStore;
    goto :goto_2

    .line 121
    :cond_6
    if-eqz p9, :cond_7

    .line 122
    invoke-static {p9, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v1

    move-object v0, v1

    goto :goto_3

    .line 121
    :cond_7
    :goto_2
    nop

    .line 125
    :goto_3
    if-eqz v0, :cond_8

    .line 126
    new-instance v1, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;-><init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    .line 127
    .local v1, "materialManager":Lio/netty/handler/ssl/OpenSslKeyMaterialManager;
    new-instance v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;

    invoke-direct {v2, p3, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V

    invoke-static {p1, p2, v2}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v1    # "materialManager":Lio/netty/handler/ssl/OpenSslKeyMaterialManager;
    :cond_8
    :goto_4
    nop

    .line 141
    const/4 v1, 0x1

    const/16 v2, 0xa

    :try_start_1
    invoke-static {p1, p2, v1, v2}, Lio/netty/internal/tcnative/SSLContext;->setVerify(JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz p4, :cond_9

    .line 145
    :try_start_2
    invoke-static {p4, p5, p10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->buildTrustManagerFactory([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object p5, v1

    goto :goto_5

    .line 160
    :catch_0
    move-exception v1

    goto :goto_6

    .line 146
    :cond_9
    if-nez p5, :cond_a

    .line 148
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object p5, v1

    .line 149
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {p5, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 151
    :cond_a
    :goto_5
    invoke-virtual {p5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 159
    .local v1, "manager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {p1, p2, p3, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .end local v1    # "manager":Ljavax/net/ssl/X509TrustManager;
    nop

    .line 166
    :try_start_3
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    .local v1, "context":Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
    const/4 v0, 0x0

    .line 168
    nop

    .line 170
    if-eqz v0, :cond_b

    .line 171
    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 168
    :cond_b
    return-object v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    if-eqz v0, :cond_c

    .line 162
    :try_start_4
    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 164
    :cond_c
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "unable to setup trustmanager"

    invoke-direct {v2, v3, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    throw v2

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 131
    :catch_1
    move-exception v1

    .line 132
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "failed to set certificate and key"

    invoke-direct {v2, v3, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "keyMaterialProvider":Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
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
    :goto_7
    if-eqz v0, :cond_d

    .line 171
    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    .line 173
    :cond_d
    throw v1
.end method

.method private static setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .param p0, "ctx"    # J
    .param p2, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p3, "manager"    # Ljavax/net/ssl/X509TrustManager;

    .line 179
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;

    move-object v1, p3

    check-cast v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    .line 185
    :goto_0
    return-void
.end method


# virtual methods
.method public sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    return-object v0
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method
