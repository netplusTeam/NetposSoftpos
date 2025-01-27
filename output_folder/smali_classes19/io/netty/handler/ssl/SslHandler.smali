.class public Lio/netty/handler/ssl/SslHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SslHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;,
        Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;,
        Lio/netty/handler/ssl/SslHandler$SslTasksRunner;,
        Lio/netty/handler/ssl/SslHandler$SslEngineType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static final MAX_PLAINTEXT_LENGTH:I = 0x4000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private closeNotify:Z

.field private volatile closeNotifyFlushTimeoutMillis:J

.field private volatile closeNotifyReadTimeoutMillis:J

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

.field private firedChannelRead:Z

.field private flushedBeforeHandshake:Z

.field private handshakePromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private handshakeStarted:Z

.field private volatile handshakeTimeoutMillis:J

.field private final jdkCompatibilityMode:Z

.field private needsFlush:Z

.field private outboundClosed:Z

.field private packetLength:I

.field private pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

.field private processTask:Z

.field private readDuringHandshake:Z

.field private sentFirstMessage:Z

.field private final singleBuffer:[Ljava/nio/ByteBuffer;

.field private final sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

.field private final startTls:Z

.field volatile wrapDataSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    nop

    .line 168
    const-class v0, Lio/netty/handler/ssl/SslHandler;

    .line 169
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 171
    const-string v0, "^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    .line 173
    const/4 v0, 0x2

    const-string v1, "^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .line 419
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z

    .line 429
    sget-object v0, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    .line 430
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z
    .param p3, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;

    .line 452
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 377
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    .line 386
    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 387
    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    .line 407
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 408
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    .line 410
    const/16 v0, 0x4000

    iput v0, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 453
    const-string v0, "engine"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    .line 454
    const-string v0, "delegatedTaskExecutor"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    .line 455
    invoke-static {p1}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->forEngine(Ljavax/net/ssl/SSLEngine;)Lio/netty/handler/ssl/SslHandler$SslEngineType;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    .line 456
    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    .line 457
    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->jdkCompatibilityMode(Ljavax/net/ssl/SSLEngine;)Z

    move-result v1

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->jdkCompatibilityMode:Z

    .line 458
    iget-object v0, v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setCumulator(Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V

    .line 459
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;

    .line 166
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$1100(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;

    .line 166
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$1202(Lio/netty/handler/ssl/SslHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Z

    .line 166
    iput-boolean p1, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    return p1
.end method

.method static synthetic access$1300(Lio/netty/handler/ssl/SslHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Z

    .line 166
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->executeDelegatedTasks(Z)V

    return-void
.end method

.method static synthetic access$1400(Lio/netty/handler/ssl/SslHandler;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    return-void
.end method

.method static synthetic access$1500(Lio/netty/handler/ssl/SslHandler;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V

    return-void
.end method

.method static synthetic access$1700(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$1800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .param p0, "x0"    # Ljavax/net/ssl/SSLEngine;

    .line 166
    invoke-static {p0}, Lio/netty/handler/ssl/SslHandler;->runAllDelegatedTasks(Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/ssl/SslHandler;)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$2200(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/util/concurrent/Promise;

    .line 166
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$2300(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 166
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2400()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 166
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 166
    invoke-static {p0, p1}, Lio/netty/handler/ssl/SslHandler;->addCloseListener(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$2600(Lio/netty/handler/ssl/SslHandler;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method static synthetic access$2800(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # Lio/netty/buffer/ByteBuf;
    .param p2, "x2"    # I

    .line 166
    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->attemptCopyToCumulation(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$SslEngineType;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 166
    invoke-static {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->toByteBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 166
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$600(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 166
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailureTransportFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .line 166
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method static synthetic access$800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 166
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 166
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static addCloseListener(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p0, "future"    # Lio/netty/channel/ChannelFuture;
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 2141
    new-instance v0, Lio/netty/channel/ChannelPromiseNotifier;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelPromise;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v2, v1}, Lio/netty/channel/ChannelPromiseNotifier;-><init>(Z[Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 2142
    return-void
.end method

.method private allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "capacity"    # I

    .line 2149
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    .line 2150
    .local v0, "alloc":Lio/netty/buffer/ByteBufAllocator;
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iget-boolean v1, v1, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-eqz v1, :cond_0

    .line 2151
    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 2153
    :cond_0
    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method private allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pendingBytes"    # I
    .param p3, "numComponents"    # I

    .line 2162
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->allocateWrapBuffer(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method private applyHandshakeTimeout()V
    .locals 6

    .line 2003
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 2006
    .local v0, "localHandshakePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    iget-wide v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 2007
    .local v1, "handshakeTimeoutMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2011
    :cond_0
    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    new-instance v4, Lio/netty/handler/ssl/SslHandler$5;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/netty/handler/ssl/SslHandler$5;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;J)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v1, v2, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 2030
    .local v3, "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    new-instance v4, Lio/netty/handler/ssl/SslHandler$6;

    invoke-direct {v4, p0, v3}, Lio/netty/handler/ssl/SslHandler$6;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;)V

    invoke-interface {v0, v4}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 2036
    return-void

    .line 2008
    .end local v3    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private static attemptCopyToCumulation(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z
    .locals 4
    .param p0, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p1, "next"    # Lio/netty/buffer/ByteBuf;
    .param p2, "wrapDataSize"    # I

    .line 2219
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 2220
    .local v0, "inReadableBytes":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    .line 2221
    .local v1, "cumulationCapacity":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    .line 2225
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->isWritable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v1, p2, :cond_1

    :cond_0
    if-ge v1, p2, :cond_2

    .line 2227
    invoke-virtual {p0, v0, v3}, Lio/netty/buffer/ByteBuf;->ensureWritable(IZ)I

    move-result v2

    invoke-static {v2}, Lio/netty/buffer/ByteBufUtil;->ensureWritableSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2228
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 2229
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 2230
    const/4 v2, 0x1

    return v2

    .line 2232
    :cond_2
    return v3
.end method

.method private channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1295
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->discardSomeReadBytes()V

    .line 1297
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1298
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    .line 1301
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 1302
    return-void
.end method

.method private closeOutbound0(Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    .line 665
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 667
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    const-string v3, "{} flush() raised a masked exception."

    invoke-interface {v1, v3, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 673
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "disconnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    .line 1849
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 1851
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1852
    if-eqz p3, :cond_0

    .line 1853
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 1855
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 1857
    :goto_0
    return-void

    .line 1860
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 1862
    .local v1, "closeNotifyPromise":Lio/netty/channel/ChannelPromise;
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    iget-boolean v3, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    if-nez v3, :cond_2

    .line 1865
    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    .line 1874
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    new-instance v4, Lio/netty/channel/ChannelPromiseNotifier;

    new-array v0, v0, [Lio/netty/channel/ChannelPromise;

    aput-object p2, v0, v2

    invoke-direct {v4, v2, v0}, Lio/netty/channel/ChannelPromiseNotifier;-><init>(Z[Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 1878
    :cond_2
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    new-instance v2, Lio/netty/handler/ssl/SslHandler$3;

    invoke-direct {v2, p0, p2}, Lio/netty/handler/ssl/SslHandler$3;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {v0, v2}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 1885
    nop

    .line 1886
    :goto_1
    return-void

    .line 1864
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    if-nez v4, :cond_3

    .line 1865
    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotify:Z

    .line 1874
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    new-instance v5, Lio/netty/channel/ChannelPromiseNotifier;

    new-array v0, v0, [Lio/netty/channel/ChannelPromise;

    aput-object p2, v0, v2

    invoke-direct {v5, v2, v0}, Lio/netty/channel/ChannelPromiseNotifier;-><init>(Z[Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v4, v5}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_2

    .line 1878
    :cond_3
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    new-instance v2, Lio/netty/handler/ssl/SslHandler$3;

    invoke-direct {v2, p0, p2}, Lio/netty/handler/ssl/SslHandler$3;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {v0, v2}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 1885
    :goto_2
    throw v3
.end method

.method private decodeJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/ssl/NotSslRecordException;
        }
    .end annotation

    .line 1198
    iget v0, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 1200
    .local v0, "packetLength":I
    if-lez v0, :cond_0

    .line 1201
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 1202
    return-void

    .line 1206
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 1207
    .local v1, "readableBytes":I
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 1208
    return-void

    .line 1210
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-static {p2, v2}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 1211
    const/4 v2, -0x2

    if-eq v0, v2, :cond_6

    .line 1223
    if-lez v0, :cond_5

    .line 1224
    if-le v0, v1, :cond_2

    .line 1226
    iput v0, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 1227
    return-void

    .line 1233
    .end local v1    # "readableBytes":I
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 1235
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I

    move-result v1

    .line 1236
    .local v1, "bytesConsumed":I
    if-eq v1, v0, :cond_4

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we feed the SSLEngine a packets worth of data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but it only consumed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "packetLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    throw v2

    .line 1239
    .restart local v0    # "packetLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    :cond_4
    :goto_0
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    nop

    .end local v1    # "bytesConsumed":I
    goto :goto_1

    .line 1240
    :catchall_0
    move-exception v1

    .line 1241
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v1}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1243
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 1223
    .local v1, "readableBytes":I
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1213
    :cond_6
    new-instance v2, Lio/netty/handler/ssl/NotSslRecordException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not an SSL/TLS record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1214
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v2, "e":Lio/netty/handler/ssl/NotSslRecordException;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 1219
    invoke-direct {p0, p1, v2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1221
    throw v2
.end method

.method private decodeNonJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;

    .line 1247
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    goto :goto_0

    .line 1248
    :catchall_0
    move-exception v0

    .line 1249
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1251
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private executeDelegatedTasks(Z)V
    .locals 2
    .param p1, "inUnwrap"    # Z

    .line 1533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    .line 1535
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;-><init>(Lio/netty/handler/ssl/SslHandler;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    nop

    .line 1540
    return-void

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    .line 1538
    throw v0
.end method

.method private finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p4, "inUnwrap"    # Z
    .param p5, "needUnwrap"    # Z

    .line 900
    if-nez p2, :cond_0

    .line 901
    sget-object p2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 902
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 904
    sget-object p2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 907
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 908
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 910
    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 913
    :goto_1
    if-eqz p4, :cond_3

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    .line 917
    :cond_3
    if-eqz p5, :cond_4

    .line 920
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 922
    :cond_4
    return-void
.end method

.method private flush(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1889
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_0

    .line 1890
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 1892
    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->newPendingWritesNullException()Ljava/lang/IllegalStateException;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 1894
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1895
    return-void
.end method

.method private flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1314
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    if-eqz v0, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1317
    :cond_0
    return-void
.end method

.method private forceFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 2039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    .line 2040
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 2041
    return-void
.end method

.method private handleUnwrapThrowable(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1259
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    new-instance v0, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v0, p2}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1265
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1272
    :goto_0
    goto :goto_1

    .line 1271
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "ex":Ljavax/net/ssl/SSLException;
    :try_start_1
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "SSLException during trying to call SSLEngine.wrap(...) because of an previous SSLException, ignoring..."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    .end local v0    # "ex":Ljavax/net/ssl/SSLException;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    goto :goto_0

    .line 1273
    :goto_1
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 1274
    return-void

    .line 1271
    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1272
    throw v0
.end method

.method private handshake()V
    .locals 2

    .line 1975
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_0

    .line 1978
    return-void

    .line 1980
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    return-void

    .line 1991
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 1993
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 1994
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1995
    :catchall_0
    move-exception v1

    .line 1996
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1998
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1999
    nop

    .line 2000
    return-void

    .line 1998
    :catchall_1
    move-exception v1

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1999
    throw v1
.end method

.method private ignoreException(Ljava/lang/Throwable;)Z
    .locals 13
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 1118
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1119
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "message":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v3, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1124
    return v2

    .line 1128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 1129
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 1130
    .local v6, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1131
    .local v7, "classname":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    .line 1134
    .local v8, "methodname":Ljava/lang/String;
    const-string v9, "io.netty."

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1135
    goto :goto_2

    .line 1139
    :cond_1
    const-string v9, "read"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1140
    goto :goto_2

    .line 1145
    :cond_2
    sget-object v9, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1146
    return v2

    .line 1153
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1155
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_6

    const-class v10, Ljava/nio/channels/DatagramChannel;

    .line 1156
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    .line 1161
    :cond_4
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v10

    const/4 v11, 0x7

    if-lt v10, v11, :cond_5

    const-string v10, "com.sun.nio.sctp.SctpChannel"

    .line 1162
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_5

    .line 1163
    return v2

    .line 1170
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    goto :goto_2

    .line 1157
    .restart local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    :goto_1
    return v2

    .line 1165
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v9

    .line 1166
    .local v9, "cause":Ljava/lang/Throwable;
    sget-object v10, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v10}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1167
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 1168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v11, v1

    aput-object v7, v11, v2

    const/4 v12, 0x2

    aput-object v9, v11, v12

    .line 1167
    const-string v12, "Unexpected exception while loading class {} classname {}"

    invoke-interface {v10, v12, v11}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    .end local v6    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "classname":Ljava/lang/String;
    .end local v8    # "methodname":Ljava/lang/String;
    .end local v9    # "cause":Ljava/lang/Throwable;
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1174
    .end local v0    # "message":Ljava/lang/String;
    .end local v3    # "elements":[Ljava/lang/StackTraceElement;
    :cond_8
    return v1
.end method

.method private static inEventLoop(Ljava/util/concurrent/Executor;)Z
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 1501
    instance-of v0, p0, Lio/netty/util/concurrent/EventExecutor;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEncrypted(Lio/netty/buffer/ByteBuf;)Z
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 1190
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1194
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslUtils;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer must have at least 5 readable bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newPendingWritesNullException()Ljava/lang/IllegalStateException;
    .locals 2

    .line 737
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pendingUnencryptedWrites is null, handlerRemoved0 called?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyClosePromise(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1835
    if-nez p1, :cond_0

    .line 1836
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1837
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v1, Lio/netty/handler/ssl/SslCloseCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslCloseCompletionEvent;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 1840
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1841
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v1, Lio/netty/handler/ssl/SslCloseCompletionEvent;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/SslCloseCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1844
    :cond_1
    :goto_0
    return-void
.end method

.method private readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 1306
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 1311
    :cond_1
    return-void
.end method

.method private releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1829
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-eqz v0, :cond_0

    .line 1830
    invoke-virtual {v0, p1, p2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V

    .line 1832
    :cond_0
    return-void
.end method

.method private renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 1959
    .local p1, "newHandshakePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 1960
    .local v0, "oldHandshakePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1963
    new-instance v1, Lio/netty/util/concurrent/PromiseNotifier;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/netty/util/concurrent/Promise;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/PromiseNotifier;-><init>([Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 1965
    :cond_0
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    .line 1966
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->handshake()V

    .line 1967
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->applyHandshakeTimeout()V

    .line 1969
    :goto_0
    return-void
.end method

.method private static runAllDelegatedTasks(Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 1506
    :goto_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 1507
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 1508
    return-void

    .line 1510
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1511
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method private runDelegatedTasks(Z)Z
    .locals 2
    .param p1, "inUnwrap"    # Z

    .line 1522
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->inEventLoop(Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1527
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->executeDelegatedTasks(Z)V

    .line 1528
    const/4 v0, 0x0

    return v0

    .line 1524
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->runAllDelegatedTasks(Ljavax/net/ssl/SSLEngine;)V

    .line 1525
    const/4 v0, 0x1

    return v0
.end method

.method private safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "flushFuture"    # Lio/netty/channel/ChannelFuture;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 2057
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2059
    return-void

    .line 2063
    :cond_0
    invoke-interface {p2}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2064
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    .line 2065
    .local v0, "closeNotifyTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 2067
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    new-instance v3, Lio/netty/handler/ssl/SslHandler$7;

    invoke-direct {v3, p0, p2, p1, p3}, Lio/netty/handler/ssl/SslHandler$7;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v2

    .local v2, "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_0

    .line 2079
    .end local v2    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_1
    const/4 v2, 0x0

    .line 2081
    .end local v0    # "closeNotifyTimeout":J
    .restart local v2    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :goto_0
    goto :goto_1

    .line 2082
    .end local v2    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_2
    const/4 v2, 0x0

    .line 2086
    .restart local v2    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :goto_1
    new-instance v0, Lio/netty/handler/ssl/SslHandler$8;

    invoke-direct {v0, p0, v2, p1, p3}, Lio/netty/handler/ssl/SslHandler$8;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 2132
    return-void
.end method

.method private setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1773
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1774
    return-void
.end method

.method private setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "closeInbound"    # Z
    .param p4, "notify"    # Z
    .param p5, "alwaysFlushAndClose"    # Z

    .line 1784
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    .line 1785
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    if-eqz p3, :cond_1

    .line 1789
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1802
    goto :goto_0

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_2
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1796
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1797
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "possible truncation attack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "closing inbound before receiving peer\'s close_notify"

    .line 1798
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1799
    :cond_0
    const-string v3, "{} SSLEngine.closeInbound() raised an exception."

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v1, v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1804
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_3

    .line 1805
    :cond_2
    invoke-static {p1, p2, p4}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1809
    :cond_3
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1810
    nop

    .line 1811
    return-void

    .line 1809
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1810
    throw v0
.end method

.method private setHandshakeFailureTransportFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1818
    :try_start_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "failure when writing TLS control frames"

    invoke-direct {v0, v1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1819
    .local v0, "transportFailure":Ljavax/net/ssl/SSLException;
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->releaseAndFailAll(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1820
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1821
    new-instance v1, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v1, v0}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    .end local v0    # "transportFailure":Ljavax/net/ssl/SSLException;
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 1825
    nop

    .line 1826
    return-void

    .line 1824
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 1825
    throw v0
.end method

.method private setHandshakeSuccess()V
    .locals 4

    .line 1756
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 1758
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} HANDSHAKEN: {}"

    invoke-interface {v0, v3, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1761
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v1, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1763
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->readDuringHandshake:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->readDuringHandshake:Z

    .line 1765
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 1767
    :cond_1
    return-void
.end method

.method private setHandshakeSuccessIfStillHandshaking()Z
    .locals 1

    .line 1745
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1746
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    .line 1747
    const/4 v0, 0x1

    return v0

    .line 1749
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startHandshakeProcessing()V
    .locals 1

    .line 1908
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeStarted:Z

    if-nez v0, :cond_1

    .line 1909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeStarted:Z

    .line 1910
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->handshake()V

    .line 1916
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->applyHandshakeTimeout()V

    .line 1918
    :cond_1
    return-void
.end method

.method private static toByteBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 1496
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 1497
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1496
    :goto_0
    return-object v0
.end method

.method private unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I
    .locals 19
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "packet"    # Lio/netty/buffer/ByteBuf;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1331
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    .line 1332
    .local v9, "originalLength":I
    const/4 v0, 0x0

    .line 1333
    .local v0, "wrapLater":Z
    const/4 v1, 0x0

    .line 1334
    .local v1, "notifyClosure":Z
    const/4 v2, -0x1

    .line 1335
    .local v2, "overflowReadableBytes":I
    move/from16 v3, p4

    invoke-direct {v7, v8, v3}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move/from16 v10, p3

    move v12, v0

    move v13, v1

    move v14, v2

    move v11, v3

    move-object v15, v4

    .line 1339
    .end local v0    # "wrapLater":Z
    .end local v1    # "notifyClosure":Z
    .end local v2    # "overflowReadableBytes":I
    .end local p3    # "offset":I
    .end local p4    # "length":I
    .local v10, "offset":I
    .local v11, "length":I
    .local v12, "wrapLater":Z
    .local v13, "notifyClosure":Z
    .local v14, "overflowReadableBytes":I
    .local v15, "decodeOut":Lio/netty/buffer/ByteBuf;
    :goto_0
    const/4 v6, 0x1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1340
    iget-object v1, v7, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v4, v10

    move v5, v11

    move/from16 p3, v12

    move v12, v6

    .end local v12    # "wrapLater":Z
    .local p3, "wrapLater":Z
    move-object v6, v15

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->unwrap(Lio/netty/handler/ssl/SslHandler;Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 1341
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 1342
    .local v1, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    .line 1343
    .local v2, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    .line 1344
    .local v3, "produced":I
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1347
    .local v4, "consumed":I
    add-int/2addr v10, v4

    .line 1348
    sub-int/2addr v11, v4

    .line 1350
    :try_start_2
    sget-object v5, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1392
    move-object/from16 v17, v0

    move/from16 v16, v10

    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v10    # "offset":I
    .local v16, "offset":I
    .local v17, "result":Ljavax/net/ssl/SSLEngineResult;
    const/4 v0, -0x1

    move v14, v0

    .end local v14    # "overflowReadableBytes":I
    .local v0, "overflowReadableBytes":I
    goto/16 :goto_3

    .line 1388
    .end local v16    # "offset":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    .local v0, "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v10    # "offset":I
    .restart local v14    # "overflowReadableBytes":I
    :pswitch_0
    const/4 v5, 0x1

    .line 1389
    .end local v13    # "notifyClosure":Z
    .local v5, "notifyClosure":Z
    const/4 v6, -0x1

    .line 1390
    .end local v14    # "overflowReadableBytes":I
    .local v6, "overflowReadableBytes":I
    move-object/from16 v17, v0

    move v13, v5

    move v14, v6

    move/from16 v16, v10

    goto/16 :goto_3

    .line 1352
    .end local v5    # "notifyClosure":Z
    .end local v6    # "overflowReadableBytes":I
    .restart local v13    # "notifyClosure":Z
    .restart local v14    # "overflowReadableBytes":I
    :pswitch_1
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    .line 1353
    .local v5, "readableBytes":I
    move v6, v14

    .line 1354
    .local v6, "previousOverflowReadableBytes":I
    move v14, v5

    .line 1355
    iget-object v12, v7, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v12}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-int/2addr v12, v5

    .line 1356
    .local v12, "bufferSize":I
    if-lez v5, :cond_0

    .line 1357
    move/from16 v16, v10

    const/4 v10, 0x1

    .end local v10    # "offset":I
    .restart local v16    # "offset":I
    :try_start_3
    iput-boolean v10, v7, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    .line 1358
    invoke-interface {v8, v15}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1361
    const/4 v15, 0x0

    .line 1362
    if-gtz v12, :cond_1

    .line 1367
    iget-object v10, v7, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v10

    invoke-interface {v10}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v10

    move v12, v10

    goto :goto_1

    .line 1371
    .end local v16    # "offset":I
    .restart local v10    # "offset":I
    :cond_0
    move/from16 v16, v10

    .end local v10    # "offset":I
    .restart local v16    # "offset":I
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1372
    const/4 v10, 0x0

    move-object v15, v10

    .line 1374
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    move-object/from16 v17, v0

    move/from16 v18, v5

    goto :goto_2

    .line 1377
    :cond_2
    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v0

    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v5

    .end local v5    # "readableBytes":I
    .local v18, "readableBytes":I
    const-string v5, "Two consecutive overflows but no content was consumed. "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v5, Ljavax/net/ssl/SSLSession;

    .line 1378
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " getApplicationBufferSize: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v7, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    .line 1379
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " maybe too small."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v9    # "originalLength":I
    .end local v11    # "length":I
    .end local v13    # "notifyClosure":Z
    .end local v14    # "overflowReadableBytes":I
    .end local v15    # "decodeOut":Lio/netty/buffer/ByteBuf;
    .end local v16    # "offset":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "packet":Lio/netty/buffer/ByteBuf;
    .end local p3    # "wrapLater":Z
    throw v10

    .line 1374
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v18    # "readableBytes":I
    .restart local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v5    # "readableBytes":I
    .restart local v9    # "originalLength":I
    .restart local v11    # "length":I
    .restart local v13    # "notifyClosure":Z
    .restart local v14    # "overflowReadableBytes":I
    .restart local v15    # "decodeOut":Lio/netty/buffer/ByteBuf;
    .restart local v16    # "offset":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "packet":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "wrapLater":Z
    :cond_3
    move-object/from16 v17, v0

    move/from16 v18, v5

    .line 1384
    .end local v0    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v5    # "readableBytes":I
    .restart local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v18    # "readableBytes":I
    :goto_2
    iget-object v0, v7, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    invoke-virtual {v0, v7, v12}, Lio/netty/handler/ssl/SslHandler$SslEngineType;->calculatePendingData(Lio/netty/handler/ssl/SslHandler;I)I

    move-result v0

    invoke-direct {v7, v8, v0}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v15, v0

    .line 1385
    move/from16 v12, p3

    move/from16 v10, v16

    goto/16 :goto_0

    .line 1396
    .end local v6    # "previousOverflowReadableBytes":I
    .end local v12    # "bufferSize":I
    .end local v18    # "readableBytes":I
    :goto_3
    sget-object v0, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    .line 1449
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_8

    .line 1398
    :pswitch_2
    goto :goto_5

    .line 1403
    :pswitch_3
    const/4 v5, 0x1

    invoke-direct {v7, v8, v5}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v11, :cond_5

    .line 1404
    goto :goto_4

    .line 1436
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1437
    const/4 v12, 0x1

    .line 1438
    .end local p3    # "wrapLater":Z
    .local v12, "wrapLater":Z
    move/from16 v10, v16

    goto/16 :goto_0

    .line 1444
    .end local v12    # "wrapLater":Z
    .restart local p3    # "wrapLater":Z
    :cond_4
    if-nez v11, :cond_5

    .line 1445
    nop

    .line 1465
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v3    # "produced":I
    .end local v4    # "consumed":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_4
    move/from16 v12, p3

    move/from16 v10, v16

    goto/16 :goto_9

    .line 1420
    .restart local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v3    # "produced":I
    .restart local v4    # "consumed":I
    .restart local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    .line 1421
    const/4 v0, 0x1

    .line 1434
    .end local p3    # "wrapLater":Z
    .local v0, "wrapLater":Z
    move v12, v0

    goto :goto_6

    .line 1408
    .end local v0    # "wrapLater":Z
    .restart local p3    # "wrapLater":Z
    :pswitch_6
    const/4 v5, 0x1

    invoke-direct {v7, v5}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_5

    .line 1415
    const/4 v12, 0x0

    .line 1416
    .end local p3    # "wrapLater":Z
    .restart local v12    # "wrapLater":Z
    move/from16 v10, v16

    goto :goto_9

    .line 1452
    .end local v12    # "wrapLater":Z
    .restart local p3    # "wrapLater":Z
    :cond_5
    :goto_5
    move/from16 v12, p3

    .end local p3    # "wrapLater":Z
    .restart local v12    # "wrapLater":Z
    :goto_6
    :try_start_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v0, :cond_7

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v0, :cond_6

    if-nez v4, :cond_6

    if-nez v3, :cond_6

    goto :goto_7

    .line 1463
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v3    # "produced":I
    .end local v4    # "consumed":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_6
    move/from16 v10, v16

    goto/16 :goto_0

    .line 1455
    .restart local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v3    # "produced":I
    .restart local v4    # "consumed":I
    .restart local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_7
    :goto_7
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v0, :cond_8

    .line 1458
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/ssl/SslHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1465
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v3    # "produced":I
    .end local v4    # "consumed":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_8
    move/from16 v10, v16

    goto :goto_9

    .line 1482
    :catchall_0
    move-exception v0

    move/from16 v10, v16

    goto :goto_b

    .line 1449
    .end local v12    # "wrapLater":Z
    .restart local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v3    # "produced":I
    .restart local v4    # "consumed":I
    .restart local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local p3    # "wrapLater":Z
    :goto_8
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown handshake status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v9    # "originalLength":I
    .end local v11    # "length":I
    .end local v13    # "notifyClosure":Z
    .end local v14    # "overflowReadableBytes":I
    .end local v15    # "decodeOut":Lio/netty/buffer/ByteBuf;
    .end local v16    # "offset":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "packet":Lio/netty/buffer/ByteBuf;
    .end local p3    # "wrapLater":Z
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1482
    .end local v1    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v2    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v3    # "produced":I
    .end local v4    # "consumed":I
    .end local v17    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v9    # "originalLength":I
    .restart local v11    # "length":I
    .restart local v13    # "notifyClosure":Z
    .restart local v14    # "overflowReadableBytes":I
    .restart local v15    # "decodeOut":Lio/netty/buffer/ByteBuf;
    .restart local v16    # "offset":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "packet":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "wrapLater":Z
    :catchall_1
    move-exception v0

    move/from16 v12, p3

    move/from16 v10, v16

    goto :goto_b

    .end local v16    # "offset":I
    .restart local v10    # "offset":I
    :catchall_2
    move-exception v0

    move/from16 v16, v10

    move/from16 v12, p3

    .end local v10    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_b

    .end local v16    # "offset":I
    .restart local v10    # "offset":I
    :catchall_3
    move-exception v0

    move/from16 v12, p3

    goto :goto_b

    .line 1339
    .end local p3    # "wrapLater":Z
    .restart local v12    # "wrapLater":Z
    :cond_9
    move/from16 p3, v12

    .line 1465
    :goto_9
    :try_start_6
    iget-boolean v0, v7, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshake:Z

    if-eqz v0, :cond_a

    iget-object v0, v7, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1470
    const/4 v0, 0x0

    iput-boolean v0, v7, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshake:Z

    .line 1471
    const/4 v0, 0x1

    move v12, v0

    .line 1474
    :cond_a
    if-eqz v12, :cond_b

    .line 1475
    const/4 v1, 0x1

    invoke-direct {v7, v8, v1}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 1478
    :cond_b
    if-eqz v13, :cond_c

    .line 1479
    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1482
    :cond_c
    if-eqz v15, :cond_e

    .line 1483
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1484
    const/4 v1, 0x1

    iput-boolean v1, v7, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    .line 1486
    invoke-interface {v8, v15}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_a

    .line 1488
    :cond_d
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1492
    :cond_e
    :goto_a
    sub-int v0, v9, v11

    return v0

    .line 1482
    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    move/from16 p3, v12

    :goto_b
    if-eqz v15, :cond_10

    .line 1483
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1484
    const/4 v1, 0x1

    iput-boolean v1, v7, Lio/netty/handler/ssl/SslHandler;->firedChannelRead:Z

    .line 1486
    invoke-interface {v8, v15}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_c

    .line 1488
    :cond_f
    invoke-virtual {v15}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1491
    :cond_10
    :goto_c
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1323
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)I

    .line 1324
    return-void
.end method

.method private wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 10
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "in"    # Lio/netty/buffer/ByteBuf;
    .param p4, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1019
    const/4 v0, 0x0

    .line 1021
    .local v0, "newDirectIn":Lio/netty/buffer/ByteBuf;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 1022
    .local v3, "readerIndex":I
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 1027
    .local v4, "readableBytes":I
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->engineType:Lio/netty/handler/ssl/SslHandler$SslEngineType;

    iget-boolean v5, v5, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-nez v5, :cond_0

    goto :goto_0

    .line 1044
    :cond_0
    invoke-interface {p1, v4}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v0, v5

    .line 1045
    invoke-virtual {v0, p3, v3, v4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1046
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    .line 1047
    .local v5, "in0":[Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v0, v6, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_1

    .line 1032
    .end local v5    # "in0":[Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    instance-of v5, p3, Lio/netty/buffer/CompositeByteBuf;

    if-nez v5, :cond_2

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1033
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    .line 1036
    .restart local v5    # "in0":[Ljava/nio/ByteBuffer;
    invoke-virtual {p3, v3, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_1

    .line 1038
    .end local v5    # "in0":[Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1051
    .restart local v5    # "in0":[Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v7

    invoke-virtual {p4, v6, v7}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1052
    .local v6, "out0":Ljava/nio/ByteBuffer;
    invoke-virtual {p2, v5, v6}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v7

    .line 1053
    .local v7, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v8

    invoke-virtual {p3, v8}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 1054
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p4, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1056
    sget-object v8, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v9

    aget v8, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v8, :pswitch_data_0

    .line 1061
    nop

    .line 1066
    iget-object v8, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    aput-object v1, v8, v2

    .line 1068
    if-eqz v0, :cond_3

    .line 1069
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_2

    .line 1058
    :pswitch_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v8}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v8

    invoke-virtual {p4, v8}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1059
    nop

    .line 1063
    .end local v6    # "out0":Ljava/nio/ByteBuffer;
    .end local v7    # "result":Ljavax/net/ssl/SSLEngineResult;
    goto :goto_1

    .line 1061
    .restart local v6    # "out0":Ljava/nio/ByteBuffer;
    .restart local v7    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_3
    :goto_2
    return-object v7

    .line 1066
    .end local v3    # "readerIndex":I
    .end local v4    # "readableBytes":I
    .end local v5    # "in0":[Ljava/nio/ByteBuffer;
    .end local v6    # "out0":Ljava/nio/ByteBuffer;
    .end local v7    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lio/netty/handler/ssl/SslHandler;->singleBuffer:[Ljava/nio/ByteBuffer;

    aput-object v1, v4, v2

    .line 1068
    if-eqz v0, :cond_4

    .line 1069
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1071
    :cond_4
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 16
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "inUnwrap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 802
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v1, 0x0

    .line 803
    .local v1, "out":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    .line 804
    .local v2, "promise":Lio/netty/channel/ChannelPromise;
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v9

    .line 805
    .local v9, "alloc":Lio/netty/buffer/ByteBufAllocator;
    const/4 v10, 0x0

    .line 806
    .local v10, "needUnwrap":Z
    const/4 v3, 0x0

    .line 808
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget v0, v7, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 811
    .local v0, "wrapDataSize":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_9

    .line 812
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    move-object v2, v4

    .line 813
    if-lez v0, :cond_0

    iget-object v4, v7, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 814
    invoke-virtual {v4, v9, v0, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->remove(Lio/netty/buffer/ByteBufAllocator;ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v4, v7, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 815
    invoke-virtual {v4, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->removeFirst(Lio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    :goto_1
    move-object v3, v4

    .line 816
    if-nez v3, :cond_1

    .line 817
    move/from16 v15, p2

    move-object v11, v1

    move-object v13, v2

    move-object v14, v3

    goto/16 :goto_7

    .line 820
    :cond_1
    if-nez v1, :cond_2

    .line 821
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v5

    invoke-direct {v7, v8, v4, v5}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v1, v4

    move-object v11, v1

    goto :goto_2

    .line 820
    :cond_2
    move-object v11, v1

    .line 824
    .end local v1    # "out":Lio/netty/buffer/ByteBuf;
    .local v11, "out":Lio/netty/buffer/ByteBuf;
    :goto_2
    :try_start_1
    iget-object v1, v7, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-direct {v7, v9, v1, v3, v11}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    move-object v12, v1

    .line 826
    .local v12, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v4, :cond_4

    .line 827
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 828
    const/4 v13, 0x0

    .line 829
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .local v13, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v3, "SSLEngine closed already"

    invoke-direct {v1, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    .line 830
    .local v14, "exception":Ljavax/net/ssl/SSLException;
    invoke-interface {v2, v14}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 831
    const/4 v15, 0x0

    .line 834
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .local v15, "promise":Lio/netty/channel/ChannelPromise;
    :try_start_3
    iget-object v1, v7, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v1, v8, v14}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 891
    if-eqz v13, :cond_3

    .line 892
    invoke-virtual {v13}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 894
    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v15

    move/from16 v5, p2

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V

    .line 835
    return-void

    .line 891
    .end local v0    # "wrapDataSize":I
    .end local v12    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v14    # "exception":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v0

    move-object v14, v13

    move-object v13, v15

    move/from16 v15, p2

    goto/16 :goto_8

    .end local v15    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v2    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_1
    move-exception v0

    move/from16 v15, p2

    move-object v14, v13

    move-object v13, v2

    goto/16 :goto_8

    .line 837
    .end local v13    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "wrapDataSize":I
    .restart local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v12    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 838
    iget-object v1, v7, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v1, v3, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->addFirst(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    .line 841
    const/4 v1, 0x0

    move-object v13, v1

    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    goto :goto_3

    .line 843
    .end local v1    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v2    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_5
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v13, v2

    .line 845
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .local v13, "promise":Lio/netty/channel/ChannelPromise;
    :goto_3
    const/4 v14, 0x0

    .line 847
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .local v14, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_5
    sget-object v1, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    packed-switch v1, :pswitch_data_0

    .line 884
    move/from16 v15, p2

    :try_start_6
    new-instance v1, Ljava/lang/IllegalStateException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_6

    .line 881
    :pswitch_0
    const/4 v10, 0x1

    .line 891
    if-eqz v14, :cond_6

    .line 892
    invoke-virtual {v14}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 894
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v13

    move/from16 v5, p2

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V

    .line 882
    return-void

    .line 856
    :pswitch_1
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    .line 859
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    .line 862
    :pswitch_3
    move-object v4, v13

    .line 866
    .local v4, "p":Lio/netty/channel/ChannelPromise;
    const/4 v13, 0x0

    .line 869
    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v1, :cond_7

    .line 871
    move-object v1, v11

    .line 872
    .local v1, "b":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    move-object v15, v2

    .end local v11    # "out":Lio/netty/buffer/ByteBuf;
    .local v2, "out":Lio/netty/buffer/ByteBuf;
    goto :goto_4

    .line 875
    .end local v1    # "b":Lio/netty/buffer/ByteBuf;
    .end local v2    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v11    # "out":Lio/netty/buffer/ByteBuf;
    :cond_7
    const/4 v1, 0x0

    move-object v15, v11

    move-object v11, v1

    .line 877
    .local v11, "b":Lio/netty/buffer/ByteBuf;
    .local v15, "out":Lio/netty/buffer/ByteBuf;
    :goto_4
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move/from16 v5, p2

    :try_start_8
    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 878
    move-object v2, v13

    move-object v1, v15

    move/from16 v15, p2

    goto :goto_5

    .line 891
    .end local v0    # "wrapDataSize":I
    .end local v4    # "p":Lio/netty/channel/ChannelPromise;
    .end local v11    # "b":Lio/netty/buffer/ByteBuf;
    .end local v12    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_2
    move-exception v0

    move-object v11, v15

    move/from16 v15, p2

    goto/16 :goto_8

    .line 849
    .end local v15    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "wrapDataSize":I
    .local v11, "out":Lio/netty/buffer/ByteBuf;
    .restart local v12    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_4
    move/from16 v15, p2

    :try_start_9
    invoke-direct {v7, v15}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 852
    goto :goto_7

    .line 849
    :cond_8
    move-object v1, v11

    move-object v2, v13

    .line 888
    .end local v11    # "out":Lio/netty/buffer/ByteBuf;
    .end local v12    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v13    # "promise":Lio/netty/channel/ChannelPromise;
    .local v1, "out":Lio/netty/buffer/ByteBuf;
    .local v2, "promise":Lio/netty/channel/ChannelPromise;
    :goto_5
    move-object v3, v14

    goto/16 :goto_0

    .line 891
    .end local v0    # "wrapDataSize":I
    .end local v1    # "out":Lio/netty/buffer/ByteBuf;
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v11    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v13    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 884
    .restart local v0    # "wrapDataSize":I
    .restart local v12    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown handshake status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 885
    invoke-virtual {v12}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v9    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local v10    # "needUnwrap":Z
    .end local v11    # "out":Lio/netty/buffer/ByteBuf;
    .end local v13    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v14    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "inUnwrap":Z
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 891
    .end local v0    # "wrapDataSize":I
    .end local v12    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v9    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .restart local v10    # "needUnwrap":Z
    .restart local v11    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v13    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v14    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "inUnwrap":Z
    :catchall_4
    move-exception v0

    move/from16 v15, p2

    goto :goto_8

    .end local v13    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v14    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v3    # "buf":Lio/netty/buffer/ByteBuf;
    :catchall_5
    move-exception v0

    move/from16 v15, p2

    move-object v13, v2

    move-object v14, v3

    goto :goto_8

    .line 811
    .end local v11    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "wrapDataSize":I
    .restart local v1    # "out":Lio/netty/buffer/ByteBuf;
    :cond_9
    move/from16 v15, p2

    move-object v11, v1

    move-object v13, v2

    move-object v14, v3

    .line 891
    .end local v0    # "wrapDataSize":I
    .end local v1    # "out":Lio/netty/buffer/ByteBuf;
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v11    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v13    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v14    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_7
    if-eqz v14, :cond_a

    .line 892
    invoke-virtual {v14}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 894
    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v13

    move/from16 v5, p2

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V

    .line 895
    nop

    .line 896
    return-void

    .line 891
    .end local v11    # "out":Lio/netty/buffer/ByteBuf;
    .end local v13    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v14    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v3    # "buf":Lio/netty/buffer/ByteBuf;
    :catchall_6
    move-exception v0

    move/from16 v15, p2

    move-object v11, v1

    move-object v13, v2

    move-object v14, v3

    .end local v1    # "out":Lio/netty/buffer/ByteBuf;
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v11    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v13    # "promise":Lio/netty/channel/ChannelPromise;
    .restart local v14    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_8
    if-eqz v14, :cond_b

    .line 892
    invoke-virtual {v14}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 894
    :cond_b
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v13

    move/from16 v5, p2

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;ZZ)V

    .line 895
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    .line 788
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshake:Z

    .line 792
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 797
    nop

    .line 798
    return-void

    .line 796
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 797
    throw v0
.end method

.method private wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)Z
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "inUnwrap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "out":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 936
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b

    .line 937
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 941
    const/16 v4, 0x800

    invoke-direct {p0, p1, v4, v2}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move-object v0, v4

    .line 943
    :cond_0
    iget-object v4, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, v1, v4, v5, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/buffer/ByteBufAllocator;Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 945
    .local v4, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v5

    if-lez v5, :cond_2

    .line 946
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v5

    new-instance v6, Lio/netty/handler/ssl/SslHandler$2;

    invoke-direct {v6, p0, p1}, Lio/netty/handler/ssl/SslHandler$2;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v5, v6}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 955
    if-eqz p2, :cond_1

    .line 956
    iput-boolean v2, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    .line 958
    :cond_1
    const/4 v0, 0x0

    .line 961
    :cond_2
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .line 962
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v6, Lio/netty/handler/ssl/SslHandler$9;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 994
    new-instance v2, Ljava/lang/IllegalStateException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 974
    :pswitch_0
    if-eqz p2, :cond_4

    .line 978
    nop

    .line 1010
    if-eqz v0, :cond_3

    .line 1011
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 978
    :cond_3
    return v3

    .line 981
    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V

    .line 982
    goto :goto_1

    .line 984
    :pswitch_1
    goto :goto_1

    .line 986
    :pswitch_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    .line 989
    if-nez p2, :cond_5

    .line 990
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    :cond_5
    nop

    .line 1010
    if-eqz v0, :cond_6

    .line 1011
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 992
    :cond_6
    return v2

    .line 964
    :pswitch_3
    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 965
    nop

    .line 1010
    if-eqz v0, :cond_7

    .line 1011
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 965
    :cond_7
    return v3

    .line 967
    :pswitch_4
    :try_start_3
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks(Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 970
    goto :goto_3

    .line 999
    :cond_8
    :goto_1
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v5, v2, :cond_9

    .line 1000
    goto :goto_3

    .line 1005
    :cond_9
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v6, :cond_a

    .line 1006
    goto :goto_3

    .line 1008
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v5    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_a
    goto/16 :goto_0

    .line 994
    .restart local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v5    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown handshake status: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Lio/netty/buffer/ByteBuf;
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "inUnwrap":Z
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1010
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v5    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v0    # "out":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "inUnwrap":Z
    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    .line 1011
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1014
    :cond_c
    return v3

    .line 1010
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_d

    .line 1011
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1013
    :cond_d
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applicationProtocol()Ljava/lang/String;
    .locals 2

    .line 598
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 599
    .local v0, "engine":Ljavax/net/ssl/SSLEngine;
    instance-of v1, v0, Lio/netty/handler/ssl/ApplicationProtocolAccessor;

    if-nez v1, :cond_0

    .line 600
    const/4 v1, 0x0

    return-object v1

    .line 603
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/netty/handler/ssl/ApplicationProtocolAccessor;

    invoke-interface {v1}, Lio/netty/handler/ssl/ApplicationProtocolAccessor;->getNegotiatedApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 701
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 702
    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2048
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-nez v0, :cond_0

    .line 2049
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing()V

    .line 2051
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 2052
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1076
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 1079
    .local v0, "exception":Ljava/nio/channels/ClosedChannelException;
    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->outboundClosed:Z

    xor-int/lit8 v4, v1, 0x1

    iget-boolean v5, p0, Lio/netty/handler/ssl/SslHandler;->handshakeStarted:Z

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;ZZZ)V

    .line 1082
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->notifyClosePromise(Ljava/lang/Throwable;)V

    .line 1084
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1085
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1290
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->channelReadComplete0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1291
    return-void
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 621
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->closeOutbound()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 629
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 724
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    .line 725
    return-void
.end method

.method public closeOutbound()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 639
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public closeOutbound(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 649
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 650
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->closeOutbound0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 653
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ssl/SslHandler$1;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/ssl/SslHandler$1;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 660
    :goto_0
    return-object p1
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 707
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 708
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1278
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    if-eqz v0, :cond_0

    .line 1279
    return-void

    .line 1281
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->jdkCompatibilityMode:Z

    if-eqz v0, :cond_1

    .line 1282
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->decodeJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    .line 1284
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->decodeNonJdkCompatible(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    .line 1286
    :goto_0
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 712
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 713
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 718
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    .line 719
    return-void
.end method

.method public engine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 589
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1089
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->ignoreException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    nop

    .line 1095
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    .line 1093
    const-string v2, "{} Swallowing a harmless \'connection reset by peer / broken pipe\' error that occurred while writing close_notify in response to the peer\'s close_notify"

    invoke-interface {v0, v2, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1100
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 1104
    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 1106
    :cond_2
    :goto_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 758
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->sentFirstMessage:Z

    if-nez v0, :cond_0

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->sentFirstMessage:Z

    .line 760
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->writeAndRemoveAll(Lio/netty/channel/ChannelHandlerContext;)V

    .line 761
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->forceFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 764
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing()V

    .line 765
    return-void

    .line 768
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->processTask:Z

    if-eqz v0, :cond_1

    .line 769
    return-void

    .line 773
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->wrapAndFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    goto :goto_0

    .line 774
    :catchall_0
    move-exception v0

    .line 775
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 776
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 778
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final getCloseNotifyFlushTimeoutMillis()J
    .locals 2

    .line 533
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    return-wide v0
.end method

.method public final getCloseNotifyReadTimeoutMillis()J
    .locals 2

    .line 562
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    return-wide v0
.end method

.method public getCloseNotifyTimeoutMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler;->getCloseNotifyFlushTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandshakeTimeoutMillis()J
    .locals 2

    .line 462
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1899
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 1901
    new-instance v0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/Channel;I)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 1902
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->startHandshakeProcessing()V

    .line 1905
    :cond_0
    return-void
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Pending write on removal of SslHandler"

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V

    .line 693
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    .line 694
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    instance-of v1, v0, Lio/netty/util/ReferenceCounted;

    if-eqz v1, :cond_1

    .line 695
    check-cast v0, Lio/netty/util/ReferenceCounted;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 697
    :cond_1
    return-void
.end method

.method public handshakeFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->readDuringHandshake:Z

    .line 733
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 734
    return-void
.end method

.method public renegotiate()Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 1924
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 1925
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 1929
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/handler/ssl/SslHandler;->renegotiate(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 1926
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public renegotiate(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 1936
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1938
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 1939
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_1

    .line 1943
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 1944
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1945
    new-instance v2, Lio/netty/handler/ssl/SslHandler$4;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/ssl/SslHandler$4;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1951
    return-object p1

    .line 1954
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->renegotiateOnEventLoop(Lio/netty/util/concurrent/Promise;)V

    .line 1955
    return-object p1

    .line 1940
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public final setCloseNotifyFlushTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "closeNotifyFlushTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 542
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeoutMillis(J)V

    .line 543
    return-void
.end method

.method public final setCloseNotifyFlushTimeoutMillis(J)V
    .locals 3
    .param p1, "closeNotifyFlushTimeoutMillis"    # J

    .line 549
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 553
    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyFlushTimeoutMillis:J

    .line 554
    return-void

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeNotifyFlushTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCloseNotifyReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "closeNotifyReadTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 571
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyReadTimeoutMillis(J)V

    .line 572
    return-void
.end method

.method public final setCloseNotifyReadTimeoutMillis(J)V
    .locals 3
    .param p1, "closeNotifyReadTimeoutMillis"    # J

    .line 578
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 582
    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyReadTimeoutMillis:J

    .line 583
    return-void

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeNotifyReadTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCloseNotifyTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "closeNotifyTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 517
    return-void
.end method

.method public setCloseNotifyTimeoutMillis(J)V
    .locals 0
    .param p1, "closeNotifyFlushTimeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyFlushTimeoutMillis(J)V

    .line 525
    return-void
.end method

.method public setHandshakeTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "handshakeTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 466
    const-string v0, "unit"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setHandshakeTimeoutMillis(J)V

    .line 468
    return-void
.end method

.method public setHandshakeTimeoutMillis(J)V
    .locals 3
    .param p1, "handshakeTimeoutMillis"    # J

    .line 471
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 475
    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 476
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshakeTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setWrapDataSize(I)V
    .locals 0
    .param p1, "wrapDataSize"    # I

    .line 500
    iput p1, p0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 501
    return-void
.end method

.method public sslCloseFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslClosePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 742
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lio/netty/buffer/ByteBuf;

    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 744
    .local v0, "exception":Lio/netty/handler/codec/UnsupportedMessageTypeException;
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 745
    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 746
    .end local v0    # "exception":Lio/netty/handler/codec/UnsupportedMessageTypeException;
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;

    if-nez v0, :cond_1

    .line 747
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 748
    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->newPendingWritesNullException()Ljava/lang/IllegalStateException;

    move-result-object v0

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 750
    :cond_1
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, p3}, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    .line 752
    :goto_0
    return-void
.end method
