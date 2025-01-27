.class public abstract Lio/netty/channel/nio/AbstractNioChannel;
.super Lio/netty/channel/AbstractChannel;
.source "AbstractNioChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;,
        Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final ch:Ljava/nio/channels/SelectableChannel;

.field private final clearReadPendingRunnable:Ljava/lang/Runnable;

.field private connectPromise:Lio/netty/channel/ChannelPromise;

.field private connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field protected final readInterestOp:I

.field readPending:Z

.field private requestedRemoteAddress:Ljava/net/SocketAddress;

.field volatile selectionKey:Ljava/nio/channels/SelectionKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    nop

    .line 50
    const-class v0, Lio/netty/channel/nio/AbstractNioChannel;

    .line 51
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/nio/AbstractNioChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V
    .locals 4
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "ch"    # Ljava/nio/channels/SelectableChannel;
    .param p3, "readInterestOp"    # I

    .line 80
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 57
    new-instance v0, Lio/netty/channel/nio/AbstractNioChannel$1;

    invoke-direct {v0, p0}, Lio/netty/channel/nio/AbstractNioChannel$1;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    iput-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object p2, p0, Lio/netty/channel/nio/AbstractNioChannel;->ch:Ljava/nio/channels/SelectableChannel;

    .line 82
    iput p3, p0, Lio/netty/channel/nio/AbstractNioChannel;->readInterestOp:I

    .line 84
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p2}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e2":Ljava/io/IOException;
    sget-object v2, Lio/netty/channel/nio/AbstractNioChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to close a partially initialized socket."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v1    # "e2":Ljava/io/IOException;
    :goto_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Failed to enter non-blocking mode."

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;

    .line 48
    invoke-direct {p0}, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPending0()V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/nio/AbstractNioChannel;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;
    .param p1, "x1"    # Z

    .line 48
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel;->setReadPending0(Z)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/nio/AbstractNioChannel;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;

    .line 48
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method static synthetic access$202(Lio/netty/channel/nio/AbstractNioChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 48
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method static synthetic access$300(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;

    .line 48
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method static synthetic access$302(Lio/netty/channel/nio/AbstractNioChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;
    .param p1, "x1"    # Ljava/net/SocketAddress;

    .line 48
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic access$400(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;

    .line 48
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$402(Lio/netty/channel/nio/AbstractNioChannel;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/AbstractNioChannel;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 48
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private clearReadPending0()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    .line 187
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    .line 188
    return-void
.end method

.method private setReadPending0(Z)V
    .locals 1
    .param p1, "readPending"    # Z

    .line 179
    iput-boolean p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    .line 180
    if-nez p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method protected final clearReadPending()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    .line 165
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0}, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPending0()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 170
    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    :goto_0
    goto :goto_1

    .line 174
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    .line 176
    :goto_1
    return-void
.end method

.method protected doBeginRead()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;

    .line 406
    .local v0, "selectionKey":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    return-void

    .line 410
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    .line 412
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 413
    .local v1, "interestOps":I
    iget v2, p0, Lio/netty/channel/nio/AbstractNioChannel;->readInterestOp:I

    and-int v3, v1, v2

    if-nez v3, :cond_1

    .line 414
    or-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 416
    :cond_1
    return-void
.end method

.method protected doClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    .line 500
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 502
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 503
    iput-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    .line 506
    :cond_0
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 507
    .local v2, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v2, :cond_1

    .line 508
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 509
    iput-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 511
    :cond_1
    return-void
.end method

.method protected abstract doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doDeregister()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/channel/nio/NioEventLoop;->cancel(Ljava/nio/channels/SelectionKey;)V

    .line 400
    return-void
.end method

.method protected abstract doFinishConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doRegister()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    const/4 v0, 0x0

    .line 380
    .local v0, "selected":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->javaChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector()Ljava/nio/channels/Selector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    return-void

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/nio/channels/CancelledKeyException;
    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/channel/nio/NioEventLoop;->selectNow()I

    .line 387
    const/4 v0, 0x1

    .line 393
    .end local v1    # "e":Ljava/nio/channels/CancelledKeyException;
    goto :goto_0

    .line 391
    .restart local v1    # "e":Ljava/nio/channels/CancelledKeyException;
    :cond_0
    throw v1
.end method

.method public bridge synthetic eventLoop()Lio/netty/channel/EventLoop;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    return-object v0
.end method

.method public eventLoop()Lio/netty/channel/nio/NioEventLoop;
    .locals 1

    .line 113
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/NioEventLoop;

    return-object v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .line 372
    instance-of v0, p1, Lio/netty/channel/nio/NioEventLoop;

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->ch:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected isReadPending()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    iget-boolean v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    return v0
.end method

.method protected javaChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->ch:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method protected final newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 434
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 435
    .local v0, "readableBytes":I
    if-nez v0, :cond_0

    .line 436
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 437
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 441
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 443
    .local v2, "directBuf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, p1, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 444
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 445
    return-object v2

    .line 448
    .end local v2    # "directBuf":Lio/netty/buffer/ByteBuf;
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 449
    .restart local v2    # "directBuf":Lio/netty/buffer/ByteBuf;
    if-eqz v2, :cond_2

    .line 450
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, p1, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 451
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 452
    return-object v2

    .line 456
    :cond_2
    return-object p1
.end method

.method protected final newDirectBuffer(Lio/netty/util/ReferenceCounted;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "holder"    # Lio/netty/util/ReferenceCounted;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 466
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 467
    .local v0, "readableBytes":I
    if-nez v0, :cond_0

    .line 468
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 469
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 473
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 475
    .local v2, "directBuf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 476
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 477
    return-object v2

    .line 480
    .end local v2    # "directBuf":Lio/netty/buffer/ByteBuf;
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 481
    .restart local v2    # "directBuf":Lio/netty/buffer/ByteBuf;
    if-eqz v2, :cond_2

    .line 482
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 483
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 484
    return-object v2

    .line 488
    :cond_2
    if-eq p1, p2, :cond_3

    .line 490
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 491
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 494
    :cond_3
    return-object p2
.end method

.method protected selectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .line 120
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected setReadPending(Z)V
    .locals 2
    .param p1, "readPending"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    .line 141
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel;->setReadPending0(Z)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Lio/netty/channel/nio/AbstractNioChannel$2;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$2;-><init>(Lio/netty/channel/nio/AbstractNioChannel;Z)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 151
    .end local v0    # "eventLoop":Lio/netty/channel/EventLoop;
    :goto_0
    goto :goto_1

    .line 155
    :cond_1
    iput-boolean p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    .line 157
    :goto_1
    return-void
.end method

.method public bridge synthetic unsafe()Lio/netty/channel/Channel$Unsafe;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    return-object v0
.end method

.method public unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
    .locals 1

    .line 104
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    return-object v0
.end method
