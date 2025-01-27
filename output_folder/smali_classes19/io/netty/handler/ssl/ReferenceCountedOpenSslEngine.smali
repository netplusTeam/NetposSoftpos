.class public Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "ReferenceCountedOpenSslEngine.java"

# interfaces
.implements Lio/netty/util/ReferenceCounted;
.implements Lio/netty/handler/ssl/ApplicationProtocolAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field static final MAX_PLAINTEXT_LENGTH:I

.field private static final MAX_RECORD_SIZE:I

.field private static final NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final OPENSSL_OP_NO_PROTOCOLS:[I

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV2:I = 0x0

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV3:I = 0x1

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1:I = 0x2

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_1:I = 0x3

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_2:I = 0x4

.field private static final OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_3:I = 0x5

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private algorithmConstraints:Ljava/lang/Object;

.field final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private final apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

.field private volatile applicationProtocol:Ljava/lang/String;

.field private volatile clientAuth:Lio/netty/handler/ssl/ClientAuth;

.field private final clientMode:Z

.field private volatile destroyed:Z

.field private final enableOcsp:Z

.field private endPointIdentificationAlgorithm:Ljava/lang/String;

.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private handshakeException:Ljava/lang/Throwable;

.field private handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field private isInboundDone:Z

.field final jdkCompatibilityMode:Z

.field private volatile lastAccessed:J

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private volatile localCertificateChain:[Ljava/security/cert/Certificate;

.field private volatile matchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation
.end field

.field private maxWrapBufferSize:I

.field private maxWrapOverhead:I

.field private volatile needTask:Z

.field private networkBIO:J

.field private outboundClosed:Z

.field private final parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

.field private receivedShutdown:Z

.field private final refCnt:Lio/netty/util/AbstractReferenceCounted;

.field private final session:Lio/netty/handler/ssl/OpenSslSession;

.field private final singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private sniHostNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssl:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 98
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 100
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 103
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    aput v3, v0, v1

    const/4 v1, 0x2

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    aput v3, v0, v1

    const/4 v1, 0x3

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    aput v3, v0, v1

    const/4 v1, 0x4

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    aput v3, v0, v1

    const/4 v1, 0x5

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    aput v3, v0, v1

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    .line 122
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_MAX_PLAINTEXT_LENGTH:I

    sput v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    .line 126
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_MAX_RECORD_LENGTH:I

    sput v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    .line 128
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 129
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 130
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 131
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 132
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZZ)V
    .locals 8
    .param p1, "context"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "peerHost"    # Ljava/lang/String;
    .param p4, "peerPort"    # I
    .param p5, "jdkCompatibilityMode"    # Z
    .param p6, "leakDetection"    # Z

    .line 233
    invoke-direct {p0, p3, p4}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 165
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$1;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    .line 186
    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 190
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    .line 212
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 213
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 234
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    .line 235
    const-string v1, "alloc"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBufAllocator;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 236
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;

    move-result-object v1

    check-cast v1, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    .line 237
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v1

    iput-boolean v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    .line 238
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    .line 239
    new-instance v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$2;

    new-instance v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V

    invoke-direct {v2, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$2;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSession;)V

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    goto :goto_0

    .line 312
    :cond_0
    new-instance v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    .line 314
    :goto_0
    iget-object v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 315
    iget-boolean v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->enableOcsp:Z

    iput-boolean v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    .line 318
    iget-object v3, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->keyCertChain:[Ljava/security/cert/Certificate;

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->localCertificateChain:[Ljava/security/cert/Certificate;

    .line 320
    iput-boolean p5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    .line 321
    iget-object v3, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctxLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 322
    .local v3, "readerLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 325
    :try_start_0
    iget-wide v4, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->isClient()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v4, v5, v0}, Lio/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 327
    .local v4, "finalSsl":J
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 328
    nop

    .line 329
    monitor-enter p0

    .line 330
    :try_start_1
    iput-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    :try_start_2
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->getBioNonApplicationBufferSize()I

    move-result v0

    invoke-static {v4, v5, v0}, Lio/netty/internal/tcnative/SSL;->bioNewByteBuffer(JI)J

    move-result-wide v6

    iput-wide v6, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    .line 336
    if-eqz v1, :cond_2

    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    :goto_2
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    .line 338
    iget-object v0, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->protocols:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 344
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {p3}, Lio/netty/handler/ssl/SslUtils;->isValidHostNameForSNI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p3}, Lio/netty/internal/tcnative/SSL;->setTlsExtHostName(JLjava/lang/String;)V

    .line 346
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    .line 349
    :cond_4
    if-eqz v2, :cond_5

    .line 350
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->enableOcsp(J)V

    .line 353
    :cond_5
    if-nez p5, :cond_6

    .line 354
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getMode(J)I

    move-result v2

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_MODE_ENABLE_PARTIAL_WRITE:I

    or-int/2addr v2, v6

    invoke-static {v0, v1, v2}, Lio/netty/internal/tcnative/SSL;->setMode(JI)I

    .line 358
    :cond_6
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    goto :goto_3

    .line 359
    :catchall_0
    move-exception v0

    .line 362
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 364
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 366
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    .line 371
    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->retain()Lio/netty/util/ReferenceCounted;

    .line 375
    if-eqz p6, :cond_7

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leak:Lio/netty/util/ResourceLeakTracker;

    .line 376
    return-void

    .line 366
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 327
    .end local v4    # "finalSsl":J
    :catchall_2
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 328
    throw v0
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/util/ResourceLeakTracker;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->leak:Lio/netty/util/ResourceLeakTracker;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->parentContext:Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;

    return-object v0
.end method

.method static synthetic access$1000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V

    return-void
.end method

.method static synthetic access$1202(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p1, "x1"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 98
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-object p1
.end method

.method static synthetic access$1300([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 98
    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400([B)Z
    .locals 1
    .param p0, "x0"    # [B

    .line 98
    invoke-static {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEmpty([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->apn:Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    return-object v0
.end method

.method static synthetic access$1602(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->localCertificateChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 98
    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    return v0
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    return v0
.end method

.method static synthetic access$300(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    return-wide v0
.end method

.method static synthetic access$600(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    return v0
.end method

.method static synthetic access$702(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    return p1
.end method

.method static synthetic access$800(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslSession;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    return-object v0
.end method

.method static synthetic access$900(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 98
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    return-wide v0
.end method

.method private static bufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 2043
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 2047
    :cond_0
    invoke-static {p0}, Lio/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 2043
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private calculateMaxWrapOverhead()V
    .locals 2

    .line 656
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getMaxWrapOverhead(J)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    .line 661
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapBufferSize:I

    .line 662
    return-void
.end method

.method private checkEngineClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1704
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1707
    return-void

    .line 1705
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "engine closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    .line 1276
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeOutbound()V

    .line 1277
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeInbound()V

    .line 1278
    return-void
.end method

.method private doSSLShutdown()Z
    .locals 8

    .line 1430
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->isInInit(J)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1435
    return v1

    .line 1437
    :cond_0
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->shutdownSSL(J)I

    move-result v0

    .line 1438
    .local v0, "err":I
    if-gez v0, :cond_4

    .line 1439
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3, v0}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v2

    .line 1440
    .local v2, "sslErr":I
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_SYSCALL:I

    if-eq v2, v3, :cond_2

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_SSL:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1449
    :cond_1
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    goto :goto_1

    .line 1441
    :cond_2
    :goto_0
    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1442
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v4

    .line 1443
    .local v4, "error":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SSL_shutdown failed: OpenSSL error: {} {}"

    invoke-interface {v3, v7, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1446
    .end local v4    # "error":I
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1447
    return v1

    .line 1451
    .end local v2    # "sslErr":I
    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p1, "pending"    # I

    .line 1831
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needPendingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1832
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    .line 1834
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 1836
    :cond_0
    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 1838
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method private handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1750
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    .line 1751
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 1753
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v0, v1, :cond_1

    .line 1754
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 1757
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->checkEngineClosed()V

    .line 1759
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 1762
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1764
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    .line 1766
    :cond_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 1770
    :cond_3
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p0}, Lio/netty/handler/ssl/OpenSslEngineMap;->add(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    .line 1771
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->lastAccessed:J

    .line 1775
    :cond_4
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    .line 1776
    .local v0, "code":I
    if-gtz v0, :cond_a

    .line 1777
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2, v0}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v1

    .line 1778
    .local v1, "sslError":I
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-eq v1, v2, :cond_9

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 1782
    :cond_5
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v1, v2, :cond_8

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v1, v2, :cond_8

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 1790
    :cond_6
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 1791
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    return-object v2

    .line 1795
    :cond_7
    const-string v2, "SSL_do_handshake"

    invoke-direct {p0, v2, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 1785
    :cond_8
    :goto_0
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v2

    .line 1779
    :cond_9
    :goto_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v2

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    return-object v2

    .line 1798
    .end local v1    # "sslError":I
    :cond_a
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v1

    if-lez v1, :cond_b

    .line 1799
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v1

    .line 1802
    :cond_b
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v1}, Lio/netty/handler/ssl/OpenSslSession;->handshakeFinished()V

    .line 1803
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v1
.end method

.method private handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1723
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_0

    .line 1725
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 1728
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    .line 1729
    .local v0, "exception":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 1730
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    .line 1731
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1732
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    .line 1733
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1

    .line 1735
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "General OpenSslEngine problem"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 1736
    .local v1, "e":Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1737
    throw v1

    .line 1729
    .end local v1    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private isBytesAvailableEnoughForWrap(III)Z
    .locals 6
    .param p1, "bytesAvailable"    # I
    .param p2, "plaintextLength"    # I
    .param p3, "numComponents"    # I

    .line 673
    int-to-long v0, p1

    iget v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    int-to-long v2, v2

    int-to-long v4, p3

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDestroyed()Z
    .locals 1

    .line 2030
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    return v0
.end method

.method private static isEmpty([B)Z
    .locals 1
    .param p0, "cert"    # [B

    .line 1719
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arr"    # [Ljava/lang/Object;

    .line 1715
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isEndPointVerificationEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "endPointIdentificationAlgorithm"    # Ljava/lang/String;

    .line 2026
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isProtocolEnabled(IILjava/lang/String;)Z
    .locals 1
    .param p0, "opts"    # I
    .param p1, "disableMask"    # I
    .param p2, "protocolString"    # Ljava/lang/String;

    .line 1573
    and-int v0, p0, p1

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1808
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    .line 1811
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 1813
    :cond_0
    return-object p1
.end method

.method private needPendingStatus()Z
    .locals 2

    .line 1842
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v0, v1, :cond_0

    .line 1843
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1842
    :goto_0
    return v0
.end method

.method private newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I

    .line 949
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method private newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I

    .line 957
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 963
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 965
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v0, v1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    .line 967
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p2, v0, :cond_2

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    .line 971
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0
.end method

.method private newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 976
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method private newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "hs"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 983
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method private static pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p0, "pendingStatus"    # I

    .line 1711
    if-lez p0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object v0
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 593
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Lio/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result v1

    .line 595
    .local v1, "sslRead":I
    if-lez v1, :cond_2

    .line 596
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 599
    .end local v1    # "sslRead":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 600
    .local v1, "limit":I
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v2

    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 601
    .local v2, "len":I
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v3, v2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 603
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Lio/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result v4

    .line 604
    .local v4, "sslRead":I
    if-lez v4, :cond_1

    .line 605
    add-int v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 606
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    invoke-virtual {v3, v5, p1}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 607
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :cond_1
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 611
    move v1, v4

    .line 614
    .end local v2    # "len":I
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v4    # "sslRead":I
    .local v1, "sslRead":I
    :cond_2
    :goto_0
    return v1

    .line 610
    .local v1, "limit":I
    .restart local v2    # "len":I
    .restart local v3    # "buf":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 611
    throw v4
.end method

.method private rejectRemoteInitiatedRenegotiation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 1284
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getHandshakeCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    .line 1287
    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1291
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "remote-initiated renegotiation not allowed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_1
    :goto_0
    return-void
.end method

.method private resetSingleDstBuffer()V
    .locals 3

    .line 1314
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1315
    return-void
.end method

.method private resetSingleSrcBuffer()V
    .locals 3

    .line 1305
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1306
    return-void
.end method

.method private setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V
    .locals 4
    .param p1, "mode"    # Lio/netty/handler/ssl/ClientAuth;

    .line 1922
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_0

    .line 1923
    return-void

    .line 1925
    :cond_0
    monitor-enter p0

    .line 1926
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    if-ne v0, p1, :cond_1

    .line 1928
    monitor-exit p0

    return-void

    .line 1930
    :cond_1
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ClientAuth:[I

    invoke-virtual {p1}, Lio/netty/handler/ssl/ClientAuth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xa

    packed-switch v0, :pswitch_data_0

    .line 1941
    new-instance v0, Ljava/lang/Error;

    goto :goto_1

    .line 1938
    :pswitch_0
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v0, 0x1

    invoke-static {v2, v3, v0, v1}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 1939
    goto :goto_0

    .line 1935
    :pswitch_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v0, 0x2

    invoke-static {v2, v3, v0, v1}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 1936
    goto :goto_0

    .line 1932
    :pswitch_2
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 1933
    nop

    .line 1943
    :goto_0
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    .line 1944
    monitor-exit p0

    .line 1945
    return-void

    .line 1941
    :goto_1
    invoke-virtual {p1}, Lio/netty/handler/ssl/ClientAuth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local p1    # "mode":Lio/netty/handler/ssl/ClientAuth;
    throw v0

    .line 1944
    .restart local p1    # "mode":Lio/netty/handler/ssl/ClientAuth;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "operations"    # Ljava/lang/String;
    .param p2, "sslError"    # I

    .line 991
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method private shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;
    .locals 5
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "sslError"    # I
    .param p3, "error"    # I

    .line 995
    int-to-long v0, p3

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "errorString":Ljava/lang/String;
    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 998
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 997
    const-string v3, "{} failed with {}: OpenSSL error: {} {}"

    invoke-interface {v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1003
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-ne v1, v2, :cond_1

    .line 1004
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1007
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v1, "exception":Ljavax/net/ssl/SSLHandshakeException;
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 1010
    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1011
    const/4 v2, 0x0

    iput-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    .line 1013
    :cond_2
    return-object v1
.end method

.method private singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1309
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1310
    return-object v0
.end method

.method private singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1300
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1301
    return-object v0
.end method

.method private sslPending0()I
    .locals 2

    .line 669
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->sslPending(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method private sslReadErrorResult(IIII)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "error"    # I
    .param p2, "stackError"    # I
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1260
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_1

    .line 1261
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_0

    .line 1264
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    int-to-long v1, p2

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    .line 1268
    :cond_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V

    .line 1269
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    .line 1271
    :cond_1
    const-string v0, "SSL_read"

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0
.end method

.method private toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "openSslCipherSuite"    # Ljava/lang/String;

    .line 1850
    if-nez p1, :cond_0

    .line 1851
    const/4 v0, 0x0

    return-object v0

    .line 1854
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuitePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1856
    .local v1, "prefix":Ljava/lang/String;
    invoke-static {p1, v1}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toJavaCipherSuitePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "protocolVersion"    # Ljava/lang/String;

    .line 1864
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    goto :goto_1

    .line 1865
    .end local v0    # "c":C
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1870
    .restart local v0    # "c":C
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1876
    const-string v1, "UNKNOWN"

    return-object v1

    .line 1872
    :pswitch_0
    const-string v1, "TLS"

    return-object v1

    .line 1874
    :pswitch_1
    const-string v1, "SSL"

    return-object v1

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;I)Lio/netty/buffer/ByteBuf;
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I

    .line 564
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 565
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    const/4 v7, 0x0

    move v6, p2

    invoke-static/range {v2 .. v7}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 570
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 571
    .local v2, "limit":I
    add-int v3, v0, p2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 572
    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 574
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 575
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 577
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v1}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v6

    const/4 v9, 0x0

    move v8, p2

    invoke-static/range {v4 .. v9}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    return-object v1

    .line 579
    .end local v2    # "limit":I
    :catchall_0
    move-exception v2

    .line 580
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 581
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 584
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I

    .line 530
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 531
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 534
    .local v1, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5, p2}, Lio/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result v2

    .line 536
    .local v2, "sslWrote":I
    if-lez v2, :cond_2

    .line 537
    add-int v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 540
    .end local v2    # "sslWrote":I
    :cond_0
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v2, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 542
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    add-int v3, v0, p2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 544
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 545
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 547
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p2}, Lio/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result v3

    .line 548
    .local v3, "sslWrote":I
    if-lez v3, :cond_1

    .line 549
    add-int v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :goto_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 555
    move v2, v3

    .line 557
    .end local v3    # "sslWrote":I
    .local v2, "sslWrote":I
    :cond_2
    :goto_1
    return v2

    .line 554
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 555
    throw v3
.end method


# virtual methods
.method final declared-synchronized authMethods()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 382
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->authenticationMethods(J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized beginHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1671
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState:[I

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1699
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    new-instance v0, Ljava/lang/Error;

    goto :goto_1

    .line 1687
    .restart local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :pswitch_0
    goto :goto_0

    .line 1673
    :pswitch_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->checkEngineClosed()V

    .line 1681
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 1682
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V

    .line 1684
    goto :goto_0

    .line 1689
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :pswitch_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "renegotiation unsupported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :pswitch_3
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 1692
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    .line 1694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    .line 1696
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->calculateMaxWrapOverhead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    nop

    .line 1701
    :goto_0
    monitor-exit p0

    return-void

    .line 1699
    :goto_1
    :try_start_1
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final calculateMaxLengthForWrap(II)I
    .locals 8
    .param p1, "plaintextLength"    # I
    .param p2, "numComponents"    # I

    .line 645
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapBufferSize:I

    int-to-long v0, v0

    int-to-long v2, p1

    iget v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    int-to-long v4, v4

    int-to-long v6, p2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method final checkSniHostnameMatch([B)Z
    .locals 1
    .param p1, "hostname"    # [B

    .line 2034
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    invoke-static {v0, p1}, Lio/netty/handler/ssl/Java8SslUtils;->checkSniHostnameMatch(Ljava/util/Collection;[B)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized closeInbound()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1383
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1384
    monitor-exit p0

    return-void

    .line 1387
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    .line 1389
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V

    .line 1395
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1396
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1399
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized closeOutbound()V
    .locals 3

    monitor-enter p0

    .line 1408
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1409
    monitor-exit p0

    return-void

    .line 1412
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    .line 1414
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1415
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    .line 1416
    .local v0, "mode":I
    sget v1, Lio/netty/internal/tcnative/SSL;->SSL_SENT_SHUTDOWN:I

    and-int/2addr v1, v0

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_SENT_SHUTDOWN:I

    if-eq v1, v2, :cond_1

    .line 1417
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->doSSLShutdown()Z

    .line 1419
    .end local v0    # "mode":I
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_1
    goto :goto_0

    .line 1421
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    :goto_0
    monitor-exit p0

    return-void

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 4

    monitor-enter p0

    .line 1357
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1358
    monitor-exit p0

    return-object v1

    .line 1360
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getTask(J)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 1362
    monitor-exit p0

    return-object v1

    .line 1364
    :cond_1
    :try_start_2
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$3;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1356
    .end local v0    # "task":Ljava/lang/Runnable;
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEnableSessionCreation()Z
    .locals 1

    .line 1956
    const/4 v0, 0x0

    return v0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .locals 6

    .line 1469
    monitor-enter p0

    .line 1470
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1471
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "enabled":[Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1476
    if-nez v0, :cond_0

    .line 1477
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v1

    .line 1479
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v1, "enabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1481
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 1482
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->toJavaCipherSuite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1483
    .local v3, "mapped":Ljava/lang/String;
    if-nez v3, :cond_1

    aget-object v4, v0, v2

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 1484
    .local v4, "cipher":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1485
    goto :goto_2

    .line 1487
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    .end local v3    # "mapped":Ljava/lang/String;
    .end local v4    # "cipher":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1489
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 1489
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1473
    .end local v0    # "enabled":[Ljava/lang/String;
    .end local v1    # "enabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 1475
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .locals 5

    .line 1537
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1539
    .local v0, "enabled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SSLv2Hello"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    monitor-enter p0

    .line 1543
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 1544
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    .line 1548
    .local v1, "opts":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1549
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    const-string v4, "TLSv1"

    invoke-static {v1, v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1550
    const-string v3, "TLSv1"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    :cond_0
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    const-string v4, "TLSv1.1"

    invoke-static {v1, v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1553
    const-string v3, "TLSv1.1"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    :cond_1
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    const-string v4, "TLSv1.2"

    invoke-static {v1, v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1556
    const-string v3, "TLSv1.2"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    :cond_2
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    const-string v4, "TLSv1.3"

    invoke-static {v1, v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1559
    const-string v3, "TLSv1.3"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_3
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    const-string v4, "SSLv2"

    invoke-static {v1, v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1562
    const-string v3, "SSLv2"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_4
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    const-string v4, "SSLv3"

    invoke-static {v1, v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isProtocolEnabled(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1565
    const-string v3, "SSLv3"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    :cond_5
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 1546
    .end local v1    # "opts":I
    :cond_6
    :try_start_1
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 1548
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    monitor-enter p0

    .line 489
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState:[I

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 494
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 494
    :goto_0
    monitor-exit p0

    return-object v0

    .line 488
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    monitor-enter p0

    .line 1819
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needPendingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1820
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->needTask:Z

    if-eqz v0, :cond_0

    .line 1822
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1824
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1826
    :cond_1
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getNeedClientAuth()Z
    .locals 2

    .line 1899
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    sget-object v1, Lio/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/netty/handler/ssl/ClientAuth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNegotiatedApplicationProtocol()Ljava/lang/String;
    .locals 1

    .line 2039
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getOcspResponse()[B
    .locals 2

    .line 428
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    if-eqz v0, :cond_2

    .line 432
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v0, :cond_1

    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    monitor-exit p0

    return-object v0

    .line 440
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->getOcspResponse(J)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 433
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a client SSLEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OCSP stapling is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 4

    monitor-enter p0

    .line 1962
    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 1964
    .local v0, "sslParameters":Ljavax/net/ssl/SSLParameters;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    .line 1965
    .local v1, "version":I
    const/4 v2, 0x7

    if-lt v1, v2, :cond_3

    .line 1966
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->endPointIdentificationAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 1967
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->algorithmConstraints:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java7SslParametersUtils;->setAlgorithmConstraints(Ljavax/net/ssl/SSLParameters;Ljava/lang/Object;)V

    .line 1968
    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    .line 1969
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1970
    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java8SslUtils;->setSniHostNames(Ljavax/net/ssl/SSLParameters;Ljava/util/List;)V

    .line 1972
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1973
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    .line 1974
    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v2

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1973
    :goto_0
    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java8SslUtils;->setUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;Z)V

    .line 1977
    :cond_2
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    invoke-static {v0, v2}, Lio/netty/handler/ssl/Java8SslUtils;->setSNIMatchers(Ljavax/net/ssl/SSLParameters;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1980
    :cond_3
    monitor-exit p0

    return-object v0

    .line 1961
    .end local v0    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    .end local v1    # "version":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1666
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 1463
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .locals 2

    .line 1532
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getUseClientMode()Z
    .locals 1

    .line 1889
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    return v0
.end method

.method public final getWantClientAuth()Z
    .locals 2

    .line 1909
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientAuth:Lio/netty/handler/ssl/ClientAuth;

    sget-object v1, Lio/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/netty/handler/ssl/ClientAuth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final initHandshakeException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1745
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1746
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    .line 1747
    return-void

    .line 1745
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final declared-synchronized isInboundDone()Z
    .locals 1

    monitor-enter p0

    .line 1403
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1403
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isOutboundDone()Z
    .locals 4

    monitor-enter p0

    .line 1458
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 1458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized masterKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    monitor-enter p0

    .line 397
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 400
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getMasterKey(J)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 396
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized maxEncryptedPacketLength()I
    .locals 1

    monitor-enter p0

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength0()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 628
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final maxEncryptedPacketLength0()I
    .locals 2

    .line 636
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I

    sget v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    add-int/2addr v0, v1

    return v0
.end method

.method final declared-synchronized maxWrapOverhead()I
    .locals 1

    monitor-enter p0

    .line 621
    :try_start_0
    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 621
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final refCnt()I
    .locals 1

    .line 446
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 480
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result v0

    return v0
.end method

.method public final retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 451
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    .line 452
    return-object p0
.end method

.method public final retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "increment"    # I

    .line 457
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    .line 458
    return-object p0
.end method

.method public final setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1949
    if-nez p1, :cond_0

    .line 1952
    return-void

    .line 1950
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 8
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 1496
    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1499
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .local v1, "bufTLSv13":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lio/netty/handler/ssl/CipherSuiteConverter;->convertToCipherStrings(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    .line 1502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1503
    .local v2, "cipherSuiteSpec":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1505
    .local v3, "cipherSuiteSpecTLSv13":Ljava/lang/String;
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1506
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "TLSv1.3 is not supported by this java version."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1508
    :cond_1
    :goto_0
    monitor-enter p0

    .line 1509
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 1514
    :try_start_1
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Lio/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z

    .line 1516
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isTlsv13Supported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1518
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v6, 0x1

    invoke-static {v4, v5, v3, v6}, Lio/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    :cond_2
    nop

    .line 1527
    :try_start_2
    monitor-exit p0

    .line 1528
    return-void

    .line 1521
    :catch_0
    move-exception v4

    .line 1522
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to enable cipher suites: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .end local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .end local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .end local p1    # "cipherSuites":[Ljava/lang/String;
    throw v5

    .line 1525
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .restart local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .restart local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .restart local p1    # "cipherSuites":[Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to enable cipher suites: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .end local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .end local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .end local p1    # "cipherSuites":[Ljava/lang/String;
    throw v4

    .line 1527
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "bufTLSv13":Ljava/lang/StringBuilder;
    .restart local v2    # "cipherSuiteSpec":Ljava/lang/String;
    .restart local v3    # "cipherSuiteSpecTLSv13":Ljava/lang/String;
    .restart local p1    # "cipherSuites":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 6
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1587
    if-eqz p1, :cond_12

    .line 1591
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    array-length v0, v0

    .line 1592
    .local v0, "minProtocolIndex":I
    const/4 v1, 0x0

    .line 1593
    .local v1, "maxProtocolIndex":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_d

    aget-object v4, p1, v3

    .line 1594
    .local v4, "p":Ljava/lang/String;
    sget-object v5, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1597
    const-string v5, "SSLv2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1598
    if-lez v0, :cond_0

    .line 1599
    const/4 v0, 0x0

    .line 1601
    :cond_0
    if-gez v1, :cond_b

    .line 1602
    const/4 v1, 0x0

    goto :goto_1

    .line 1604
    :cond_1
    const-string v5, "SSLv3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1605
    const/4 v5, 0x1

    if-le v0, v5, :cond_2

    .line 1606
    const/4 v0, 0x1

    .line 1608
    :cond_2
    if-ge v1, v5, :cond_b

    .line 1609
    const/4 v1, 0x1

    goto :goto_1

    .line 1611
    :cond_3
    const-string v5, "TLSv1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1612
    const/4 v5, 0x2

    if-le v0, v5, :cond_4

    .line 1613
    const/4 v0, 0x2

    .line 1615
    :cond_4
    if-ge v1, v5, :cond_b

    .line 1616
    const/4 v1, 0x2

    goto :goto_1

    .line 1618
    :cond_5
    const-string v5, "TLSv1.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1619
    const/4 v5, 0x3

    if-le v0, v5, :cond_6

    .line 1620
    const/4 v0, 0x3

    .line 1622
    :cond_6
    if-ge v1, v5, :cond_b

    .line 1623
    const/4 v1, 0x3

    goto :goto_1

    .line 1625
    :cond_7
    const-string v5, "TLSv1.2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1626
    const/4 v5, 0x4

    if-le v0, v5, :cond_8

    .line 1627
    const/4 v0, 0x4

    .line 1629
    :cond_8
    if-ge v1, v5, :cond_b

    .line 1630
    const/4 v1, 0x4

    goto :goto_1

    .line 1632
    :cond_9
    const-string v5, "TLSv1.3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1633
    const/4 v5, 0x5

    if-le v0, v5, :cond_a

    .line 1634
    const/4 v0, 0x5

    .line 1636
    :cond_a
    if-ge v1, v5, :cond_b

    .line 1637
    const/4 v1, 0x5

    .line 1593
    .end local v4    # "p":Ljava/lang/String;
    :cond_b
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1595
    .restart local v4    # "p":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Protocol "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not supported."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1641
    .end local v4    # "p":Ljava/lang/String;
    :cond_d
    monitor-enter p0

    .line 1642
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1644
    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v4, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    or-int/2addr v4, v5

    sget v5, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    or-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->clearOptions(JI)V

    .line 1647
    const/4 v2, 0x0

    .line 1648
    .local v2, "opts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_e

    .line 1649
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    aget v4, v4, v3

    or-int/2addr v2, v4

    .line 1648
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1651
    .end local v3    # "i":I
    :cond_e
    const v3, 0x7fffffff

    if-eq v1, v3, :cond_10

    .line 1652
    add-int/lit8 v3, v1, 0x1

    .restart local v3    # "i":I
    :goto_3
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->OPENSSL_OP_NO_PROTOCOLS:[I

    array-length v5, v4

    if-ge v3, v5, :cond_f

    .line 1653
    aget v4, v4, v3

    or-int/2addr v2, v4

    .line 1652
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1657
    .end local v3    # "i":I
    :cond_f
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v3, v4, v2}, Lio/netty/internal/tcnative/SSL;->setOptions(JI)V

    .line 1658
    .end local v2    # "opts":I
    nop

    .line 1661
    monitor-exit p0

    .line 1662
    return-void

    .line 1651
    .restart local v2    # "opts":I
    :cond_10
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "minProtocolIndex":I
    .end local v1    # "maxProtocolIndex":I
    .end local p1    # "protocols":[Ljava/lang/String;
    throw v3

    .line 1659
    .end local v2    # "opts":I
    .restart local v0    # "minProtocolIndex":I
    .restart local v1    # "maxProtocolIndex":I
    .restart local p1    # "protocols":[Ljava/lang/String;
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to enable protocols: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "minProtocolIndex":I
    .end local v1    # "maxProtocolIndex":I
    .end local p1    # "protocols":[Ljava/lang/String;
    throw v2

    .line 1661
    .restart local v0    # "minProtocolIndex":I
    .restart local v1    # "maxProtocolIndex":I
    .restart local p1    # "protocols":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1589
    .end local v0    # "minProtocolIndex":I
    .end local v1    # "maxProtocolIndex":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method final setKeyMaterial(Lio/netty/handler/ssl/OpenSslKeyMaterial;)Z
    .locals 7
    .param p1, "keyMaterial"    # Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 390
    :cond_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->certificateChainAddress()J

    move-result-wide v3

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->privateKeyAddress()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lio/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V

    .line 391
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->certificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->localCertificateChain:[Ljava/security/cert/Certificate;

    .line 393
    const/4 v0, 0x1

    return v0

    .line 391
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setNeedClientAuth(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1894
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    .line 1895
    return-void
.end method

.method public setOcspResponse([B)V
    .locals 2
    .param p1, "response"    # [B

    .line 408
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->enableOcsp:Z

    if-eqz v0, :cond_2

    .line 412
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-nez v0, :cond_1

    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1}, Lio/netty/internal/tcnative/SSL;->setOcspResponse(J[B)V

    .line 420
    :cond_0
    monitor-exit p0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a server SSLEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OCSP stapling is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 7
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    monitor-enter p0

    .line 1986
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    .line 1987
    .local v0, "version":I
    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    .line 1988
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1992
    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    .line 1993
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1994
    iget-boolean v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v1, :cond_1

    .line 1995
    invoke-static {p1}, Lio/netty/handler/ssl/Java8SslUtils;->getSniHostNames(Ljavax/net/ssl/SSLParameters;)Ljava/util/List;

    move-result-object v1

    .line 1996
    .local v1, "sniHostNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1997
    .local v3, "name":Ljava/lang/String;
    iget-wide v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v4, v5, v3}, Lio/netty/internal/tcnative/SSL;->setTlsExtHostName(JLjava/lang/String;)V

    .line 1998
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1999
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sniHostNames:Ljava/util/List;

    .line 2001
    .end local v1    # "sniHostNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p1}, Lio/netty/handler/ssl/Java8SslUtils;->getUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2002
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    invoke-static {v1, v2, v3}, Lio/netty/internal/tcnative/SSL;->setOptions(JI)V

    goto :goto_1

    .line 2004
    :cond_2
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_CIPHER_SERVER_PREFERENCE:I

    invoke-static {v1, v2, v3}, Lio/netty/internal/tcnative/SSL;->clearOptions(JI)V

    .line 2007
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->matchers:Ljava/util/Collection;

    .line 2010
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 2011
    .local v1, "endPointIdentificationAlgorithm":Ljava/lang/String;
    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isEndPointVerificationEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 2015
    .local v2, "endPointVerificationEnabled":Z
    iget-boolean v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 2016
    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 2019
    :cond_5
    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->endPointIdentificationAlgorithm:Ljava/lang/String;

    .line 2020
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->algorithmConstraints:Ljava/lang/Object;

    goto :goto_2

    .line 1989
    .end local v1    # "endPointIdentificationAlgorithm":Ljava/lang/String;
    .end local v2    # "endPointVerificationEnabled":Z
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AlgorithmConstraints are not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2022
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2023
    monitor-exit p0

    return-void

    .line 1985
    .end local v0    # "version":I
    .end local p1    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setUseClientMode(Z)V
    .locals 1
    .param p1, "clientMode"    # Z

    .line 1882
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->clientMode:Z

    if-ne p1, v0, :cond_0

    .line 1885
    return-void

    .line 1883
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized setVerify(II)V
    .locals 2
    .param p1, "verifyMode"    # I
    .param p2, "depth"    # I

    monitor-enter p0

    .line 1918
    :try_start_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v0, v1, p1, p2}, Lio/netty/internal/tcnative/SSL;->setVerify(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    monitor-exit p0

    return-void

    .line 1917
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .end local p1    # "verifyMode":I
    .end local p2    # "depth":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWantClientAuth(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 1904
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setClientAuth(Lio/netty/handler/ssl/ClientAuth;)V

    .line 1905
    return-void
.end method

.method public final declared-synchronized shutdown()V
    .locals 4

    monitor-enter p0

    .line 511
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    if-nez v0, :cond_0

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->destroyed:Z

    .line 513
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/ssl/OpenSslEngineMap;->remove(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 514
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    .line 515
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    .line 517
    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    iput-boolean v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    .line 521
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :cond_0
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->clearError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized sslPending()I
    .locals 1

    monitor-enter p0

    .line 649
    :try_start_0
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 649
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sslPointer()J
    .locals 2

    monitor-enter p0

    .line 504
    :try_start_0
    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 504
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 463
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    .line 464
    return-object p0
.end method

.method public final touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->refCnt:Lio/netty/util/AbstractReferenceCounted;

    invoke-virtual {v0, p1}, Lio/netty/util/AbstractReferenceCounted;->touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;

    .line 470
    return-object p0
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1339
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1342
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleDstBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1339
    monitor-exit p0

    return-object v0

    .line 1341
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1342
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleDstBuffer()V

    .line 1343
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1338
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1349
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1349
    monitor-exit p0

    return-object v0

    .line 1351
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1352
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1348
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1321
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1321
    monitor-exit p0

    return-object v0

    .line 1323
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1324
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1320
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p3    # "offset":I
    .end local p4    # "length":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 25
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1021
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const-string v0, "srcs"

    invoke-static {v2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1022
    array-length v0, v2

    if-ge v3, v0, :cond_39

    add-int v0, v3, v4

    array-length v8, v2

    if-gt v0, v8, :cond_39

    .line 1028
    if-eqz v5, :cond_38

    .line 1031
    array-length v0, v5

    if-ge v6, v0, :cond_37

    add-int v0, v6, v7

    array-length v8, v5

    if-gt v0, v8, :cond_37

    .line 1036
    const-wide/16 v8, 0x0

    .line 1037
    .local v8, "capacity":J
    add-int v10, v6, v7

    .line 1038
    .local v10, "dstsEndOffset":I
    move/from16 v0, p5

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 1039
    aget-object v11, v5, v0

    .line 1040
    .local v11, "dst":Ljava/nio/ByteBuffer;
    if-eqz v11, :cond_1

    .line 1043
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1046
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v8, v12

    .line 1038
    .end local v11    # "dst":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    .restart local v11    # "dst":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v12, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v12}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v12

    .line 1041
    :cond_1
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dsts["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] is null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1049
    .end local v0    # "i":I
    .end local v11    # "dst":Ljava/nio/ByteBuffer;
    :cond_2
    add-int v11, v3, v4

    .line 1050
    .local v11, "srcsEndOffset":I
    const-wide/16 v12, 0x0

    .line 1051
    .local v12, "len":J
    move/from16 v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v11, :cond_4

    .line 1052
    aget-object v14, v2, v0

    .line 1053
    .local v14, "src":Ljava/nio/ByteBuffer;
    if-eqz v14, :cond_3

    .line 1056
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    move-object/from16 v16, v14

    .end local v14    # "src":Ljava/nio/ByteBuffer;
    .local v16, "src":Ljava/nio/ByteBuffer;
    int-to-long v14, v15

    add-long/2addr v12, v14

    .line 1051
    .end local v16    # "src":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1054
    .restart local v14    # "src":Ljava/nio/ByteBuffer;
    :cond_3
    move-object/from16 v16, v14

    .end local v14    # "src":Ljava/nio/ByteBuffer;
    .restart local v16    # "src":Ljava/nio/ByteBuffer;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srcs["

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, "] is null"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1059
    .end local v0    # "i":I
    .end local v16    # "src":Ljava/nio/ByteBuffer;
    :cond_4
    monitor-enter p0

    .line 1060
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_19

    if-eqz v0, :cond_7

    .line 1061
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 1251
    :catchall_0
    move-exception v0

    move/from16 v16, v6

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    goto/16 :goto_18

    .line 1064
    :cond_7
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1066
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_19

    const/4 v15, 0x0

    if-eq v4, v14, :cond_c

    .line 1067
    :try_start_3
    iget-object v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v14, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v4, v14, :cond_8

    .line 1069
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 1072
    :cond_8
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    move-object v0, v4

    .line 1074
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v4, :cond_9

    .line 1075
    invoke-direct {v1, v0, v15, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 1078
    :cond_9
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v4, :cond_a

    .line 1079
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0

    return-object v4

    .line 1082
    :cond_a
    iget-boolean v4, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone:Z

    if-eqz v4, :cond_b

    .line 1083
    sget-object v4, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v4

    .line 1082
    :cond_b
    move-object v4, v0

    goto :goto_4

    .line 1066
    :cond_c
    move-object v4, v0

    .line 1087
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_4
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v0

    .line 1093
    .local v0, "sslPending":I
    iget-boolean v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_19

    const-wide/16 v16, 0x0

    if-eqz v14, :cond_12

    .line 1094
    const-wide/16 v18, 0x5

    cmp-long v14, v12, v18

    if-gez v14, :cond_d

    .line 1095
    :try_start_5
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1, v14, v4, v15, v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v14

    .line 1098
    :cond_d
    :try_start_6
    invoke-static/range {p1 .. p2}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v14

    .line 1099
    .local v14, "packetLength":I
    const/4 v15, -0x2

    if-eq v14, v15, :cond_11

    .line 1103
    add-int/lit8 v15, v14, -0x5

    .line 1104
    .local v15, "packetLengthDataOnly":I
    int-to-long v6, v15

    cmp-long v6, v6, v8

    if-lez v6, :cond_f

    .line 1107
    sget v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-gt v15, v6, :cond_e

    .line 1116
    :try_start_7
    iget-object v6, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    invoke-interface {v6, v15}, Lio/netty/handler/ssl/OpenSslSession;->tryExpandApplicationBufferSize(I)V

    .line 1118
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v4, v7, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object v6

    .line 1251
    .end local v0    # "sslPending":I
    .end local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "packetLength":I
    .end local v15    # "packetLengthDataOnly":I
    :catchall_1
    move-exception v0

    move/from16 v16, p5

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    goto/16 :goto_18

    .line 1113
    .restart local v0    # "sslPending":I
    .restart local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v14    # "packetLength":I
    .restart local v15    # "packetLengthDataOnly":I
    :cond_e
    :try_start_8
    new-instance v6, Ljavax/net/ssl/SSLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v19, v10

    .end local v10    # "dstsEndOffset":I
    .local v19, "dstsEndOffset":I
    :try_start_9
    const-string v10, "Illegal packet length: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " > "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->session:Lio/netty/handler/ssl/OpenSslSession;

    .line 1114
    invoke-interface {v10}, Lio/netty/handler/ssl/OpenSslSession;->getApplicationBufferSize()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v8    # "capacity":J
    .end local v11    # "srcsEndOffset":I
    .end local v12    # "len":J
    .end local v19    # "dstsEndOffset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v6

    .line 1121
    .restart local v8    # "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_f
    move/from16 v19, v10

    .end local v10    # "dstsEndOffset":I
    .restart local v19    # "dstsEndOffset":I
    int-to-long v6, v14

    cmp-long v6, v12, v6

    if-gez v6, :cond_10

    .line 1124
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v4, v7, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    monitor-exit p0

    return-object v6

    .line 1126
    .end local v15    # "packetLengthDataOnly":I
    :cond_10
    goto :goto_5

    .line 1100
    .end local v19    # "dstsEndOffset":I
    .restart local v10    # "dstsEndOffset":I
    :cond_11
    move/from16 v19, v10

    .end local v10    # "dstsEndOffset":I
    .restart local v19    # "dstsEndOffset":I
    new-instance v6, Lio/netty/handler/ssl/NotSslRecordException;

    const-string v7, "not an SSL/TLS record"

    invoke-direct {v6, v7}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .end local v8    # "capacity":J
    .end local v11    # "srcsEndOffset":I
    .end local v12    # "len":J
    .end local v19    # "dstsEndOffset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v6

    .line 1251
    .end local v0    # "sslPending":I
    .end local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "packetLength":I
    .restart local v8    # "capacity":J
    .restart local v10    # "dstsEndOffset":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catchall_2
    move-exception v0

    move/from16 v16, p5

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    .end local v10    # "dstsEndOffset":I
    .restart local v19    # "dstsEndOffset":I
    goto/16 :goto_18

    .line 1126
    .end local v19    # "dstsEndOffset":I
    .restart local v0    # "sslPending":I
    .restart local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v10    # "dstsEndOffset":I
    :cond_12
    move/from16 v19, v10

    .end local v10    # "dstsEndOffset":I
    .restart local v19    # "dstsEndOffset":I
    cmp-long v6, v12, v16

    if-nez v6, :cond_13

    if-gtz v0, :cond_13

    .line 1127
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v4, v7, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    monitor-exit p0

    return-object v6

    .line 1128
    :cond_13
    cmp-long v6, v8, v16

    if-nez v6, :cond_14

    .line 1129
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v4, v7, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-object v6

    .line 1251
    .end local v0    # "sslPending":I
    .end local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_3
    move-exception v0

    move/from16 v16, p5

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move/from16 v13, v19

    goto/16 :goto_18

    .line 1131
    .restart local v0    # "sslPending":I
    .restart local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_14
    const-wide/32 v6, 0x7fffffff

    :try_start_a
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_18

    long-to-int v6, v6

    move v14, v6

    .line 1135
    .restart local v14    # "packetLength":I
    :goto_5
    if-ge v3, v11, :cond_36

    .line 1138
    cmp-long v6, v8, v16

    if-lez v6, :cond_35

    .line 1141
    const/4 v6, 0x0

    .line 1142
    .local v6, "bytesProduced":I
    const/4 v7, 0x0

    move v10, v6

    move v15, v14

    move/from16 v6, p5

    move v14, v7

    move v7, v0

    .line 1146
    .end local v0    # "sslPending":I
    .end local p2    # "srcsOffset":I
    .end local p5    # "dstsOffset":I
    .local v3, "srcsOffset":I
    .local v6, "dstsOffset":I
    .local v7, "sslPending":I
    .local v10, "bytesProduced":I
    .local v14, "bytesConsumed":I
    .local v15, "packetLength":I
    :goto_6
    :try_start_b
    aget-object v0, v2, v3

    move-object/from16 p2, v0

    .line 1147
    .local p2, "src":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_16

    move/from16 p5, v0

    .line 1150
    .local p5, "remaining":I
    move/from16 v16, v6

    move/from16 v6, p5

    .end local p5    # "remaining":I
    .local v6, "remaining":I
    .local v16, "dstsOffset":I
    if-nez v6, :cond_17

    .line 1151
    if-gtz v7, :cond_16

    .line 1154
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v11, :cond_15

    .line 1155
    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move/from16 v13, v19

    goto/16 :goto_13

    .line 1154
    :cond_15
    move/from16 v6, v16

    goto :goto_6

    .line 1159
    :cond_16
    const/4 v0, 0x0

    .line 1160
    .local v0, "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    move/from16 p5, v7

    move-wide/from16 v17, v8

    .end local v7    # "sslPending":I
    .end local v8    # "capacity":J
    .local v17, "capacity":J
    .local p5, "sslPending":I
    :try_start_c
    iget-wide v7, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v7, v8}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v8, p2

    move v9, v7

    move/from16 v20, v15

    move-object v7, v0

    move v15, v14

    move v14, v10

    move/from16 v10, p5

    .local v7, "pendingEncryptedBytes":I
    goto :goto_7

    .line 1241
    .end local v0    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v6    # "remaining":I
    .end local v7    # "pendingEncryptedBytes":I
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    :catchall_4
    move-exception v0

    move/from16 v7, p5

    move-wide/from16 v21, v12

    move/from16 v13, v19

    goto/16 :goto_17

    .line 1165
    .end local v17    # "capacity":J
    .end local p5    # "sslPending":I
    .restart local v6    # "remaining":I
    .local v7, "sslPending":I
    .restart local v8    # "capacity":J
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    :cond_17
    move/from16 p5, v7

    move-wide/from16 v17, v8

    .end local v7    # "sslPending":I
    .end local v8    # "capacity":J
    .restart local v17    # "capacity":J
    .restart local p5    # "sslPending":I
    :try_start_d
    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v7, v0

    .line 1166
    .local v7, "pendingEncryptedBytes":I
    move-object/from16 v8, p2

    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .local v8, "src":Ljava/nio/ByteBuffer;
    invoke-direct {v1, v8, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_15

    move v9, v7

    move/from16 v20, v15

    move-object v7, v0

    move v15, v14

    move v14, v10

    move/from16 v10, p5

    .line 1170
    .end local p5    # "sslPending":I
    .local v7, "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .local v9, "pendingEncryptedBytes":I
    .local v10, "sslPending":I
    .local v14, "bytesProduced":I
    .local v15, "bytesConsumed":I
    .local v20, "packetLength":I
    :goto_7
    :try_start_e
    aget-object v0, v5, v16

    .line 1171
    .local v0, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v21
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_13

    if-nez v21, :cond_1a

    .line 1173
    move/from16 p2, v6

    .end local v6    # "remaining":I
    .local p2, "remaining":I
    add-int/lit8 v6, v16, 0x1

    move/from16 p5, v10

    move/from16 v10, v19

    .end local v16    # "dstsOffset":I
    .end local v19    # "dstsEndOffset":I
    .local v6, "dstsOffset":I
    .local v10, "dstsEndOffset":I
    .restart local p5    # "sslPending":I
    if-lt v6, v10, :cond_19

    .line 1235
    if-eqz v7, :cond_18

    .line 1236
    :try_start_f
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_8

    .line 1241
    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .end local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v9    # "pendingEncryptedBytes":I
    .end local p2    # "remaining":I
    :catchall_5
    move-exception v0

    move/from16 v7, p5

    move/from16 v16, v6

    move-wide/from16 v21, v12

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_17

    :cond_18
    :goto_8
    move/from16 v7, p5

    move/from16 v16, v6

    move-wide/from16 v21, v12

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_13

    .line 1173
    .restart local v0    # "dst":Ljava/nio/ByteBuffer;
    .restart local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v8    # "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    :cond_19
    move/from16 v16, v6

    move/from16 v19, v10

    move/from16 v6, p2

    move/from16 v10, p5

    goto :goto_7

    .line 1179
    .end local p2    # "remaining":I
    .end local p5    # "sslPending":I
    .local v6, "remaining":I
    .local v10, "sslPending":I
    .restart local v16    # "dstsOffset":I
    .restart local v19    # "dstsEndOffset":I
    :cond_1a
    move/from16 p2, v6

    move/from16 p5, v10

    move/from16 v10, v19

    .end local v6    # "remaining":I
    .end local v19    # "dstsEndOffset":I
    .local v10, "dstsEndOffset":I
    .restart local p2    # "remaining":I
    .restart local p5    # "sslPending":I
    :try_start_10
    invoke-direct {v1, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    .line 1183
    .local v6, "bytesRead":I
    move-wide/from16 v21, v12

    .end local v12    # "len":J
    .local v21, "len":J
    :try_start_11
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    sub-int v12, v9, v12

    .line 1184
    .local v12, "localBytesConsumed":I
    add-int/2addr v15, v12

    .line 1185
    sub-int v20, v20, v12

    .line 1186
    sub-int/2addr v9, v12

    .line 1187
    :try_start_12
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    add-int/2addr v13, v12

    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    .line 1189
    if-lez v6, :cond_23

    .line 1190
    add-int/2addr v14, v6

    .line 1192
    :try_start_13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v13

    if-nez v13, :cond_1f

    .line 1193
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslPending0()I

    move-result v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 1195
    .end local p5    # "sslPending":I
    .local v13, "sslPending":I
    move-object/from16 v19, v8

    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .local v19, "src":Ljava/nio/ByteBuffer;
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "dstsOffset":I
    .local v8, "dstsOffset":I
    if-lt v8, v10, :cond_1e

    .line 1196
    if-lez v13, :cond_1b

    move-object/from16 v23, v0

    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .local v23, "dst":Ljava/nio/ByteBuffer;
    :try_start_14
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1197
    invoke-direct {v1, v0, v4, v15, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto :goto_a

    .line 1235
    .end local v6    # "bytesRead":I
    .end local v12    # "localBytesConsumed":I
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    :catchall_6
    move-exception v0

    move/from16 v16, v8

    move v6, v13

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_16

    .line 1198
    .restart local v0    # "dst":Ljava/nio/ByteBuffer;
    .restart local v6    # "bytesRead":I
    .restart local v12    # "localBytesConsumed":I
    :cond_1b
    move-object/from16 v23, v0

    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-eqz v0, :cond_1c

    :try_start_16
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_9

    :cond_1c
    :try_start_17
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_9
    invoke-direct {v1, v0, v4, v15, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :goto_a
    nop

    .line 1235
    if-eqz v7, :cond_1d

    .line 1236
    :try_start_18
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_b

    .line 1241
    .end local v6    # "bytesRead":I
    .end local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v9    # "pendingEncryptedBytes":I
    .end local v12    # "localBytesConsumed":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "remaining":I
    :catchall_7
    move-exception v0

    move/from16 v16, v8

    move v7, v13

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_17

    .restart local v6    # "bytesRead":I
    .restart local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local v12    # "localBytesConsumed":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "remaining":I
    :cond_1d
    :goto_b
    move/from16 p5, v8

    move/from16 v24, v9

    .end local v8    # "dstsOffset":I
    .end local v9    # "pendingEncryptedBytes":I
    .local v24, "pendingEncryptedBytes":I
    .local p5, "dstsOffset":I
    :try_start_19
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 1196
    return-object v0

    .line 1251
    .end local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6    # "bytesRead":I
    .end local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v12    # "localBytesConsumed":I
    .end local v13    # "sslPending":I
    .end local v14    # "bytesProduced":I
    .end local v15    # "bytesConsumed":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v20    # "packetLength":I
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .end local p2    # "remaining":I
    :catchall_8
    move-exception v0

    move/from16 v16, p5

    move v13, v10

    goto/16 :goto_18

    .line 1235
    .end local p5    # "dstsOffset":I
    .restart local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v8    # "dstsOffset":I
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local v13    # "sslPending":I
    .restart local v14    # "bytesProduced":I
    .restart local v15    # "bytesConsumed":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v20    # "packetLength":I
    .restart local p2    # "remaining":I
    :catchall_9
    move-exception v0

    move/from16 p5, v8

    move/from16 v24, v9

    move/from16 v16, p5

    move v6, v13

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    .end local v8    # "dstsOffset":I
    .end local v9    # "pendingEncryptedBytes":I
    .restart local v24    # "pendingEncryptedBytes":I
    .restart local p5    # "dstsOffset":I
    goto/16 :goto_16

    .line 1195
    .end local v24    # "pendingEncryptedBytes":I
    .end local p5    # "dstsOffset":I
    .restart local v0    # "dst":Ljava/nio/ByteBuffer;
    .restart local v6    # "bytesRead":I
    .restart local v8    # "dstsOffset":I
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local v12    # "localBytesConsumed":I
    :cond_1e
    move-object/from16 v23, v0

    move/from16 p5, v8

    move/from16 v24, v9

    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .end local v8    # "dstsOffset":I
    .end local v9    # "pendingEncryptedBytes":I
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    .restart local v24    # "pendingEncryptedBytes":I
    .restart local p5    # "dstsOffset":I
    move/from16 v16, p5

    goto :goto_c

    .line 1201
    .end local v13    # "sslPending":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .restart local v0    # "dst":Ljava/nio/ByteBuffer;
    .local v8, "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local v16    # "dstsOffset":I
    .local p5, "sslPending":I
    :cond_1f
    move-object/from16 v23, v0

    move-object/from16 v19, v8

    move/from16 v24, v9

    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v9    # "pendingEncryptedBytes":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    .restart local v24    # "pendingEncryptedBytes":I
    if-eqz v20, :cond_21

    :try_start_1a
    iget-boolean v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    if-eqz v0, :cond_20

    goto :goto_d

    :cond_20
    move/from16 v13, p5

    .line 1229
    .end local v6    # "bytesRead":I
    .end local v12    # "localBytesConsumed":I
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .end local p5    # "sslPending":I
    .restart local v13    # "sslPending":I
    :goto_c
    move/from16 v6, p2

    move-object/from16 v8, v19

    move/from16 v9, v24

    move/from16 v19, v10

    move v10, v13

    move-wide/from16 v12, v21

    goto/16 :goto_7

    .line 1235
    .end local v13    # "sslPending":I
    .restart local p5    # "sslPending":I
    :catchall_a
    move-exception v0

    move/from16 v6, p5

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    move/from16 v9, v24

    goto/16 :goto_16

    .restart local v6    # "bytesRead":I
    .restart local v12    # "localBytesConsumed":I
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    :cond_21
    :goto_d
    if-eqz v7, :cond_22

    .line 1236
    :try_start_1b
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_e

    .line 1241
    .end local v6    # "bytesRead":I
    .end local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v12    # "localBytesConsumed":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .end local p2    # "remaining":I
    :catchall_b
    move-exception v0

    move/from16 v7, p5

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_17

    :cond_22
    :goto_e
    move/from16 v7, p5

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_13

    .line 1235
    .restart local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v8    # "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    :catchall_c
    move-exception v0

    move-object/from16 v19, v8

    move/from16 v24, v9

    move/from16 v6, p5

    move v13, v10

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v9    # "pendingEncryptedBytes":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v24    # "pendingEncryptedBytes":I
    goto/16 :goto_16

    .line 1207
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .restart local v0    # "dst":Ljava/nio/ByteBuffer;
    .restart local v6    # "bytesRead":I
    .restart local v8    # "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local v12    # "localBytesConsumed":I
    :cond_23
    move-object/from16 v23, v0

    move-object/from16 v19, v8

    move/from16 v24, v9

    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v9    # "pendingEncryptedBytes":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    .restart local v24    # "pendingEncryptedBytes":I
    :try_start_1c
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v8, v9, v6}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v0

    .line 1208
    .local v0, "sslError":I
    sget v8, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-eq v0, v8, :cond_2e

    sget v8, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v0, v8, :cond_24

    .line 1211
    move v13, v10

    goto/16 :goto_12

    .line 1212
    :cond_24
    sget v8, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_ZERO_RETURN:I

    if-ne v0, v8, :cond_28

    .line 1214
    iget-boolean v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    if-nez v8, :cond_25

    .line 1215
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 1217
    :cond_25
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    if-eqz v8, :cond_26

    :try_start_1f
    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    goto :goto_f

    :cond_26
    :try_start_20
    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_f
    invoke-direct {v1, v8, v4, v15, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 1235
    if-eqz v7, :cond_27

    .line 1236
    :try_start_21
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 1241
    :cond_27
    move v13, v10

    .end local v10    # "dstsEndOffset":I
    .local v13, "dstsEndOffset":I
    :try_start_22
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1a

    .line 1217
    return-object v8

    .line 1219
    .end local v13    # "dstsEndOffset":I
    .restart local v10    # "dstsEndOffset":I
    :cond_28
    move v13, v10

    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    :try_start_23
    sget v8, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v0, v8, :cond_2b

    sget v8, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v0, v8, :cond_2b

    sget v8, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v0, v8, :cond_29

    goto :goto_10

    .line 1225
    :cond_29
    invoke-static {}, Lio/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v8

    invoke-direct {v1, v0, v8, v15, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->sslReadErrorResult(IIII)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 1235
    if-eqz v7, :cond_2a

    .line 1236
    :try_start_24
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    .line 1241
    :cond_2a
    :try_start_25
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1a

    .line 1225
    return-object v8

    .line 1222
    :cond_2b
    :goto_10
    :try_start_26
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v8

    if-eqz v8, :cond_2c

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_11

    :cond_2c
    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_11
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v8, v9, v15, v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 1235
    if-eqz v7, :cond_2d

    .line 1236
    :try_start_27
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    .line 1241
    :cond_2d
    :try_start_28
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1a

    .line 1222
    return-object v8

    .line 1235
    .end local v0    # "sslError":I
    .end local v6    # "bytesRead":I
    .end local v12    # "localBytesConsumed":I
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    :catchall_d
    move-exception v0

    move/from16 v6, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    move/from16 v9, v24

    goto/16 :goto_16

    .line 1208
    .end local v13    # "dstsEndOffset":I
    .restart local v0    # "sslError":I
    .restart local v6    # "bytesRead":I
    .restart local v10    # "dstsEndOffset":I
    .restart local v12    # "localBytesConsumed":I
    .restart local v23    # "dst":Ljava/nio/ByteBuffer;
    :cond_2e
    move v13, v10

    .line 1231
    .end local v0    # "sslError":I
    .end local v6    # "bytesRead":I
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "localBytesConsumed":I
    .end local v23    # "dst":Ljava/nio/ByteBuffer;
    .restart local v13    # "dstsEndOffset":I
    :goto_12
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v11, :cond_32

    .line 1235
    if-eqz v7, :cond_2f

    .line 1236
    :try_start_29
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    .line 1241
    .end local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .end local p2    # "remaining":I
    :cond_2f
    move/from16 v7, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    .end local v20    # "packetLength":I
    .end local p5    # "sslPending":I
    .local v7, "sslPending":I
    .local v10, "bytesProduced":I
    .local v14, "bytesConsumed":I
    .local v15, "packetLength":I
    :goto_13
    :try_start_2a
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    .line 1243
    nop

    .line 1246
    iget-boolean v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-nez v0, :cond_30

    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_RECEIVED_SHUTDOWN:I

    and-int/2addr v0, v6

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_RECEIVED_SHUTDOWN:I

    if-ne v0, v6, :cond_30

    .line 1247
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V

    .line 1250
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_14

    :cond_31
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_14
    invoke-direct {v1, v0, v4, v14, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1a

    return-object v0

    .line 1235
    .end local v10    # "bytesProduced":I
    .local v7, "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .local v14, "bytesProduced":I
    .local v15, "bytesConsumed":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v20    # "packetLength":I
    .restart local v24    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    .restart local p5    # "sslPending":I
    :cond_32
    if-eqz v7, :cond_33

    .line 1236
    :try_start_2b
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    goto :goto_15

    .line 1241
    .end local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .end local p2    # "remaining":I
    :catchall_e
    move-exception v0

    move/from16 v7, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_17

    .line 1239
    :cond_33
    :goto_15
    move/from16 v7, p5

    move/from16 v19, v13

    move v10, v14

    move v14, v15

    move/from16 v6, v16

    move-wide/from16 v8, v17

    move/from16 v15, v20

    move-wide/from16 v12, v21

    goto/16 :goto_6

    .line 1235
    .end local v13    # "dstsEndOffset":I
    .restart local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .local v10, "dstsEndOffset":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v24    # "pendingEncryptedBytes":I
    .restart local p2    # "remaining":I
    :catchall_f
    move-exception v0

    move v13, v10

    move/from16 v6, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    move/from16 v9, v24

    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    goto :goto_16

    .end local v13    # "dstsEndOffset":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .restart local v8    # "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local v10    # "dstsEndOffset":I
    :catchall_10
    move-exception v0

    move-object/from16 v19, v8

    move/from16 v24, v9

    move v13, v10

    move/from16 v6, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v9    # "pendingEncryptedBytes":I
    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v24    # "pendingEncryptedBytes":I
    goto :goto_16

    .end local v13    # "dstsEndOffset":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v24    # "pendingEncryptedBytes":I
    .restart local v8    # "src":Ljava/nio/ByteBuffer;
    .restart local v9    # "pendingEncryptedBytes":I
    .restart local v10    # "dstsEndOffset":I
    :catchall_11
    move-exception v0

    move-object/from16 v19, v8

    move v13, v10

    move/from16 v6, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    goto :goto_16

    .end local v13    # "dstsEndOffset":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local v21    # "len":J
    .restart local v8    # "src":Ljava/nio/ByteBuffer;
    .restart local v10    # "dstsEndOffset":I
    .local v12, "len":J
    :catchall_12
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v21, v12

    move v13, v10

    move/from16 v6, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .restart local v13    # "dstsEndOffset":I
    .restart local v19    # "src":Ljava/nio/ByteBuffer;
    .restart local v21    # "len":J
    goto :goto_16

    .end local v13    # "dstsEndOffset":I
    .end local v21    # "len":J
    .end local p2    # "remaining":I
    .end local p5    # "sslPending":I
    .local v6, "remaining":I
    .restart local v8    # "src":Ljava/nio/ByteBuffer;
    .local v10, "sslPending":I
    .restart local v12    # "len":J
    .local v19, "dstsEndOffset":I
    :catchall_13
    move-exception v0

    move/from16 p2, v6

    move/from16 p5, v10

    move-wide/from16 v21, v12

    move/from16 v13, v19

    move-object/from16 v19, v8

    move/from16 v6, p5

    move v10, v14

    move v14, v15

    move/from16 v15, v20

    .end local v8    # "src":Ljava/nio/ByteBuffer;
    .end local v12    # "len":J
    .end local v20    # "packetLength":I
    .local v6, "sslPending":I
    .local v10, "bytesProduced":I
    .restart local v13    # "dstsEndOffset":I
    .local v14, "bytesConsumed":I
    .local v15, "packetLength":I
    .local v19, "src":Ljava/nio/ByteBuffer;
    .restart local v21    # "len":J
    .restart local p2    # "remaining":I
    :goto_16
    if-eqz v7, :cond_34

    .line 1236
    :try_start_2c
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1238
    :cond_34
    nop

    .end local v3    # "srcsOffset":I
    .end local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6    # "sslPending":I
    .end local v10    # "bytesProduced":I
    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v14    # "bytesConsumed":I
    .end local v15    # "packetLength":I
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p6    # "dstsLength":I
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    .line 1241
    .end local v7    # "bioWriteCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v9    # "pendingEncryptedBytes":I
    .end local v19    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "remaining":I
    .restart local v3    # "srcsOffset":I
    .restart local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v6    # "sslPending":I
    .restart local v10    # "bytesProduced":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v14    # "bytesConsumed":I
    .restart local v15    # "packetLength":I
    .restart local v16    # "dstsOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p6    # "dstsLength":I
    :catchall_14
    move-exception v0

    move v7, v6

    goto :goto_17

    .end local v6    # "sslPending":I
    .end local v13    # "dstsEndOffset":I
    .end local v21    # "len":J
    .restart local v12    # "len":J
    .local v19, "dstsEndOffset":I
    .restart local p5    # "sslPending":I
    :catchall_15
    move-exception v0

    move-wide/from16 v21, v12

    move/from16 v13, v19

    move/from16 v7, p5

    .end local v12    # "len":J
    .end local v19    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v21    # "len":J
    goto :goto_17

    .end local v13    # "dstsEndOffset":I
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p5    # "sslPending":I
    .local v6, "dstsOffset":I
    .local v7, "sslPending":I
    .local v8, "capacity":J
    .restart local v12    # "len":J
    .restart local v19    # "dstsEndOffset":I
    :catchall_16
    move-exception v0

    move/from16 v16, v6

    move/from16 p5, v7

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move/from16 v13, v19

    .end local v6    # "dstsOffset":I
    .end local v8    # "capacity":J
    .end local v12    # "len":J
    .end local v19    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v16    # "dstsOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    :goto_17
    :try_start_2d
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->rejectRemoteInitiatedRenegotiation()V

    .line 1243
    nop

    .end local v3    # "srcsOffset":I
    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p6    # "dstsLength":I
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1a

    .line 1138
    .end local v7    # "sslPending":I
    .end local v10    # "bytesProduced":I
    .end local v15    # "packetLength":I
    .local v0, "sslPending":I
    .restart local v8    # "capacity":J
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .local v14, "packetLength":I
    .restart local v19    # "dstsEndOffset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .local p2, "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .local p5, "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_35
    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move/from16 v13, v19

    .end local v8    # "capacity":J
    .end local v12    # "len":J
    .end local v19    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    :try_start_2e
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v6

    .line 1135
    .restart local v8    # "capacity":J
    .restart local v11    # "srcsEndOffset":I
    .restart local v12    # "len":J
    .restart local v19    # "dstsEndOffset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_36
    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move/from16 v13, v19

    .end local v8    # "capacity":J
    .end local v12    # "len":J
    .end local v19    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v6
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    .line 1251
    .end local v0    # "sslPending":I
    .end local v4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "packetLength":I
    .restart local v11    # "srcsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catchall_17
    move-exception v0

    move/from16 v16, p5

    goto :goto_18

    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .restart local v8    # "capacity":J
    .restart local v12    # "len":J
    .restart local v19    # "dstsEndOffset":I
    :catchall_18
    move-exception v0

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move/from16 v13, v19

    move/from16 v16, p5

    .end local v8    # "capacity":J
    .end local v12    # "len":J
    .end local v19    # "dstsEndOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    goto :goto_18

    .end local v13    # "dstsEndOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .restart local v8    # "capacity":J
    .local v10, "dstsEndOffset":I
    .restart local v12    # "len":J
    :catchall_19
    move-exception v0

    move-wide/from16 v17, v8

    move-wide/from16 v21, v12

    move v13, v10

    move/from16 v16, p5

    .end local v8    # "capacity":J
    .end local v10    # "dstsEndOffset":I
    .end local v12    # "len":J
    .end local p2    # "srcsOffset":I
    .end local p5    # "dstsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v13    # "dstsEndOffset":I
    .restart local v16    # "dstsOffset":I
    .restart local v17    # "capacity":J
    .restart local v21    # "len":J
    :goto_18
    :try_start_2f
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1a

    throw v0

    :catchall_1a
    move-exception v0

    goto :goto_18

    .line 1032
    .end local v3    # "srcsOffset":I
    .end local v11    # "srcsEndOffset":I
    .end local v13    # "dstsEndOffset":I
    .end local v16    # "dstsOffset":I
    .end local v17    # "capacity":J
    .end local v21    # "len":J
    .restart local p2    # "srcsOffset":I
    .restart local p5    # "dstsOffset":I
    :cond_37
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v6, p5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", length: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v7, p6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " (expected: offset <= offset + length <= dsts.length ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v8, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "))"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "dsts is null"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", length: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v8, p3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v9, v2

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "))"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1296
    array-length v3, p1

    array-length v6, p2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1330
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    :try_start_1
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1330
    monitor-exit p0

    return-object v0

    .line 1332
    .end local p0    # "this":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->resetSingleSrcBuffer()V

    .line 1333
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1329
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 19
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 680
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    if-eqz v2, :cond_53

    .line 683
    if-eqz v5, :cond_52

    .line 687
    array-length v6, v2

    if-ge v3, v6, :cond_51

    add-int v6, v3, v4

    array-length v7, v2

    if-gt v6, v7, :cond_51

    .line 693
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_50

    .line 697
    monitor-enter p0

    .line 698
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 700
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isInboundDone()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v6, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    return-object v6

    .line 703
    :cond_2
    const/4 v6, 0x0

    .line 704
    .local v6, "bytesProduced":I
    const/4 v7, 0x0

    .line 707
    .local v7, "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 708
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static/range {p4 .. p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->bufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    int-to-long v13, v8

    add-long/2addr v11, v13

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    goto :goto_2

    .line 711
    :cond_3
    iget-object v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-interface {v8, v9}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    move-object v7, v8

    .line 712
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v7}, Lio/netty/handler/ssl/OpenSsl;->memoryAddress(Lio/netty/buffer/ByteBuf;)J

    move-result-wide v10

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v12

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lio/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    .line 716
    :goto_2
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v8

    .line 719
    .local v8, "bioLengthBefore":I
    iget-boolean v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_f

    .line 725
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/4 v12, 0x2

    invoke-direct {v1, v9, v12, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isBytesAvailableEnoughForWrap(III)Z

    move-result v9

    if-nez v9, :cond_6

    .line 726
    new-instance v9, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    invoke-direct {v9, v10, v12, v11, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 935
    :try_start_2
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_4

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 939
    :cond_4
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_5

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_3
    monitor-exit p0

    .line 726
    return-object v9

    .line 939
    :cond_5
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_4
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 731
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_6
    :try_start_3
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v9

    move v6, v9

    .line 732
    if-gtz v6, :cond_9

    .line 733
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v9, v11, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 935
    :try_start_4
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_7

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 939
    :cond_7
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_8

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_5
    monitor-exit p0

    .line 733
    return-object v9

    .line 939
    :cond_8
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    goto :goto_4

    .line 738
    :cond_9
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->doSSLShutdown()Z

    move-result v9

    if-nez v9, :cond_c

    .line 739
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 935
    :try_start_6
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_a

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    .line 939
    :cond_a
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_b

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_6
    monitor-exit p0

    .line 739
    return-object v9

    .line 939
    :cond_b
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    goto/16 :goto_4

    .line 741
    :cond_c
    :try_start_7
    iget-wide v9, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v9, v10}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v9

    sub-int v6, v8, v9

    .line 742
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 935
    :try_start_8
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_d

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_7

    .line 939
    :cond_d
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_e

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_7
    monitor-exit p0

    .line 742
    return-object v9

    .line 939
    :cond_e
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    goto/16 :goto_4

    .line 746
    :cond_f
    :try_start_9
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 748
    .local v9, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v12, v13, :cond_25

    .line 749
    iget-object v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    sget-object v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    if-eq v12, v13, :cond_10

    .line 751
    sget-object v12, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    iput-object v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeState:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 755
    :cond_10
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v12

    move v6, v12

    .line 757
    iget-object v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException:Ljava/lang/Throwable;

    if-eqz v12, :cond_16

    .line 769
    if-lez v6, :cond_13

    .line 770
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v10, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 935
    :try_start_a
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_11

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    .line 939
    :cond_11
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v11, v12, :cond_12

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_8
    monitor-exit p0

    .line 770
    return-object v10

    .line 939
    :cond_12
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_9
    throw v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 775
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_13
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshakeException()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    invoke-direct {v1, v10, v11, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 935
    :try_start_c
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_14

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_a

    .line 939
    :cond_14
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v11, v12, :cond_15

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_a
    monitor-exit p0

    .line 775
    return-object v10

    .line 939
    :cond_15
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_9

    .line 778
    :cond_16
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    move-object v9, v12

    .line 782
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v12

    sub-int v6, v8, v12

    .line 784
    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v9, v12, :cond_19

    .line 785
    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 935
    :try_start_e
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_17

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_b

    .line 939
    :cond_17
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v11, v12, :cond_18

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_b
    monitor-exit p0

    .line 785
    return-object v10

    .line 939
    :cond_18
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto/16 :goto_9

    .line 788
    :cond_19
    if-lez v6, :cond_1e

    .line 792
    :try_start_f
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v9, v10, :cond_1b

    if-ne v6, v8, :cond_1a

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_c

    :cond_1a
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    .line 794
    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v10

    invoke-direct {v1, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    goto :goto_c

    :cond_1b
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 792
    :goto_c
    invoke-direct {v1, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    invoke-direct {v1, v10, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 935
    :try_start_10
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_1c

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_d

    .line 939
    :cond_1c
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v11, v12, :cond_1d

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_d
    monitor-exit p0

    .line 792
    return-object v10

    .line 939
    :cond_1d
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto/16 :goto_9

    .line 798
    :cond_1e
    :try_start_11
    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v9, v12, :cond_22

    .line 800
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isOutboundDone()Z

    move-result v10

    if-eqz v10, :cond_1f

    sget-object v10, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_e

    :cond_1f
    sget-object v10, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 935
    :goto_e
    :try_start_12
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_20

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_f

    .line 939
    :cond_20
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v11, v12, :cond_21

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_f
    monitor-exit p0

    .line 800
    return-object v10

    .line 939
    :cond_21
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto/16 :goto_9

    .line 805
    :cond_22
    :try_start_13
    iget-boolean v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->outboundClosed:Z

    if-eqz v12, :cond_25

    .line 806
    iget-wide v12, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v12, v13}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v10

    move v6, v10

    .line 807
    invoke-direct {v1, v9, v11, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 935
    :try_start_14
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_23

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_10

    .line 939
    :cond_23
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v11, v12, :cond_24

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    invoke-virtual {v7, v11, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_10
    monitor-exit p0

    .line 807
    return-object v10

    .line 939
    :cond_24
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto/16 :goto_9

    .line 811
    :cond_25
    add-int v12, v3, v4

    .line 812
    .local v12, "endOffset":I
    :try_start_15
    iget-boolean v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-eqz v13, :cond_2d

    .line 813
    const/4 v13, 0x0

    .line 814
    .local v13, "srcsLen":I
    move/from16 v14, p2

    .local v14, "i":I
    :goto_11
    if-ge v14, v12, :cond_2a

    .line 815
    aget-object v15, v2, v14

    .line 816
    .local v15, "src":Ljava/nio/ByteBuffer;
    if-eqz v15, :cond_29

    .line 819
    sget v11, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    if-ne v13, v11, :cond_26

    .line 820
    goto :goto_12

    .line 823
    :cond_26
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v17

    add-int v13, v13, v17

    .line 824
    if-gt v13, v11, :cond_27

    if-gez v13, :cond_28

    .line 828
    :cond_27
    move v13, v11

    .line 814
    .end local v15    # "src":Ljava/nio/ByteBuffer;
    :cond_28
    :goto_12
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x0

    goto :goto_11

    .line 817
    .restart local v15    # "src":Ljava/nio/ByteBuffer;
    :cond_29
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v8

    .end local v8    # "bioLengthBefore":I
    .local v17, "bioLengthBefore":I
    const-string v8, "srcs["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "] is null"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v10

    .line 814
    .end local v15    # "src":Ljava/nio/ByteBuffer;
    .end local v17    # "bioLengthBefore":I
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v8    # "bioLengthBefore":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_2a
    move/from16 v17, v8

    .line 834
    .end local v8    # "bioLengthBefore":I
    .end local v14    # "i":I
    .restart local v17    # "bioLengthBefore":I
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-direct {v1, v8, v13, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->isBytesAvailableEnoughForWrap(III)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 835
    new-instance v8, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct {v8, v10, v11, v14, v14}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 935
    :try_start_16
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_2b

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_13

    .line 939
    :cond_2b
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_2c

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_13
    monitor-exit p0

    .line 835
    return-object v8

    .line 939
    :cond_2c
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 812
    .end local v13    # "srcsLen":I
    .end local v17    # "bioLengthBefore":I
    .restart local v8    # "bioLengthBefore":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_2d
    move/from16 v17, v8

    .line 840
    .end local v8    # "bioLengthBefore":I
    .restart local v17    # "bioLengthBefore":I
    :cond_2e
    const/4 v8, 0x0

    .line 842
    .local v8, "bytesConsumed":I
    :try_start_17
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move v6, v10

    .line 843
    .end local p2    # "offset":I
    .local v3, "offset":I
    :goto_14
    if-ge v3, v12, :cond_4b

    .line 844
    :try_start_18
    aget-object v10, v2, v3

    .line 845
    .local v10, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 846
    .local v11, "remaining":I
    if-nez v11, :cond_2f

    .line 847
    move/from16 v16, v12

    move v12, v3

    goto/16 :goto_17

    .line 851
    :cond_2f
    iget-boolean v13, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v13, :cond_30

    .line 855
    :try_start_19
    sget v13, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    sub-int/2addr v13, v8

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-direct {v1, v10, v13}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move/from16 v16, v12

    move v12, v3

    .local v13, "bytesWritten":I
    goto/16 :goto_16

    .line 935
    .end local v8    # "bytesConsumed":I
    .end local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v12    # "endOffset":I
    .end local v13    # "bytesWritten":I
    .end local v17    # "bioLengthBefore":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_23

    .line 860
    .restart local v8    # "bytesConsumed":I
    .restart local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v10    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local v12    # "endOffset":I
    .restart local v17    # "bioLengthBefore":I
    :cond_30
    :try_start_1a
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    sub-int/2addr v13, v6

    iget v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxWrapOverhead:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    sub-int/2addr v13, v14

    .line 861
    .local v13, "availableCapacityForWrap":I
    if-gtz v13, :cond_33

    .line 862
    :try_start_1b
    new-instance v14, Ljavax/net/ssl/SSLEngineResult;

    sget-object v15, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    move/from16 v16, v12

    .end local v12    # "endOffset":I
    .local v16, "endOffset":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    invoke-direct {v14, v15, v12, v8, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 935
    move v12, v3

    .end local v3    # "offset":I
    .local v12, "offset":I
    :try_start_1c
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_31

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_15

    .line 939
    :cond_31
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_32

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v7, v2, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_15
    monitor-exit p0

    .line 862
    return-object v14

    .line 939
    :cond_32
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The destination buffer "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v12    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 945
    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v8    # "bytesConsumed":I
    .end local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v13    # "availableCapacityForWrap":I
    .end local v16    # "endOffset":I
    .end local v17    # "bioLengthBefore":I
    .restart local v12    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move v3, v12

    goto/16 :goto_25

    .line 935
    .end local v12    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    :catchall_2
    move-exception v0

    move v12, v3

    move-object v2, v0

    .end local v3    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_23

    .line 865
    .restart local v3    # "offset":I
    .restart local v8    # "bytesConsumed":I
    .restart local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v10    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .local v12, "endOffset":I
    .restart local v13    # "availableCapacityForWrap":I
    .restart local v17    # "bioLengthBefore":I
    :cond_33
    move/from16 v16, v12

    move v12, v3

    .end local v3    # "offset":I
    .local v12, "offset":I
    .restart local v16    # "endOffset":I
    :try_start_1d
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, v10, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    move v13, v2

    .line 873
    .local v13, "bytesWritten":I
    :goto_16
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 874
    .local v2, "pendingNow":I
    sub-int v3, v17, v2

    add-int/2addr v6, v3

    .line 875
    move v3, v2

    .line 877
    .end local v17    # "bioLengthBefore":I
    .local v3, "bioLengthBefore":I
    if-lez v13, :cond_38

    .line 878
    add-int/2addr v8, v13

    .line 880
    :try_start_1e
    iget-boolean v14, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->jdkCompatibilityMode:Z

    if-nez v14, :cond_35

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-ne v6, v14, :cond_34

    goto :goto_18

    :cond_34
    move/from16 v17, v3

    .line 843
    .end local v2    # "pendingNow":I
    .end local v3    # "bioLengthBefore":I
    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v13    # "bytesWritten":I
    .restart local v17    # "bioLengthBefore":I
    :goto_17
    add-int/lit8 v3, v12, 0x1

    move-object/from16 v2, p1

    move/from16 v12, v16

    .end local v12    # "offset":I
    .local v3, "offset":I
    goto/16 :goto_14

    .line 881
    .end local v17    # "bioLengthBefore":I
    .restart local v2    # "pendingNow":I
    .local v3, "bioLengthBefore":I
    .restart local v10    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local v12    # "offset":I
    .restart local v13    # "bytesWritten":I
    :cond_35
    :goto_18
    invoke-direct {v1, v9, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 935
    move-object/from16 p2, v10

    move v15, v11

    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .local v15, "remaining":I
    .local p2, "src":Ljava/nio/ByteBuffer;
    :try_start_1f
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_36

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_19

    .line 939
    :cond_36
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v10, v11, :cond_37

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_19
    monitor-exit p0

    .line 881
    return-object v14

    .line 939
    :cond_37
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The destination buffer "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v12    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v10
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 935
    .end local v2    # "pendingNow":I
    .end local v3    # "bioLengthBefore":I
    .end local v8    # "bytesConsumed":I
    .end local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v13    # "bytesWritten":I
    .end local v15    # "remaining":I
    .end local v16    # "endOffset":I
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .restart local v12    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_3
    move-exception v0

    move-object v2, v0

    move v3, v12

    goto/16 :goto_23

    .line 884
    .restart local v2    # "pendingNow":I
    .restart local v3    # "bioLengthBefore":I
    .restart local v8    # "bytesConsumed":I
    .restart local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v10    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local v13    # "bytesWritten":I
    .restart local v16    # "endOffset":I
    :cond_38
    move-object/from16 p2, v10

    move v15, v11

    .end local v10    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .restart local v15    # "remaining":I
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    :try_start_20
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->ssl:J

    invoke-static {v10, v11, v13}, Lio/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v10

    .line 885
    .local v10, "sslError":I
    sget v11, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_ZERO_RETURN:I

    if-ne v10, v11, :cond_40

    .line 887
    iget-boolean v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->receivedShutdown:Z

    if-nez v11, :cond_3d

    .line 888
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->closeAll()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 890
    move v14, v12

    .end local v12    # "offset":I
    .local v14, "offset":I
    :try_start_21
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v11

    sub-int v11, v3, v11

    add-int/2addr v6, v11

    .line 895
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v9, v11, :cond_3a

    .line 896
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-ne v6, v11, :cond_39

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_1a

    :cond_39
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    .line 897
    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v11

    invoke-direct {v1, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    goto :goto_1a

    :cond_3a
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 895
    :goto_1a
    invoke-direct {v1, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    .line 899
    .local v11, "hs":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {v1, v11, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v12
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    .line 935
    move/from16 v18, v2

    move/from16 v17, v3

    .end local v2    # "pendingNow":I
    .end local v3    # "bioLengthBefore":I
    .restart local v17    # "bioLengthBefore":I
    .local v18, "pendingNow":I
    :try_start_22
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_3b

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1b

    .line 939
    :cond_3b
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_3c

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v7, v2, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_1b
    monitor-exit p0

    .line 899
    return-object v12

    .line 939
    :cond_3c
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The destination buffer "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v14    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    .line 902
    .end local v11    # "hs":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v17    # "bioLengthBefore":I
    .end local v18    # "pendingNow":I
    .restart local v2    # "pendingNow":I
    .restart local v3    # "bioLengthBefore":I
    .restart local v12    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_3d
    move/from16 v18, v2

    move/from16 v17, v3

    move v14, v12

    .end local v2    # "pendingNow":I
    .end local v3    # "bioLengthBefore":I
    .end local v12    # "offset":I
    .restart local v14    # "offset":I
    .restart local v17    # "bioLengthBefore":I
    .restart local v18    # "pendingNow":I
    :try_start_23
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v2, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    .line 935
    :try_start_24
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_3e

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 939
    :cond_3e
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v3, v11, :cond_3f

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v7, v3, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_1c
    monitor-exit p0

    .line 902
    return-object v2

    .line 939
    :cond_3f
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v14    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_1d
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    .line 903
    .end local v17    # "bioLengthBefore":I
    .end local v18    # "pendingNow":I
    .restart local v2    # "pendingNow":I
    .restart local v3    # "bioLengthBefore":I
    .restart local v12    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_40
    move/from16 v18, v2

    move/from16 v17, v3

    move v14, v12

    .end local v2    # "pendingNow":I
    .end local v3    # "bioLengthBefore":I
    .end local v12    # "offset":I
    .restart local v14    # "offset":I
    .restart local v17    # "bioLengthBefore":I
    .restart local v18    # "pendingNow":I
    :try_start_25
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_READ:I

    if-ne v10, v2, :cond_43

    .line 907
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v2, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 935
    :try_start_26
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_41

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1e

    .line 939
    :cond_41
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v3, v11, :cond_42

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v7, v3, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_1e
    monitor-exit p0

    .line 907
    return-object v2

    .line 939
    :cond_42
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    goto :goto_1d

    .line 908
    :cond_43
    :try_start_27
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_WRITE:I

    if-ne v10, v2, :cond_46

    .line 921
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1, v2, v9, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 935
    :try_start_28
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_44

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1f

    .line 939
    :cond_44
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v3, v11, :cond_45

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v7, v3, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_1f
    monitor-exit p0

    .line 921
    return-object v2

    .line 939
    :cond_45
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    goto/16 :goto_1d

    .line 922
    :cond_46
    :try_start_29
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_X509_LOOKUP:I

    if-eq v10, v2, :cond_48

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_CERTIFICATE_VERIFY:I

    if-eq v10, v2, :cond_48

    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_ERROR_WANT_PRIVATE_KEY_OPERATION:I

    if-ne v10, v2, :cond_47

    goto :goto_20

    .line 929
    :cond_47
    const-string v2, "SSL_write"

    invoke-direct {v1, v2, v10}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->shutdownWithError(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object v2

    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v14    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2

    .line 926
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local v14    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_48
    :goto_20
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v2, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResult(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    .line 935
    :try_start_2a
    iget-wide v11, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_49

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_21

    .line 939
    :cond_49
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v3, v11, :cond_4a

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v7, v3, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_21
    monitor-exit p0

    .line 926
    return-object v2

    .line 939
    :cond_4a
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The destination buffer "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    goto/16 :goto_1d

    .line 935
    .end local v8    # "bytesConsumed":I
    .end local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v10    # "sslError":I
    .end local v13    # "bytesWritten":I
    .end local v14    # "offset":I
    .end local v15    # "remaining":I
    .end local v16    # "endOffset":I
    .end local v17    # "bioLengthBefore":I
    .end local v18    # "pendingNow":I
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .restart local v12    # "offset":I
    :catchall_4
    move-exception v0

    move v14, v12

    move-object v2, v0

    move v3, v14

    .end local v12    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_23

    .end local v14    # "offset":I
    .local v3, "offset":I
    :catchall_5
    move-exception v0

    move v14, v3

    move-object v2, v0

    .end local v3    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_23

    .line 933
    .end local v14    # "offset":I
    .restart local v3    # "offset":I
    .restart local v8    # "bytesConsumed":I
    .restart local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v12, "endOffset":I
    .restart local v17    # "bioLengthBefore":I
    :cond_4b
    move v14, v3

    move/from16 v16, v12

    .end local v3    # "offset":I
    .end local v12    # "endOffset":I
    .restart local v14    # "offset":I
    .restart local v16    # "endOffset":I
    :try_start_2b
    invoke-direct {v1, v9, v8, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->newResultMayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    .line 935
    :try_start_2c
    iget-wide v10, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-nez v7, :cond_4c

    .line 937
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_22

    .line 939
    :cond_4c
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-gt v3, v10, :cond_4d

    .line 941
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v7, v3, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_22
    monitor-exit p0

    .line 933
    return-object v2

    .line 939
    :cond_4d
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The destination buffer "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v14    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    .line 945
    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .end local v8    # "bytesConsumed":I
    .end local v9    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v16    # "endOffset":I
    .end local v17    # "bioLengthBefore":I
    .restart local v14    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_6
    move-exception v0

    move-object v2, v0

    move v3, v14

    goto :goto_25

    .line 935
    .restart local v6    # "bytesProduced":I
    .restart local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    :catchall_7
    move-exception v0

    move-object v2, v0

    move v3, v14

    goto :goto_23

    .end local v14    # "offset":I
    .local p2, "offset":I
    :catchall_8
    move-exception v0

    move-object v2, v0

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    :goto_23
    :try_start_2d
    iget-wide v8, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->networkBIO:J

    invoke-static {v8, v9}, Lio/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 936
    if-eqz v7, :cond_4f

    .line 939
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-le v8, v9, :cond_4e

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The destination buffer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " didn\'t have enough remaining space to hold the encrypted content in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2

    .line 941
    .restart local v3    # "offset":I
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_4e
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 942
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_24

    .line 937
    :cond_4f
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 944
    :goto_24
    nop

    .end local v3    # "offset":I
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "length":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2

    .line 945
    .end local v6    # "bytesProduced":I
    .end local v7    # "bioReadCopyBuf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_9
    move-exception v0

    move-object v2, v0

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    :goto_25
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    throw v2

    :catchall_a
    move-exception v0

    move-object v2, v0

    goto :goto_25

    .line 694
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_50
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 688
    :cond_51
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, p1

    array-length v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "))"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_52
    move-object v7, v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "dst is null"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 681
    :cond_53
    move-object v7, v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "srcs is null"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
