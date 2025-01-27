.class public final Lio/netty/handler/ssl/OpenSslClientContext;
.super Lio/netty/handler/ssl/OpenSslContext;
.source "OpenSslClientContext.java"


# instance fields
.field private final sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;


# direct methods
.method public constructor <init>()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    sget-object v8, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lio/netty/handler/ssl/OpenSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJ)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "certChainFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/OpenSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 14
    .param p1, "certChainFile"    # Ljava/io/File;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    sget-object v8, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lio/netty/handler/ssl/OpenSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJ)V
    .locals 17
    .param p1, "trustCertCollectionFile"    # Ljava/io/File;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p3, "keyCertChainFile"    # Ljava/io/File;
    .param p4, "keyFile"    # Ljava/io/File;
    .param p5, "keyPassword"    # Ljava/lang/String;
    .param p6, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p8, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p9, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p10, "sessionCacheSize"    # J
    .param p12, "sessionTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    .line 177
    invoke-static/range {p1 .. p1}, Lio/netty/handler/ssl/OpenSslClientContext;->toX509CertificatesInternal(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 178
    invoke-static/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslClientContext;->toX509CertificatesInternal(Ljava/io/File;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Lio/netty/handler/ssl/OpenSslClientContext;->toPrivateKeyInternal(Ljava/io/File;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 180
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v16

    .line 177
    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v16}, Lio/netty/handler/ssl/OpenSslClientContext;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJ)V
    .locals 14
    .param p1, "certChainFile"    # Ljava/io/File;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p4, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p5, "sessionCacheSize"    # J
    .param p7, "sessionTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    .local p3, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    sget-object v8, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    invoke-direct/range {v0 .. v13}, Lio/netty/handler/ssl/OpenSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJ)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJ)V
    .locals 14
    .param p1, "certChainFile"    # Ljava/io/File;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p4, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p5, "apn"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p6, "sessionCacheSize"    # J
    .param p8, "sessionTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    .local p3, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Lio/netty/handler/ssl/OpenSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJ)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 1
    .param p1, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/OpenSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V

    .line 72
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

    .line 189
    .local p7, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    sget-object v11, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-wide/from16 v5, p11

    move-wide/from16 v7, p13

    move-object/from16 v10, p3

    move-object/from16 v12, p10

    move/from16 v14, p15

    invoke-direct/range {v1 .. v14}, Lio/netty/handler/ssl/OpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZ)V

    .line 191
    const/4 v12, 0x0

    .line 193
    .local v12, "success":Z
    :try_start_0
    invoke-static/range {p3 .. p5}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->validateKeyMaterialSupported([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 194
    iget-wide v2, v15, Lio/netty/handler/ssl/OpenSslClientContext;->ctx:J

    iget-object v4, v15, Lio/netty/handler/ssl/OpenSslClientContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

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

    iput-object v0, v15, Lio/netty/handler/ssl/OpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v0, 0x1

    .line 198
    .end local v12    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 199
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslClientContext;->release()Z

    .line 202
    :cond_0
    return-void

    .line 198
    .end local v0    # "success":Z
    .restart local v12    # "success":Z
    :catchall_0
    move-exception v0

    if-nez v12, :cond_1

    .line 199
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslClientContext;->release()Z

    .line 201
    :cond_1
    throw v0
.end method


# virtual methods
.method public sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 206
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    return-object v0
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslClientContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method
