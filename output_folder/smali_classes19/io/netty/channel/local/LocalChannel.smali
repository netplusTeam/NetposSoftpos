.class public Lio/netty/channel/local/LocalChannel;
.super Lio/netty/channel/AbstractChannel;
.source "LocalChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/local/LocalChannel$LocalUnsafe;,
        Lio/netty/channel/local/LocalChannel$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FINISH_READ_FUTURE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/channel/local/LocalChannel;",
            "Lio/netty/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_READER_STACK_DEPTH:I = 0x8

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/ChannelConfig;

.field private volatile connectPromise:Lio/netty/channel/ChannelPromise;

.field private volatile finishReadFuture:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final inboundBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile localAddress:Lio/netty/channel/local/LocalAddress;

.field private volatile peer:Lio/netty/channel/local/LocalChannel;

.field private volatile readInProgress:Z

.field private final readTask:Ljava/lang/Runnable;

.field private volatile remoteAddress:Lio/netty/channel/local/LocalAddress;

.field private final shutdownHook:Ljava/lang/Runnable;

.field private volatile state:Lio/netty/channel/local/LocalChannel$State;

.field private volatile writeInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Lio/netty/channel/local/LocalChannel;

    .line 51
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/local/LocalChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 53
    const-class v1, Lio/netty/util/concurrent/Future;

    .line 54
    const-string v2, "finishReadFuture"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/local/LocalChannel;->FINISH_READ_FUTURE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 55
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/local/LocalChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 60
    new-instance v0, Lio/netty/channel/DefaultChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    iput-object v0, p0, Lio/netty/channel/local/LocalChannel;->config:Lio/netty/channel/ChannelConfig;

    .line 62
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newSpscQueue()Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lio/netty/channel/local/LocalChannel;->inboundBuffer:Ljava/util/Queue;

    .line 63
    new-instance v1, Lio/netty/channel/local/LocalChannel$1;

    invoke-direct {v1, p0}, Lio/netty/channel/local/LocalChannel$1;-><init>(Lio/netty/channel/local/LocalChannel;)V

    iput-object v1, p0, Lio/netty/channel/local/LocalChannel;->readTask:Ljava/lang/Runnable;

    .line 73
    new-instance v1, Lio/netty/channel/local/LocalChannel$2;

    invoke-direct {v1, p0}, Lio/netty/channel/local/LocalChannel$2;-><init>(Lio/netty/channel/local/LocalChannel;)V

    iput-object v1, p0, Lio/netty/channel/local/LocalChannel;->shutdownHook:Ljava/lang/Runnable;

    .line 91
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    new-instance v2, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 92
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/local/LocalServerChannel;Lio/netty/channel/local/LocalChannel;)V
    .locals 3
    .param p1, "parent"    # Lio/netty/channel/local/LocalServerChannel;
    .param p2, "peer"    # Lio/netty/channel/local/LocalChannel;

    .line 95
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 60
    new-instance v0, Lio/netty/channel/DefaultChannelConfig;

    invoke-direct {v0, p0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    iput-object v0, p0, Lio/netty/channel/local/LocalChannel;->config:Lio/netty/channel/ChannelConfig;

    .line 62
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newSpscQueue()Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lio/netty/channel/local/LocalChannel;->inboundBuffer:Ljava/util/Queue;

    .line 63
    new-instance v1, Lio/netty/channel/local/LocalChannel$1;

    invoke-direct {v1, p0}, Lio/netty/channel/local/LocalChannel$1;-><init>(Lio/netty/channel/local/LocalChannel;)V

    iput-object v1, p0, Lio/netty/channel/local/LocalChannel;->readTask:Ljava/lang/Runnable;

    .line 73
    new-instance v1, Lio/netty/channel/local/LocalChannel$2;

    invoke-direct {v1, p0}, Lio/netty/channel/local/LocalChannel$2;-><init>(Lio/netty/channel/local/LocalChannel;)V

    iput-object v1, p0, Lio/netty/channel/local/LocalChannel;->shutdownHook:Ljava/lang/Runnable;

    .line 96
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    new-instance v2, Lio/netty/channel/PreferHeapByteBufAllocator;

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/netty/channel/PreferHeapByteBufAllocator;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 97
    iput-object p2, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    .line 98
    invoke-virtual {p1}, Lio/netty/channel/local/LocalServerChannel;->localAddress()Lio/netty/channel/local/LocalAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/local/LocalChannel;->localAddress:Lio/netty/channel/local/LocalAddress;

    .line 99
    invoke-virtual {p2}, Lio/netty/channel/local/LocalChannel;->localAddress()Lio/netty/channel/local/LocalAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/local/LocalChannel;->remoteAddress:Lio/netty/channel/local/LocalAddress;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/local/LocalChannel;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/local/LocalChannel;

    .line 50
    invoke-direct {p0}, Lio/netty/channel/local/LocalChannel;->readInbound()V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/local/LocalChannel;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/local/LocalChannel;

    .line 50
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method static synthetic access$202(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/local/LocalChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 50
    iput-object p1, p0, Lio/netty/channel/local/LocalChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method static synthetic access$300(Lio/netty/channel/local/LocalChannel;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/local/LocalChannel;
    .param p1, "x1"    # Z

    .line 50
    invoke-direct {p0, p1}, Lio/netty/channel/local/LocalChannel;->tryClose(Z)V

    return-void
.end method

.method static synthetic access$400(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/local/LocalChannel;
    .param p1, "x1"    # Lio/netty/channel/local/LocalChannel;

    .line 50
    invoke-direct {p0, p1}, Lio/netty/channel/local/LocalChannel;->finishPeerRead0(Lio/netty/channel/local/LocalChannel;)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/channel/local/LocalChannel;)Lio/netty/channel/local/LocalChannel$State;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/local/LocalChannel;

    .line 50
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    return-object v0
.end method

.method static synthetic access$602(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)Lio/netty/channel/local/LocalChannel;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/local/LocalChannel;
    .param p1, "x1"    # Lio/netty/channel/local/LocalChannel;

    .line 50
    iput-object p1, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    return-object p1
.end method

.method private finishPeerRead(Lio/netty/channel/local/LocalChannel;)V
    .locals 2
    .param p1, "peer"    # Lio/netty/channel/local/LocalChannel;

    .line 390
    invoke-virtual {p1}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lio/netty/channel/local/LocalChannel;->writeInProgress:Z

    if-nez v0, :cond_0

    .line 391
    invoke-direct {p0, p1}, Lio/netty/channel/local/LocalChannel;->finishPeerRead0(Lio/netty/channel/local/LocalChannel;)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/channel/local/LocalChannel;->runFinishPeerReadTask(Lio/netty/channel/local/LocalChannel;)V

    .line 395
    :goto_0
    return-void
.end method

.method private finishPeerRead0(Lio/netty/channel/local/LocalChannel;)V
    .locals 3
    .param p1, "peer"    # Lio/netty/channel/local/LocalChannel;

    .line 431
    iget-object v0, p1, Lio/netty/channel/local/LocalChannel;->finishReadFuture:Lio/netty/util/concurrent/Future;

    .line 432
    .local v0, "peerFinishReadFuture":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    if-eqz v0, :cond_1

    .line 433
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-direct {p0, p1}, Lio/netty/channel/local/LocalChannel;->runFinishPeerReadTask(Lio/netty/channel/local/LocalChannel;)V

    .line 435
    return-void

    .line 438
    :cond_0
    sget-object v1, Lio/netty/channel/local/LocalChannel;->FINISH_READ_FUTURE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 443
    :cond_1
    iget-boolean v1, p1, Lio/netty/channel/local/LocalChannel;->readInProgress:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lio/netty/channel/local/LocalChannel;->inboundBuffer:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p1, Lio/netty/channel/local/LocalChannel;->readInProgress:Z

    .line 445
    invoke-direct {p1}, Lio/netty/channel/local/LocalChannel;->readInbound()V

    .line 447
    :cond_2
    return-void
.end method

.method private readInbound()V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    .line 292
    .local v0, "handle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 293
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 295
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    :cond_0
    iget-object v2, p0, Lio/netty/channel/local/LocalChannel;->inboundBuffer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 296
    .local v2, "received":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 297
    goto :goto_0

    .line 299
    :cond_1
    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 300
    .end local v2    # "received":Ljava/lang/Object;
    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    :goto_0
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 303
    return-void
.end method

.method private releaseInboundBuffers()V
    .locals 3

    .line 421
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 422
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/local/LocalChannel;->readInProgress:Z

    .line 423
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->inboundBuffer:Ljava/util/Queue;

    .line 425
    .local v0, "inboundBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "msg":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 426
    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    :cond_2
    return-void
.end method

.method private runFinishPeerReadTask(Lio/netty/channel/local/LocalChannel;)V
    .locals 5
    .param p1, "peer"    # Lio/netty/channel/local/LocalChannel;

    .line 400
    new-instance v0, Lio/netty/channel/local/LocalChannel$5;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/local/LocalChannel$5;-><init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V

    .line 407
    .local v0, "finishPeerReadTask":Ljava/lang/Runnable;
    :try_start_0
    iget-boolean v1, p1, Lio/netty/channel/local/LocalChannel;->writeInProgress:Z

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p1}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/EventLoop;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p1, Lio/netty/channel/local/LocalChannel;->finishReadFuture:Lio/netty/util/concurrent/Future;

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :goto_0
    goto :goto_1

    .line 412
    :catchall_0
    move-exception v1

    .line 413
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/channel/local/LocalChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v4, "Closing Local channels {}-{} because exception occurred!"

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 415
    invoke-virtual {p1}, Lio/netty/channel/local/LocalChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 416
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 418
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private tryClose(Z)V
    .locals 2
    .param p1, "isActive"    # Z

    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/local/LocalChannel;->releaseInboundBuffers()V

    .line 282
    :goto_0
    return-void
.end method


# virtual methods
.method public config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->config:Lio/netty/channel/ChannelConfig;

    return-object v0
.end method

.method protected doBeginRead()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    iget-boolean v0, p0, Lio/netty/channel/local/LocalChannel;->readInProgress:Z

    if-eqz v0, :cond_0

    .line 308
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->inboundBuffer:Ljava/util/Queue;

    .line 312
    .local v0, "inboundBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 313
    iput-boolean v2, p0, Lio/netty/channel/local/LocalChannel;->readInProgress:Z

    .line 314
    return-void

    .line 317
    :cond_1
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    .line 318
    .local v1, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->localChannelReaderStackDepth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 319
    .local v3, "stackDepth":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    .line 320
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lio/netty/util/internal/InternalThreadLocalMap;->setLocalChannelReaderStackDepth(I)V

    .line 322
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/local/LocalChannel;->readInbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setLocalChannelReaderStackDepth(I)V

    .line 325
    goto :goto_0

    .line 324
    :catchall_0
    move-exception v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lio/netty/util/internal/InternalThreadLocalMap;->setLocalChannelReaderStackDepth(I)V

    .line 325
    throw v2

    .line 328
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v4

    iget-object v5, p0, Lio/netty/channel/local/LocalChannel;->readTask:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    goto :goto_0

    .line 329
    :catchall_1
    move-exception v4

    .line 330
    .local v4, "cause":Ljava/lang/Throwable;
    sget-object v5, Lio/netty/channel/local/LocalChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    iget-object v7, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const-string v2, "Closing Local channels {}-{} because exception occurred!"

    invoke-interface {v5, v2, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 332
    iget-object v2, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    invoke-virtual {v2}, Lio/netty/channel/local/LocalChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 333
    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 336
    .end local v4    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->localAddress:Lio/netty/channel/local/LocalAddress;

    .line 196
    invoke-static {p0, v0, p1}, Lio/netty/channel/local/LocalChannelRegistry;->register(Lio/netty/channel/Channel;Lio/netty/channel/local/LocalAddress;Ljava/net/SocketAddress;)Lio/netty/channel/local/LocalAddress;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/local/LocalChannel;->localAddress:Lio/netty/channel/local/LocalAddress;

    .line 198
    sget-object v0, Lio/netty/channel/local/LocalChannel$State;->BOUND:Lio/netty/channel/local/LocalChannel$State;

    iput-object v0, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    .line 199
    return-void
.end method

.method protected doClose()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    .line 209
    .local v0, "peer":Lio/netty/channel/local/LocalChannel;
    iget-object v1, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    .line 211
    .local v1, "oldState":Lio/netty/channel/local/LocalChannel$State;
    :try_start_0
    sget-object v2, Lio/netty/channel/local/LocalChannel$State;->CLOSED:Lio/netty/channel/local/LocalChannel$State;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 213
    iget-object v2, p0, Lio/netty/channel/local/LocalChannel;->localAddress:Lio/netty/channel/local/LocalAddress;

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->parent()Lio/netty/channel/local/LocalServerChannel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lio/netty/channel/local/LocalChannel;->localAddress:Lio/netty/channel/local/LocalAddress;

    invoke-static {v2}, Lio/netty/channel/local/LocalChannelRegistry;->unregister(Lio/netty/channel/local/LocalAddress;)V

    .line 217
    :cond_0
    iput-object v3, p0, Lio/netty/channel/local/LocalChannel;->localAddress:Lio/netty/channel/local/LocalAddress;

    .line 222
    :cond_1
    sget-object v2, Lio/netty/channel/local/LocalChannel$State;->CLOSED:Lio/netty/channel/local/LocalChannel$State;

    iput-object v2, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    .line 225
    iget-boolean v2, p0, Lio/netty/channel/local/LocalChannel;->writeInProgress:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 226
    invoke-direct {p0, v0}, Lio/netty/channel/local/LocalChannel;->finishPeerRead(Lio/netty/channel/local/LocalChannel;)V

    .line 229
    :cond_2
    iget-object v2, p0, Lio/netty/channel/local/LocalChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    .line 230
    .local v2, "promise":Lio/netty/channel/ChannelPromise;
    if-eqz v2, :cond_3

    .line 232
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v2, v4}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 233
    iput-object v3, p0, Lio/netty/channel/local/LocalChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    .line 237
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_3
    if-eqz v0, :cond_5

    .line 238
    iput-object v3, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    .line 242
    invoke-virtual {v0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    .line 243
    .local v2, "peerEventLoop":Lio/netty/channel/EventLoop;
    invoke-virtual {v0}, Lio/netty/channel/local/LocalChannel;->isActive()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    .local v3, "peerIsActive":Z
    :try_start_1
    new-instance v4, Lio/netty/channel/local/LocalChannel$4;

    invoke-direct {v4, p0, v0, v3}, Lio/netty/channel/local/LocalChannel$4;-><init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;Z)V

    invoke-interface {v2, v4}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    goto :goto_1

    .line 251
    :catchall_0
    move-exception v4

    .line 252
    .local v4, "cause":Ljava/lang/Throwable;
    :try_start_2
    sget-object v5, Lio/netty/channel/local/LocalChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Releasing Inbound Queues for channels {}-{} because exception occurred!"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-interface {v2}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 255
    invoke-direct {v0}, Lio/netty/channel/local/LocalChannel;->releaseInboundBuffers()V

    goto :goto_0

    .line 259
    :cond_4
    invoke-virtual {v0}, Lio/netty/channel/local/LocalChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 261
    :goto_0
    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    .end local v2    # "peerEventLoop":Lio/netty/channel/EventLoop;
    .end local v3    # "peerIsActive":Z
    .end local v4    # "cause":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    sget-object v2, Lio/netty/channel/local/LocalChannel$State;->CLOSED:Lio/netty/channel/local/LocalChannel$State;

    if-eq v1, v2, :cond_6

    .line 271
    invoke-direct {p0}, Lio/netty/channel/local/LocalChannel;->releaseInboundBuffers()V

    .line 274
    :cond_6
    return-void

    .line 266
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_7

    sget-object v3, Lio/netty/channel/local/LocalChannel$State;->CLOSED:Lio/netty/channel/local/LocalChannel$State;

    if-eq v1, v3, :cond_7

    .line 271
    invoke-direct {p0}, Lio/netty/channel/local/LocalChannel;->releaseInboundBuffers()V

    .line 273
    :cond_7
    throw v2
.end method

.method protected doDeregister()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    iget-object v1, p0, Lio/netty/channel/local/LocalChannel;->shutdownHook:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->removeShutdownHook(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->doClose()V

    .line 204
    return-void
.end method

.method protected doRegister()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->parent()Lio/netty/channel/local/LocalServerChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    .line 168
    .local v0, "peer":Lio/netty/channel/local/LocalChannel;
    sget-object v1, Lio/netty/channel/local/LocalChannel$State;->CONNECTED:Lio/netty/channel/local/LocalChannel$State;

    iput-object v1, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    .line 170
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->parent()Lio/netty/channel/local/LocalServerChannel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->parent()Lio/netty/channel/local/LocalServerChannel;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/local/LocalServerChannel;->localAddress()Lio/netty/channel/local/LocalAddress;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lio/netty/channel/local/LocalChannel;->remoteAddress:Lio/netty/channel/local/LocalAddress;

    .line 171
    sget-object v1, Lio/netty/channel/local/LocalChannel$State;->CONNECTED:Lio/netty/channel/local/LocalChannel$State;

    iput-object v1, v0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    .line 177
    invoke-virtual {v0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    new-instance v2, Lio/netty/channel/local/LocalChannel$3;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/local/LocalChannel$3;-><init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V

    invoke-interface {v1, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 190
    .end local v0    # "peer":Lio/netty/channel/local/LocalChannel;
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    iget-object v1, p0, Lio/netty/channel/local/LocalChannel;->shutdownHook:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->addShutdownHook(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 6
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    sget-object v0, Lio/netty/channel/local/LocalChannel$6;->$SwitchMap$io$netty$channel$local$LocalChannel$State:[I

    iget-object v1, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    invoke-virtual {v1}, Lio/netty/channel/local/LocalChannel$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->peer:Lio/netty/channel/local/LocalChannel;

    .line 352
    .local v0, "peer":Lio/netty/channel/local/LocalChannel;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/channel/local/LocalChannel;->writeInProgress:Z

    goto :goto_0

    .line 345
    .end local v0    # "peer":Lio/netty/channel/local/LocalChannel;
    :pswitch_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 343
    :pswitch_1
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 354
    .restart local v0    # "peer":Lio/netty/channel/local/LocalChannel;
    :goto_0
    const/4 v1, 0x0

    .line 356
    .local v1, "exception":Ljava/nio/channels/ClosedChannelException;
    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    .local v3, "msg":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 358
    nop

    .line 382
    .end local v1    # "exception":Ljava/nio/channels/ClosedChannelException;
    .end local v3    # "msg":Ljava/lang/Object;
    iput-boolean v2, p0, Lio/netty/channel/local/LocalChannel;->writeInProgress:Z

    .line 383
    nop

    .line 385
    invoke-direct {p0, v0}, Lio/netty/channel/local/LocalChannel;->finishPeerRead(Lio/netty/channel/local/LocalChannel;)V

    .line 386
    return-void

    .line 363
    .restart local v1    # "exception":Ljava/nio/channels/ClosedChannelException;
    .restart local v3    # "msg":Ljava/lang/Object;
    :cond_0
    :try_start_1
    iget-object v4, v0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    sget-object v5, Lio/netty/channel/local/LocalChannel$State;->CONNECTED:Lio/netty/channel/local/LocalChannel$State;

    if-ne v4, v5, :cond_1

    .line 364
    iget-object v4, v0, Lio/netty/channel/local/LocalChannel;->inboundBuffer:Ljava/util/Queue;

    invoke-static {v3}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_2

    .line 367
    :cond_1
    if-nez v1, :cond_2

    .line 368
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v1, v4

    .line 370
    :cond_2
    invoke-virtual {p1, v1}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :goto_2
    goto :goto_3

    .line 372
    :catchall_0
    move-exception v4

    .line 373
    .local v4, "cause":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p1, v4}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    .end local v3    # "msg":Ljava/lang/Object;
    .end local v4    # "cause":Ljava/lang/Throwable;
    :goto_3
    goto :goto_1

    .line 382
    .end local v1    # "exception":Ljava/nio/channels/ClosedChannelException;
    :catchall_1
    move-exception v1

    iput-boolean v2, p0, Lio/netty/channel/local/LocalChannel;->writeInProgress:Z

    .line 383
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isActive()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    sget-object v1, Lio/netty/channel/local/LocalChannel$State;->CONNECTED:Lio/netty/channel/local/LocalChannel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 144
    instance-of v0, p1, Lio/netty/channel/SingleThreadEventLoop;

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->state:Lio/netty/channel/local/LocalChannel$State;

    sget-object v1, Lio/netty/channel/local/LocalChannel$State;->CLOSED:Lio/netty/channel/local/LocalChannel$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localAddress()Lio/netty/channel/local/LocalAddress;
    .locals 1

    .line 119
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->localAddress()Lio/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->localAddress:Lio/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 104
    sget-object v0, Lio/netty/channel/local/LocalChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 2

    .line 139
    new-instance v0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;-><init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel$1;)V

    return-object v0
.end method

.method public bridge synthetic parent()Lio/netty/channel/Channel;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->parent()Lio/netty/channel/local/LocalServerChannel;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lio/netty/channel/local/LocalServerChannel;
    .locals 1

    .line 114
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/local/LocalServerChannel;

    return-object v0
.end method

.method public remoteAddress()Lio/netty/channel/local/LocalAddress;
    .locals 1

    .line 124
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lio/netty/channel/local/LocalAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel;->remoteAddress()Lio/netty/channel/local/LocalAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 154
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel;->remoteAddress:Lio/netty/channel/local/LocalAddress;

    return-object v0
.end method
