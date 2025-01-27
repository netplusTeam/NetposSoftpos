.class public abstract Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "AbstractNioChannel.java"

# interfaces
.implements Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractNioUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    const-class v0, Lio/netty/channel/nio/AbstractNioChannel;

    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/nio/AbstractNioChannel;

    .line 212
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    return-void
.end method

.method private fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 315
    if-nez p1, :cond_0

    .line 317
    return-void

    .line 321
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 322
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->closeIfClosed()V

    .line 323
    return-void
.end method

.method private fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "wasActive"    # Z

    .line 290
    if-nez p1, :cond_0

    .line 292
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->isActive()Z

    move-result v0

    .line 300
    .local v0, "active":Z
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v1

    .line 304
    .local v1, "promiseSet":Z
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 305
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    .line 309
    :cond_1
    if-nez v1, :cond_2

    .line 310
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 312
    :cond_2
    return-void
.end method

.method private isFlushPending()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 366
    .local v0, "selectionKey":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final ch()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 231
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->javaChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    return-object v0
.end method

.method public final connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 8
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 237
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 242
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v0}, Lio/netty/channel/nio/AbstractNioChannel;->access$200(Lio/netty/channel/nio/AbstractNioChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-nez v0, :cond_3

    .line 247
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->isActive()Z

    move-result v0

    .line 248
    .local v0, "wasActive":Z
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v1, p1, p2}, Lio/netty/channel/nio/AbstractNioChannel;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-direct {p0, p3, v0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v1, p3}, Lio/netty/channel/nio/AbstractNioChannel;->access$202(Lio/netty/channel/nio/AbstractNioChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 252
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v1, p1}, Lio/netty/channel/nio/AbstractNioChannel;->access$302(Lio/netty/channel/nio/AbstractNioChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 255
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->getConnectTimeoutMillis()I

    move-result v1

    .line 256
    .local v1, "connectTimeoutMillis":I
    if-lez v1, :cond_2

    .line 257
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v3

    new-instance v4, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$1;

    invoke-direct {v4, p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$1;-><init>(Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;Ljava/net/SocketAddress;)V

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6, v7}, Lio/netty/channel/nio/NioEventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v2, v3}, Lio/netty/channel/nio/AbstractNioChannel;->access$402(Lio/netty/channel/nio/AbstractNioChannel;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 270
    :cond_2
    new-instance v2, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;

    invoke-direct {v2, p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe$2;-><init>(Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;)V

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 286
    .end local v0    # "wasActive":Z
    .end local v1    # "connectTimeoutMillis":I
    :goto_0
    goto :goto_1

    .line 244
    :cond_3
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    .end local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .restart local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_0
    move-exception v0

    .line 284
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 285
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->closeIfClosed()V

    .line 287
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 238
    :cond_4
    :goto_2
    return-void
.end method

.method public final finishConnect()V
    .locals 5

    .line 330
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/nio/NioEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioChannel;->isActive()Z

    move-result v2

    .line 334
    .local v2, "wasActive":Z
    iget-object v3, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v3}, Lio/netty/channel/nio/AbstractNioChannel;->doFinishConnect()V

    .line 335
    iget-object v3, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v3}, Lio/netty/channel/nio/AbstractNioChannel;->access$200(Lio/netty/channel/nio/AbstractNioChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v2    # "wasActive":Z
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v2}, Lio/netty/channel/nio/AbstractNioChannel;->access$400(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    :goto_0
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v2}, Lio/netty/channel/nio/AbstractNioChannel;->access$400(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 344
    :cond_0
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v0, v1}, Lio/netty/channel/nio/AbstractNioChannel;->access$202(Lio/netty/channel/nio/AbstractNioChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 345
    goto :goto_1

    .line 336
    :catchall_0
    move-exception v2

    .line 337
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v3}, Lio/netty/channel/nio/AbstractNioChannel;->access$200(Lio/netty/channel/nio/AbstractNioChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v3

    iget-object v4, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v4}, Lio/netty/channel/nio/AbstractNioChannel;->access$300(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->fulfillConnectPromise(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    .end local v2    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v2}, Lio/netty/channel/nio/AbstractNioChannel;->access$400(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    goto :goto_0

    .line 346
    :goto_1
    return-void

    .line 341
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v3}, Lio/netty/channel/nio/AbstractNioChannel;->access$400(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 342
    iget-object v3, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v3}, Lio/netty/channel/nio/AbstractNioChannel;->access$400(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 344
    :cond_1
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v0, v1}, Lio/netty/channel/nio/AbstractNioChannel;->access$202(Lio/netty/channel/nio/AbstractNioChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;

    .line 345
    throw v2

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected final flush0()V
    .locals 1

    .line 353
    invoke-direct {p0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->isFlushPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush0()V

    .line 356
    :cond_0
    return-void
.end method

.method public final forceFlush()V
    .locals 0

    .line 361
    invoke-super {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush0()V

    .line 362
    return-void
.end method

.method protected final removeReadOp()V
    .locals 3

    .line 215
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 219
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 223
    .local v1, "interestOps":I
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    iget v2, v2, Lio/netty/channel/nio/AbstractNioChannel;->readInterestOp:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    iget v2, v2, Lio/netty/channel/nio/AbstractNioChannel;->readInterestOp:I

    not-int v2, v2

    and-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 227
    :cond_1
    return-void
.end method
