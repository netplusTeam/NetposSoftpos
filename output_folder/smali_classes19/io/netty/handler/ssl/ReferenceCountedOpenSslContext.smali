.class public abstract Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.super Lio/netty/handler/ssl/SslContext;
.source "ReferenceCountedOpenSslContext.java"

# interfaces
.implements Lio/netty/util/ReferenceCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;
    }
.end annotation


# static fields
.field private static final DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

.field private static final DH_KEY_LENGTH:Ljava/lang/Integer;

.field static final NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field static final USE_TASKS:Z

.field protected static final VERIFY_DEPTH:I = 0xa

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field private volatile bioNonApplicationBufferSize:I

.field final clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field protected ctx:J

.field final ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final enableOcsp:Z

.field final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field final keyCertChain:[Ljava/security/cert/Certificate;

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I

.field final protocols:[Ljava/lang/String;

.field private final refCnt:Lio/netty/util/AbstractReferenceCounted;

.field private final sessionCacheSize:J

.field private final sessionTimeout:J

.field private final unmodifiableCiphers:Ljava/util/List;
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
    .locals 6

    .line 80
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 81
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 83
    nop

    .line 84
    const-string v1, "io.netty.handler.ssl.openssl.bioNonApplicationBufferSize"

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 83
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

    .line 86
    nop

    .line 87
    const-string v1, "io.netty.handler.ssl.openssl.useTasks"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->USE_TASKS:Z

    .line 90
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    .line 139
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$2;

    invoke-direct {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$2;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    .line 163
    const/4 v0, 0x0

    .line 166
    .local v0, "dhLen":Ljava/lang/Integer;
    :try_start_0
    const-string v1, "jdk.tls.ephemeralDHKeySize"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .local v1, "dhKeySize":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 169
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 173
    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReferenceCountedOpenSslContext supports -Djdk.tls.ephemeralDHKeySize={int}, but got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .end local v1    # "dhKeySize":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v1

    .line 178
    :goto_1
    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DH_KEY_LENGTH:Ljava/lang/Integer;

    .line 179
    .end local v0    # "dhLen":Ljava/lang/Integer;
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V
    .locals 15
    .param p2, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p3, "apnCfg"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;
    .param p4, "sessionCacheSize"    # J
    .param p6, "sessionTimeout"    # J
    .param p8, "mode"    # I
    .param p9, "keyCertChain"    # [Ljava/security/cert/Certificate;
    .param p10, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p11, "protocols"    # [Ljava/lang/String;
    .param p12, "startTls"    # Z
    .param p13, "enableOcsp"    # Z
    .param p14, "leakDetection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJI[",
            "Ljava/security/cert/Certificate;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 185
    .local p1, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    .line 187
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V
    .locals 18
    .param p2, "cipherFilter"    # Lio/netty/handler/ssl/CipherSuiteFilter;
    .param p3, "apn"    # Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .param p4, "sessionCacheSize"    # J
    .param p6, "sessionTimeout"    # J
    .param p8, "mode"    # I
    .param p9, "keyCertChain"    # [Ljava/security/cert/Certificate;
    .param p10, "clientAuth"    # Lio/netty/handler/ssl/ClientAuth;
    .param p11, "protocols"    # [Ljava/lang/String;
    .param p12, "startTls"    # Z
    .param p13, "enableOcsp"    # Z
    .param p14, "leakDetection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;",
            "JJI[",
            "Ljava/security/cert/Certificate;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 194
    .local p1, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p8

    move/from16 v3, p13

    const-string v0, ""

    move/from16 v4, p12

    invoke-direct {v1, v4}, Lio/netty/handler/ssl/SslContext;-><init>(Z)V

    .line 109
    new-instance v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;

    invoke-direct {v5, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V

    iput-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    .line 133
    new-instance v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$DefaultOpenSslEngineMap;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$1;)V

    iput-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 134
    new-instance v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 136
    sget v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DEFAULT_BIO_NON_APPLICATION_BUFFER_SIZE:I

    iput v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    .line 196
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    .line 198
    if-eqz v3, :cond_1

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isOcspSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "OCSP is not supported."

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "mode most be either SSL.SSL_MODE_SERVER or SSL.SSL_MODE_CLIENT"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_3
    :goto_1
    if-eqz p14, :cond_4

    sget-object v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v7, v1}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v6

    :goto_2
    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leak:Lio/netty/util/ResourceLeakTracker;

    .line 206
    iput v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->mode:I

    .line 207
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isServer()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "clientAuth"

    move-object/from16 v8, p10

    invoke-static {v8, v7}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/handler/ssl/ClientAuth;

    goto :goto_3

    :cond_5
    move-object/from16 v8, p10

    sget-object v7, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_3
    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 208
    move-object/from16 v7, p11

    iput-object v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    .line 209
    iput-boolean v3, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    .line 211
    if-nez p9, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual/range {p9 .. p9}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;

    :goto_4
    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->keyCertChain:[Ljava/security/cert/Certificate;

    .line 213
    const-string v6, "cipherFilter"

    move-object/from16 v9, p2

    invoke-static {v9, v6}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/handler/ssl/CipherSuiteFilter;

    sget-object v10, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 214
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->availableJavaCipherSuites()Ljava/util/Set;

    move-result-object v11

    .line 213
    move-object/from16 v12, p1

    invoke-interface {v6, v12, v10, v11}, Lio/netty/handler/ssl/CipherSuiteFilter;->filterCipherSuites(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    .line 216
    const-string v10, "apn"

    move-object/from16 v11, p3

    invoke-static {v11, v10}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    iput-object v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    .line 219
    const/4 v10, 0x0

    .line 222
    .local v10, "success":Z
    const/16 v13, 0x1e

    .line 224
    .local v13, "protocolOpts":I
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 225
    or-int/lit8 v13, v13, 0x20

    .line 227
    :cond_7
    invoke-static {v13, v2}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v14

    iput-wide v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 230
    .end local v13    # "protocolOpts":I
    nop

    .line 232
    :try_start_1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v13

    .line 233
    .local v13, "tlsv13Supported":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v14, "cipherBuilder":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 238
    .local v15, "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 240
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const/4 v2, 0x0

    invoke-static {v5, v6, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    .line 241
    if-eqz v13, :cond_9

    .line 243
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const/4 v2, 0x1

    invoke-static {v5, v6, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    goto :goto_5

    .line 246
    :cond_8
    nop

    .line 247
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v0

    .line 246
    invoke-static {v6, v14, v15, v0}, Lio/netty/handler/ssl/CipherSuiteConverter;->convertToCipherStrings(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    .line 250
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v5, v6, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    .line 251
    if-eqz v13, :cond_9

    .line 253
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v5, v6, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 260
    :cond_9
    :goto_5
    nop

    .line 262
    :try_start_3
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSLContext;->getOptions(J)I

    move-result v0

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_COMPRESSION:I

    or-int/2addr v0, v2

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TICKET:I

    or-int/2addr v0, v2

    .line 280
    .local v0, "options":I
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 282
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v2, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    or-int/2addr v2, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    or-int/2addr v2, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    or-int/2addr v2, v5

    or-int/2addr v0, v2

    .line 286
    :cond_a
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v5, v6, v0}, Lio/netty/internal/tcnative/SSLContext;->setOptions(JI)V

    .line 291
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSLContext;->getMode(J)I

    move-result v2

    sget v17, Lio/netty/internal/tcnative/SSL;->SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER:I

    or-int v2, v2, v17

    invoke-static {v5, v6, v2}, Lio/netty/internal/tcnative/SSLContext;->setMode(JI)I

    .line 293
    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->DH_KEY_LENGTH:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 294
    iget-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v6, v2}, Lio/netty/internal/tcnative/SSLContext;->setTmpDHLength(JI)V

    .line 297
    :cond_b
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v2

    .line 299
    .local v2, "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 300
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 301
    .local v5, "appProtocols":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v6

    invoke-static {v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->opensslSelectorFailureBehavior(Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I

    move-result v6

    .line 303
    .local v6, "selectorBehavior":I
    sget-object v16, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 315
    new-instance v7, Ljava/lang/Error;

    goto :goto_6

    .line 311
    :pswitch_0
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setNpnProtos(J[Ljava/lang/String;I)V

    .line 312
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setAlpnProtos(J[Ljava/lang/String;I)V

    .line 313
    goto :goto_7

    .line 308
    :pswitch_1
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setAlpnProtos(J[Ljava/lang/String;I)V

    .line 309
    goto :goto_7

    .line 305
    :pswitch_2
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setNpnProtos(J[Ljava/lang/String;I)V

    .line 306
    goto :goto_7

    .line 315
    :goto_6
    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    .end local v10    # "success":Z
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "sessionCacheSize":J
    .end local p6    # "sessionTimeout":J
    .end local p8    # "mode":I
    .end local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p11    # "protocols":[Ljava/lang/String;
    .end local p12    # "startTls":Z
    .end local p13    # "enableOcsp":Z
    .end local p14    # "leakDetection":Z
    throw v7

    .line 320
    .end local v5    # "appProtocols":[Ljava/lang/String;
    .end local v6    # "selectorBehavior":I
    .restart local v10    # "success":Z
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "sessionCacheSize":J
    .restart local p6    # "sessionTimeout":J
    .restart local p8    # "mode":I
    .restart local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p11    # "protocols":[Ljava/lang/String;
    .restart local p12    # "startTls":Z
    .restart local p13    # "enableOcsp":Z
    .restart local p14    # "leakDetection":Z
    :cond_c
    :goto_7
    const-wide/16 v5, 0x0

    cmp-long v7, p4, v5

    if-gtz v7, :cond_d

    .line 322
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const-wide/16 v5, 0x5000

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheSize(JJ)J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local p4    # "sessionCacheSize":J
    .local v5, "sessionCacheSize":J
    goto :goto_8

    .line 320
    .end local v5    # "sessionCacheSize":J
    .restart local p4    # "sessionCacheSize":J
    :cond_d
    move-wide/from16 v5, p4

    .line 324
    .end local p4    # "sessionCacheSize":J
    .restart local v5    # "sessionCacheSize":J
    :goto_8
    :try_start_4
    iput-wide v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionCacheSize:J

    .line 325
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v7, v8, v5, v6}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheSize(JJ)J

    .line 328
    const-wide/16 v7, 0x0

    cmp-long v7, p6, v7

    if-gtz v7, :cond_e

    .line 330
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v16, v5

    .end local v5    # "sessionCacheSize":J
    .local v16, "sessionCacheSize":J
    const-wide/16 v4, 0x12c

    :try_start_5
    invoke-static {v7, v8, v4, v5}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J

    move-result-wide v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p6    # "sessionTimeout":J
    .local v4, "sessionTimeout":J
    goto :goto_9

    .line 342
    .end local v0    # "options":I
    .end local v2    # "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sessionTimeout":J
    .end local v13    # "tlsv13Supported":Z
    .end local v14    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v15    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local p6    # "sessionTimeout":J
    :catchall_0
    move-exception v0

    move-wide/from16 v4, p6

    goto :goto_a

    .line 328
    .end local v16    # "sessionCacheSize":J
    .restart local v0    # "options":I
    .restart local v2    # "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "sessionCacheSize":J
    .restart local v13    # "tlsv13Supported":Z
    .restart local v14    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v15    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    :cond_e
    move-wide/from16 v16, v5

    .end local v5    # "sessionCacheSize":J
    .restart local v16    # "sessionCacheSize":J
    move-wide/from16 v4, p6

    .line 332
    .end local p6    # "sessionTimeout":J
    .restart local v4    # "sessionTimeout":J
    :goto_9
    :try_start_6
    iput-wide v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionTimeout:J

    .line 333
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v6, v7, v4, v5}, Lio/netty/internal/tcnative/SSLContext;->setSessionCacheTimeout(JJ)J

    .line 335
    if-eqz v3, :cond_f

    .line 336
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v8

    invoke-static {v6, v7, v8}, Lio/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V

    .line 339
    :cond_f
    iget-wide v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    sget-boolean v8, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->USE_TASKS:Z

    invoke-static {v6, v7, v8}, Lio/netty/internal/tcnative/SSLContext;->setUseTasks(JZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 340
    const/4 v0, 0x1

    .line 342
    .end local v2    # "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "success":Z
    .end local v13    # "tlsv13Supported":Z
    .end local v14    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v15    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .local v0, "success":Z
    if-nez v0, :cond_10

    .line 343
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->release()Z

    .line 346
    :cond_10
    return-void

    .line 342
    .end local v0    # "success":Z
    .restart local v10    # "success":Z
    :catchall_1
    move-exception v0

    goto :goto_a

    .end local v4    # "sessionTimeout":J
    .end local v16    # "sessionCacheSize":J
    .restart local v5    # "sessionCacheSize":J
    .restart local p6    # "sessionTimeout":J
    :catchall_2
    move-exception v0

    move-wide/from16 v16, v5

    move-wide/from16 v4, p6

    .end local v5    # "sessionCacheSize":J
    .restart local v16    # "sessionCacheSize":J
    goto :goto_a

    .line 258
    .end local v16    # "sessionCacheSize":J
    .restart local v13    # "tlsv13Supported":Z
    .restart local v14    # "cipherBuilder":Ljava/lang/StringBuilder;
    .restart local v15    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local p4    # "sessionCacheSize":J
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to set cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v10    # "success":Z
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "sessionCacheSize":J
    .end local p6    # "sessionTimeout":J
    .end local p8    # "mode":I
    .end local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p11    # "protocols":[Ljava/lang/String;
    .end local p12    # "startTls":Z
    .end local p13    # "enableOcsp":Z
    .end local p14    # "leakDetection":Z
    throw v2

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v10    # "success":Z
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "sessionCacheSize":J
    .restart local p6    # "sessionTimeout":J
    .restart local p8    # "mode":I
    .restart local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p11    # "protocols":[Ljava/lang/String;
    .restart local p12    # "startTls":Z
    .restart local p13    # "enableOcsp":Z
    .restart local p14    # "leakDetection":Z
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljavax/net/ssl/SSLException;
    nop

    .end local v10    # "success":Z
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "sessionCacheSize":J
    .end local p6    # "sessionTimeout":J
    .end local p8    # "mode":I
    .end local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p11    # "protocols":[Ljava/lang/String;
    .end local p12    # "startTls":Z
    .end local p13    # "enableOcsp":Z
    .end local p14    # "leakDetection":Z
    throw v0

    .line 342
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v13    # "tlsv13Supported":Z
    .end local v14    # "cipherBuilder":Ljava/lang/StringBuilder;
    .end local v15    # "cipherTLSv13Builder":Ljava/lang/StringBuilder;
    .restart local v10    # "success":Z
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p4    # "sessionCacheSize":J
    .restart local p6    # "sessionTimeout":J
    .restart local p8    # "mode":I
    .restart local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p11    # "protocols":[Ljava/lang/String;
    .restart local p12    # "startTls":Z
    .restart local p13    # "enableOcsp":Z
    .restart local p14    # "leakDetection":Z
    :catchall_3
    move-exception v0

    move-wide/from16 v16, p4

    move-wide/from16 v4, p6

    goto :goto_a

    .line 228
    :catch_2
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v4, "failed to create an SSL_CTX"

    invoke-direct {v2, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v10    # "success":Z
    .end local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .end local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .end local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .end local p4    # "sessionCacheSize":J
    .end local p6    # "sessionTimeout":J
    .end local p8    # "mode":I
    .end local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .end local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .end local p11    # "protocols":[Ljava/lang/String;
    .end local p12    # "startTls":Z
    .end local p13    # "enableOcsp":Z
    .end local p14    # "leakDetection":Z
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "sessionTimeout":J
    .restart local v10    # "success":Z
    .restart local v16    # "sessionCacheSize":J
    .restart local p1    # "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .restart local p2    # "cipherFilter":Lio/netty/handler/ssl/CipherSuiteFilter;
    .restart local p3    # "apn":Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .restart local p8    # "mode":I
    .restart local p9    # "keyCertChain":[Ljava/security/cert/Certificate;
    .restart local p10    # "clientAuth":Lio/netty/handler/ssl/ClientAuth;
    .restart local p11    # "protocols":[Ljava/lang/String;
    .restart local p12    # "startTls":Z
    .restart local p13    # "enableOcsp":Z
    .restart local p14    # "leakDetection":Z
    :goto_a
    if-nez v10, :cond_11

    .line 343
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->release()Z

    .line 345
    :cond_11
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)Lio/netty/util/ResourceLeakTracker;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 79
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->leak:Lio/netty/util/ResourceLeakTracker;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 79
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->destroy()V

    return-void
.end method

.method static synthetic access$300()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 79
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method protected static certificates([[B)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "chain"    # [[B

    .line 569
    array-length v0, p0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 570
    .local v0, "peerCerts":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 571
    new-instance v2, Lio/netty/handler/ssl/OpenSslX509Certificate;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    aput-object v2, v0, v1

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "managers"    # [Ljavax/net/ssl/TrustManager;

    .line 577
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 578
    .local v2, "m":Ljavax/net/ssl/TrustManager;
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    .line 579
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 580
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0

    .line 582
    :cond_0
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 577
    .end local v2    # "m":Ljavax/net/ssl/TrustManager;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no X509TrustManager found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 589
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 590
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    .line 591
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    return-object v0

    .line 589
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no X509KeyManager found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroy()V
    .locals 6

    .line 547
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 548
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 550
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 551
    iget-boolean v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    if-eqz v5, :cond_0

    .line 552
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->disableOcsp(J)V

    .line 555
    :cond_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 556
    iput-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    .line 558
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v1

    .line 559
    .local v1, "context":Lio/netty/handler/ssl/OpenSslSessionContext;
    if-eqz v1, :cond_1

    .line 560
    invoke-virtual {v1}, Lio/netty/handler/ssl/OpenSslSessionContext;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .end local v1    # "context":Lio/netty/handler/ssl/OpenSslSessionContext;
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 565
    nop

    .line 566
    return-void

    .line 564
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 565
    throw v1
.end method

.method static freeBio(J)V
    .locals 2
    .param p0, "bio"    # J

    .line 817
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 818
    invoke-static {p0, p1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 820
    :cond_0
    return-void
.end method

.method private static newBIO(Lio/netty/buffer/ByteBuf;)J
    .locals 7
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 892
    :try_start_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->newMemBIO()J

    move-result-wide v0

    .line 893
    .local v0, "bio":J
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 894
    .local v2, "readable":I
    invoke-static {p0}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4, v2}, Lio/netty/internal/tcnative/SSL;->bioWrite(JJI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v2, :cond_0

    .line 898
    nop

    .line 900
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 898
    return-wide v0

    .line 895
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 896
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not write data to memory BIO"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "buffer":Lio/netty/buffer/ByteBuf;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    .end local v0    # "bio":J
    .end local v2    # "readable":I
    .restart local p0    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 901
    throw v0
.end method

.method private static opensslSelectorFailureBehavior(Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I
    .locals 2
    .param p0, "behavior"    # Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    .line 349
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 355
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 353
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 351
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .locals 2
    .param p0, "factory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p1, "password"    # Ljava/lang/String;

    .line 910
    instance-of v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    if-eqz v0, :cond_0

    .line 911
    move-object v0, p0

    check-cast v0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;->newProvider()Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v0

    return-object v0

    .line 914
    :cond_0
    instance-of v0, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    if-eqz v0, :cond_1

    .line 916
    move-object v0, p0

    check-cast v0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;->newProvider(Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object v0

    return-object v0

    .line 919
    :cond_1
    new-instance v0, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    return-object v0
.end method

.method static setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 19
    .param p0, "ctx"    # J
    .param p2, "keyCertChain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .param p4, "keyPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 783
    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    .line 784
    .local v2, "keyBio":J
    const-wide/16 v4, 0x0

    .line 785
    .local v4, "keyCertChainBio":J
    const-wide/16 v6, 0x0

    .line 786
    .local v6, "keyCertChainBio2":J
    const/4 v8, 0x0

    .line 789
    .local v8, "encoded":Lio/netty/handler/ssl/PemEncoded;
    :try_start_0
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v9, 0x1

    move-object/from16 v10, p2

    :try_start_1
    invoke-static {v0, v9, v10}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    move-object v8, v0

    .line 790
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v11

    invoke-static {v0, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v14
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 791
    .end local v4    # "keyCertChainBio":J
    .local v14, "keyCertChainBio":J
    :try_start_2
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v4

    invoke-static {v0, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v4

    move-wide v6, v4

    .line 793
    if-eqz v1, :cond_0

    .line 794
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J

    move-result-wide v4

    move-wide v2, v4

    .line 797
    :cond_0
    if-nez p4, :cond_1

    const-string v0, ""

    move-object/from16 v18, v0

    goto :goto_0

    :cond_1
    move-object/from16 v18, p4

    :goto_0
    move-wide/from16 v12, p0

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v18}, Lio/netty/internal/tcnative/SSLContext;->setCertificateBio(JJJLjava/lang/String;)Z
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 801
    move-wide/from16 v11, p0

    :try_start_3
    invoke-static {v11, v12, v6, v7, v9}, Lio/netty/internal/tcnative/SSLContext;->setCertificateChainBio(JJZ)Z
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 807
    invoke-static {v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 808
    invoke-static {v14, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 809
    invoke-static {v6, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 810
    if-eqz v8, :cond_2

    .line 811
    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 814
    :cond_2
    return-void

    .line 807
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 804
    :catch_0
    move-exception v0

    goto :goto_2

    .line 802
    :catch_1
    move-exception v0

    goto :goto_3

    .line 807
    :catchall_1
    move-exception v0

    move-wide/from16 v11, p0

    :goto_1
    move-wide v4, v14

    goto :goto_6

    .line 804
    :catch_2
    move-exception v0

    move-wide/from16 v11, p0

    :goto_2
    move-wide v4, v14

    goto :goto_4

    .line 802
    :catch_3
    move-exception v0

    move-wide/from16 v11, p0

    :goto_3
    move-wide v4, v14

    goto :goto_5

    .line 807
    .end local v14    # "keyCertChainBio":J
    .restart local v4    # "keyCertChainBio":J
    :catchall_2
    move-exception v0

    move-wide/from16 v11, p0

    goto :goto_6

    .line 804
    :catch_4
    move-exception v0

    move-wide/from16 v11, p0

    goto :goto_4

    .line 802
    :catch_5
    move-exception v0

    move-wide/from16 v11, p0

    goto :goto_5

    .line 807
    :catchall_3
    move-exception v0

    move-wide/from16 v11, p0

    move-object/from16 v10, p2

    goto :goto_6

    .line 804
    :catch_6
    move-exception v0

    move-wide/from16 v11, p0

    move-object/from16 v10, p2

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    new-instance v9, Ljavax/net/ssl/SSLException;

    const-string v13, "failed to set certificate and key"

    invoke-direct {v9, v13, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "keyBio":J
    .end local v4    # "keyCertChainBio":J
    .end local v6    # "keyCertChainBio2":J
    .end local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .end local p0    # "ctx":J
    .end local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p3    # "key":Ljava/security/PrivateKey;
    .end local p4    # "keyPassword":Ljava/lang/String;
    throw v9

    .line 802
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "keyBio":J
    .restart local v4    # "keyCertChainBio":J
    .restart local v6    # "keyCertChainBio2":J
    .restart local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .restart local p0    # "ctx":J
    .restart local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p3    # "key":Ljava/security/PrivateKey;
    .restart local p4    # "keyPassword":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-wide/from16 v11, p0

    move-object/from16 v10, p2

    .line 803
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :goto_5
    nop

    .end local v2    # "keyBio":J
    .end local v4    # "keyCertChainBio":J
    .end local v6    # "keyCertChainBio2":J
    .end local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .end local p0    # "ctx":J
    .end local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .end local p3    # "key":Ljava/security/PrivateKey;
    .end local p4    # "keyPassword":Ljava/lang/String;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 807
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v2    # "keyBio":J
    .restart local v4    # "keyCertChainBio":J
    .restart local v6    # "keyCertChainBio2":J
    .restart local v8    # "encoded":Lio/netty/handler/ssl/PemEncoded;
    .restart local p0    # "ctx":J
    .restart local p2    # "keyCertChain":[Ljava/security/cert/X509Certificate;
    .restart local p3    # "key":Ljava/security/PrivateKey;
    .restart local p4    # "keyPassword":Ljava/lang/String;
    :catchall_4
    move-exception v0

    :goto_6
    invoke-static {v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 808
    invoke-static {v4, v5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 809
    invoke-static {v6, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    .line 810
    if-eqz v8, :cond_3

    .line 811
    invoke-interface {v8}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 813
    :cond_3
    throw v0
.end method

.method static toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J
    .locals 5
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "pem"    # Lio/netty/handler/ssl/PemEncoded;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 864
    :try_start_0
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 866
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newBIO(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 886
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 867
    return-wide v1

    .line 870
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 872
    .local v1, "buffer":Lio/netty/buffer/ByteBuf;
    :try_start_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 873
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newBIO(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 878
    :try_start_3
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->isSensitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 879
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 882
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 883
    nop

    .line 886
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 873
    return-wide v2

    .line 882
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 883
    :goto_0
    nop

    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 875
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    :catchall_1
    move-exception v2

    .line 878
    :try_start_6
    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->isSensitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 879
    invoke-static {v1}, Lio/netty/handler/ssl/SslUtils;->zeroout(Lio/netty/buffer/ByteBuf;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 882
    :cond_2
    :try_start_7
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 883
    nop

    .line 884
    nop

    .end local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    throw v2

    .line 882
    .restart local p0    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "pem":Lio/netty/handler/ssl/PemEncoded;
    :catchall_2
    move-exception v2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    .line 886
    .end local v0    # "content":Lio/netty/buffer/ByteBuf;
    .end local v1    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_3
    move-exception v0

    invoke-interface {p1}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 887
    throw v0
.end method

.method static toBIO(Lio/netty/buffer/ByteBufAllocator;Ljava/security/PrivateKey;)J
    .locals 3
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 827
    if-nez p1, :cond_0

    .line 828
    const-wide/16 v0, 0x0

    return-wide v0

    .line 831
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lio/netty/handler/ssl/PemPrivateKey;->toPEM(Lio/netty/buffer/ByteBufAllocator;ZLjava/security/PrivateKey;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    .line 833
    .local v0, "pem":Lio/netty/handler/ssl/PemEncoded;
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v1

    invoke-static {p0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 833
    return-wide v1

    .line 835
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 836
    throw v1
.end method

.method static varargs toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J
    .locals 3
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "certChain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 844
    if-nez p1, :cond_0

    .line 845
    const-wide/16 v0, 0x0

    return-wide v0

    .line 848
    :cond_0
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 852
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lio/netty/handler/ssl/PemX509Certificate;->toPEM(Lio/netty/buffer/ByteBufAllocator;Z[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/PemEncoded;

    move-result-object v0

    .line 854
    .local v0, "pem":Lio/netty/handler/ssl/PemEncoded;
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v1

    invoke-static {p0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 854
    return-wide v1

    .line 856
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 857
    throw v1

    .line 849
    .end local v0    # "pem":Lio/netty/handler/ssl/PemEncoded;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "certChain can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .locals 4
    .param p0, "config"    # Lio/netty/handler/ssl/ApplicationProtocolConfig;

    .line 606
    if-nez p0, :cond_0

    .line 607
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object v0

    .line 610
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 637
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 612
    :pswitch_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->NONE_PROTOCOL_NEGOTIATOR:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object v0

    .line 616
    :pswitch_1
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " behavior"

    const-string v2, "OpenSSL provider does not support "

    packed-switch v0, :pswitch_data_1

    .line 631
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 634
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :pswitch_2
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    .line 625
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lio/netty/handler/ssl/ApplicationProtocolConfig;->selectorFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 628
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :pswitch_3
    new-instance v0, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslDefaultApplicationProtocolNegotiator;-><init>(Lio/netty/handler/ssl/ApplicationProtocolConfig;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z
    .locals 2
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 643
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;
    .locals 1

    .line 376
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

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

    .line 361
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->unmodifiableCiphers:Ljava/util/List;

    return-object v0
.end method

.method public final context()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sslCtxPointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBioNonApplicationBufferSize()I
    .locals 1

    .line 478
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    return v0
.end method

.method public getRejectRemoteInitiatedRenegotiation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public final isClient()Z
    .locals 1

    .line 381
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->mode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 419
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;
    .locals 8
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "jdkCompatibilityMode"    # Z

    .line 411
    new-instance v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V

    return-object v7
.end method

.method protected final newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Lio/netty/handler/ssl/SslHandler;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "startTls"    # Z

    .line 396
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v0
.end method

.method protected newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZLjava/util/concurrent/Executor;)Lio/netty/handler/ssl/SslHandler;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "peerHost"    # Ljava/lang/String;
    .param p3, "peerPort"    # I
    .param p4, "startTls"    # Z
    .param p5, "executor"    # Ljava/util/concurrent/Executor;

    .line 407
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method protected final newHandler(Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/ssl/SslHandler;
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "startTls"    # Z

    .line 391
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v0
.end method

.method protected newHandler(Lio/netty/buffer/ByteBufAllocator;ZLjava/util/concurrent/Executor;)Lio/netty/handler/ssl/SslHandler;
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "startTls"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 401
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final refCnt()I
    .locals 1

    .line 648
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    .line 677
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 682
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result v0

    return v0
.end method

.method public final retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 653
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    .line 654
    return-object p0
.end method

.method public final retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "increment"    # I

    .line 659
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    .line 660
    return-object p0
.end method

.method public final sessionCacheSize()J
    .locals 2

    .line 366
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionCacheSize:J

    return-wide v0
.end method

.method public abstract sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final sessionTimeout()J
    .locals 2

    .line 371
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionTimeout:J

    return-wide v0
.end method

.method public setBioNonApplicationBufferSize(I)V
    .locals 1
    .param p1, "bioNonApplicationBufferSize"    # I

    .line 470
    nop

    .line 471
    const-string v0, "bioNonApplicationBufferSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->bioNonApplicationBufferSize:I

    .line 472
    return-void
.end method

.method public final setPrivateKeyMethod(Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 5
    .param p1, "method"    # Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    .line 522
    const-string v0, "method"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 524
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 526
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    new-instance v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;

    iget-object v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-direct {v3, v4, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V

    invoke-static {v1, v2, v3}, Lio/netty/internal/tcnative/SSLContext;->setPrivateKeyMethod(JLio/netty/internal/tcnative/SSLPrivateKeyMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 529
    nop

    .line 530
    return-void

    .line 528
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 529
    throw v1
.end method

.method public setRejectRemoteInitiatedRenegotiation(Z)V
    .locals 2
    .param p1, "rejectRemoteInitiatedRenegotiation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    if-eqz p1, :cond_0

    .line 454
    return-void

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Renegotiation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setTicketKeys([B)V
    .locals 1
    .param p1, "keys"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionContext;->setTicketKeys([B)V

    .line 489
    return-void
.end method

.method final setUseTasks(Z)V
    .locals 3
    .param p1, "useTasks"    # Z

    .line 534
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 535
    .local v0, "writerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 537
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2, p1}, Lio/netty/internal/tcnative/SSLContext;->setUseTasks(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 540
    nop

    .line 541
    return-void

    .line 539
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 540
    throw v1
.end method

.method public final sslCtxPointer()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 504
    .local v0, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 506
    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->getSslCtx(J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 506
    return-wide v1

    .line 508
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 509
    throw v1
.end method

.method public final stats()Lio/netty/handler/ssl/OpenSslSessionStats;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionContext;->stats()Lio/netty/handler/ssl/OpenSslSessionStats;

    move-result-object v0

    return-object v0
.end method

.method public final touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 665
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    .line 666
    return-object p0
.end method

.method public final touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 671
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    .line 672
    return-object p0
.end method
