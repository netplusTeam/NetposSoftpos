.class public Lio/netty/channel/socket/nio/NioSocketChannel;
.super Lio/netty/channel/nio/AbstractNioByteChannel;
.source "NioSocketChannel.java"

# interfaces
.implements Lio/netty/channel/socket/SocketChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;,
        Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelUnsafe;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/socket/SocketChannelConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/nio/NioSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 59
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/nio/NioSocketChannel;->DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    sget-object v0, Lio/netty/channel/socket/nio/NioSocketChannel;->DEFAULT_SELECTOR_PROVIDER:Ljava/nio/channels/spi/SelectorProvider;

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SocketChannel;)V
    .locals 3
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "socket"    # Ljava/nio/channels/SocketChannel;

    .line 105
    invoke-direct {p0, p1, p2}, Lio/netty/channel/nio/AbstractNioByteChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;)V

    .line 106
    new-instance v0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel;Ljava/net/Socket;Lio/netty/channel/socket/nio/NioSocketChannel$1;)V

    iput-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel;->config:Lio/netty/channel/socket/SocketChannelConfig;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 1
    .param p1, "socket"    # Ljava/nio/channels/SocketChannel;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SocketChannel;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 88
    invoke-static {p1}, Lio/netty/channel/socket/nio/NioSocketChannel;->newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioSocketChannel;-><init>(Ljava/nio/channels/SocketChannel;)V

    .line 89
    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 57
    invoke-direct {p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 57
    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 57
    invoke-static {p0, p1, p2}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->doDeregister()V

    return-void
.end method

.method static synthetic access$600(Lio/netty/channel/socket/nio/NioSocketChannel;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/socket/nio/NioSocketChannel;

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->clearReadPending()V

    return-void
.end method

.method private adjustMaxBytesPerGatheringWrite(III)V
    .locals 2
    .param p1, "attempted"    # I
    .param p2, "written"    # I
    .param p3, "oldMaxBytesPerGatheringWrite"    # I

    .line 369
    if-ne p1, p2, :cond_0

    .line 370
    shl-int/lit8 v0, p1, 0x1

    if-le v0, p3, :cond_1

    .line 371
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel;->config:Lio/netty/channel/socket/SocketChannelConfig;

    check-cast v0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;

    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->setMaxBytesPerGatheringWrite(I)V

    goto :goto_0

    .line 373
    :cond_0
    const/16 v0, 0x1000

    if-le p1, v0, :cond_1

    ushr-int/lit8 v0, p1, 0x1

    if-ge p2, v0, :cond_1

    .line 374
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel;->config:Lio/netty/channel/socket/SocketChannelConfig;

    check-cast v0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;

    ushr-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->setMaxBytesPerGatheringWrite(I)V

    .line 376
    :cond_1
    :goto_0
    return-void
.end method

.method private doBind0(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/util/internal/SocketUtils;->bind(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/util/internal/SocketUtils;->bind(Ljava/net/Socket;Ljava/net/SocketAddress;)V

    .line 305
    :goto_0
    return-void
.end method

.method private static newSocket(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/SocketChannel;
    .locals 3
    .param p0, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Failed to open a socket."

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p0, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p1, "shutdownInputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 252
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 253
    .local v0, "shutdownOutputCause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    .line 254
    .local v1, "shutdownInputCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    sget-object v2, Lio/netty/channel/socket/nio/NioSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Exception suppressed because a previous exception occurred."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    :cond_0
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 260
    :cond_1
    if-eqz v1, :cond_2

    .line 261
    invoke-interface {p2, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 265
    :goto_0
    return-void
.end method

.method private shutdownInput0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownInput()Ljava/nio/channels/SocketChannel;

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 282
    :goto_0
    return-void
.end method

.method private shutdownInput0(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 268
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownInput0()V

    .line 269
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 273
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 236
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 237
    .local v0, "shutdownInputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-static {p1, v0, p2}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Lio/netty/channel/socket/nio/NioSocketChannel$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/socket/nio/NioSocketChannel$4;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 247
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->config()Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/socket/SocketChannelConfig;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel;->config:Lio/netty/channel/socket/SocketChannelConfig;

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel;->doBind0(Ljava/net/SocketAddress;)V

    .line 297
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->doClose()V

    .line 343
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 344
    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 4
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    if-eqz p2, :cond_0

    .line 310
    invoke-direct {p0, p2}, Lio/netty/channel/socket/nio/NioSocketChannel;->doBind0(Ljava/net/SocketAddress;)V

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 315
    .local v0, "success":Z
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-static {v1, p1}, Lio/netty/util/internal/SocketUtils;->connect(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Z

    move-result v1

    .line 316
    .local v1, "connected":Z
    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_1
    const/4 v0, 0x1

    .line 320
    nop

    .line 322
    if-nez v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->doClose()V

    .line 320
    :cond_2
    return v1

    .line 322
    .end local v1    # "connected":Z
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    .line 323
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->doClose()V

    .line 325
    :cond_3
    throw v1
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->doClose()V

    .line 338
    return-void
.end method

.method protected doFinishConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method protected doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .locals 3
    .param p1, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    .line 349
    .local v0, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 350
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result v1

    return v1
.end method

.method protected final doShutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->shutdownOutput()Ljava/nio/channels/SocketChannel;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 165
    :goto_0
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 13
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 381
    .local v0, "ch":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->config()Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/socket/SocketChannelConfig;->getWriteSpinCount()I

    move-result v1

    .line 383
    .local v1, "writeSpinCount":I
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->clearOpWrite()V

    .line 387
    return-void

    .line 391
    :cond_0
    iget-object v2, p0, Lio/netty/channel/socket/nio/NioSocketChannel;->config:Lio/netty/channel/socket/SocketChannelConfig;

    check-cast v2, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;

    invoke-virtual {v2}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->getMaxBytesPerGatheringWrite()I

    move-result v2

    .line 392
    .local v2, "maxBytesPerGatheringWrite":I
    const/16 v3, 0x400

    int-to-long v4, v2

    invoke-virtual {p1, v3, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->nioBuffers(IJ)[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 393
    .local v3, "nioBuffers":[Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferCount()I

    move-result v4

    .line 397
    .local v4, "nioBufferCnt":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 422
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferSize()J

    move-result-wide v7

    .line 423
    .local v7, "attemptedBytes":J
    invoke-virtual {v0, v3, v6, v4}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v9

    .line 424
    .local v9, "localWrittenBytes":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gtz v11, :cond_2

    .line 425
    invoke-virtual {p0, v5}, Lio/netty/channel/socket/nio/NioSocketChannel;->incompleteWrite(Z)V

    .line 426
    return-void

    .line 406
    .end local v7    # "attemptedBytes":J
    .end local v9    # "localWrittenBytes":J
    :pswitch_0
    aget-object v7, v3, v6

    .line 407
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 408
    .local v8, "attemptedBytes":I
    invoke-virtual {v0, v7}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 409
    .local v9, "localWrittenBytes":I
    if-gtz v9, :cond_1

    .line 410
    invoke-virtual {p0, v5}, Lio/netty/channel/socket/nio/NioSocketChannel;->incompleteWrite(Z)V

    .line 411
    return-void

    .line 413
    :cond_1
    invoke-direct {p0, v8, v9, v2}, Lio/netty/channel/socket/nio/NioSocketChannel;->adjustMaxBytesPerGatheringWrite(III)V

    .line 414
    int-to-long v10, v9

    invoke-virtual {p1, v10, v11}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 415
    add-int/lit8 v1, v1, -0x1

    .line 416
    goto :goto_1

    .line 400
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "attemptedBytes":I
    .end local v9    # "localWrittenBytes":I
    :pswitch_1
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel;->doWrite0(Lio/netty/channel/ChannelOutboundBuffer;)I

    move-result v7

    sub-int/2addr v1, v7

    .line 401
    goto :goto_1

    .line 429
    .local v7, "attemptedBytes":J
    .local v9, "localWrittenBytes":J
    :cond_2
    long-to-int v11, v7

    long-to-int v12, v9

    invoke-direct {p0, v11, v12, v2}, Lio/netty/channel/socket/nio/NioSocketChannel;->adjustMaxBytesPerGatheringWrite(III)V

    .line 431
    invoke-virtual {p1, v9, v10}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    .line 432
    add-int/lit8 v1, v1, -0x1

    .line 433
    nop

    .line 436
    .end local v2    # "maxBytesPerGatheringWrite":I
    .end local v3    # "nioBuffers":[Ljava/nio/ByteBuffer;
    .end local v4    # "nioBufferCnt":I
    .end local v7    # "attemptedBytes":J
    .end local v9    # "localWrittenBytes":J
    :goto_1
    if-gtz v1, :cond_4

    .line 438
    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {p0, v5}, Lio/netty/channel/socket/nio/NioSocketChannel;->incompleteWrite(Z)V

    .line 439
    return-void

    .line 436
    :cond_4
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected doWriteBytes(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 356
    .local v0, "expectedWrittenBytes":I
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result v1

    return v1
.end method

.method protected doWriteFileRegion(Lio/netty/channel/FileRegion;)J
    .locals 4
    .param p1, "region"    # Lio/netty/channel/FileRegion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    invoke-interface {p1}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v0

    .line 362
    .local v0, "position":J
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lio/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public isActive()Z
    .locals 2

    .line 126
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 127
    .local v0, "ch":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->isActive()Z

    move-result v0

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

.method protected isInputShutdown0()Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->isActive()Z

    move-result v0

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

.method public isShutdown()Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 143
    .local v0, "socket":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected bridge synthetic javaChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected javaChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 121
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->javaChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 148
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
    .locals 2

    .line 443
    new-instance v0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelUnsafe;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel$1;)V

    return-object v0
.end method

.method public bridge synthetic parent()Lio/netty/channel/Channel;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->parent()Lio/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lio/netty/channel/socket/ServerSocketChannel;
    .locals 1

    .line 111
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/ServerSocketChannel;

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 153
    invoke-super {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 221
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownOutput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 222
    .local v0, "shutdownOutputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 225
    :cond_0
    new-instance v1, Lio/netty/channel/socket/nio/NioSocketChannel$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel$3;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 232
    :goto_0
    return-object p1
.end method

.method public shutdownInput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 200
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    .line 201
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance v1, Lio/netty/channel/socket/nio/NioSocketChannel$2;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel$2;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 211
    :goto_0
    return-object p1
.end method

.method public shutdownOutput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/nio/NioSocketChannel;->shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 174
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    .line 175
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    invoke-virtual {v1, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->shutdownOutput(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance v1, Lio/netty/channel/socket/nio/NioSocketChannel$1;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel$1;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 185
    :goto_0
    return-object p1
.end method
