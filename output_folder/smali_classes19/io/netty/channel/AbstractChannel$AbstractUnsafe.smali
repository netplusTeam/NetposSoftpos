.class public abstract Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Lio/netty/channel/Channel$Unsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private inFlush0:Z

.field private neverRegistered:Z

.field private volatile outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

.field private recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

.field final synthetic this$0:Lio/netty/channel/AbstractChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    const-class v0, Lio/netty/channel/AbstractChannel;

    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/AbstractChannel;)V
    .locals 1
    .param p1, "this$0"    # Lio/netty/channel/AbstractChannel;

    .line 417
    iput-object p1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Lio/netty/channel/ChannelOutboundBuffer;

    invoke-direct {v0, p1}, Lio/netty/channel/ChannelOutboundBuffer;-><init>(Lio/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->neverRegistered:Z

    return-void
.end method

.method static synthetic access$1000(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 417
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->doClose0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1100(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .param p1, "x1"    # Z

    .line 417
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->fireChannelInactiveAndDeregister(Z)V

    return-void
.end method

.method static synthetic access$1200(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 417
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 417
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->register0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$800(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .param p1, "x1"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "x2"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p3, "x3"    # Ljava/lang/Throwable;

    .line 417
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeOutboundBufferForShutdown(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;)V

    return-void
.end method

.method private assertEventLoop()V
    .locals 1

    .line 426
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$000(Lio/netty/channel/AbstractChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$100(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 427
    :cond_1
    :goto_0
    return-void
.end method

.method private close(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V
    .locals 16
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "closeCause"    # Ljava/nio/channels/ClosedChannelException;
    .param p4, "notify"    # Z

    .line 684
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    return-void

    .line 688
    :cond_0
    iget-object v0, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$900(Lio/netty/channel/AbstractChannel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    iget-object v0, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/AbstractChannel$CloseFuture;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$CloseFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    invoke-virtual/range {p0 .. p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 692
    :cond_1
    instance-of v0, v10, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_2

    .line 694
    iget-object v0, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/AbstractChannel$CloseFuture;

    move-result-object v0

    new-instance v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;

    invoke-direct {v1, v9, v10}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$5;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {v0, v1}, Lio/netty/channel/AbstractChannel$CloseFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 701
    :cond_2
    :goto_0
    return-void

    .line 704
    :cond_3
    iget-object v0, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/channel/AbstractChannel;->access$902(Lio/netty/channel/AbstractChannel;Z)Z

    .line 706
    iget-object v0, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v14

    .line 707
    .local v14, "wasActive":Z
    iget-object v15, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 708
    .local v15, "outboundBuffer":Lio/netty/channel/ChannelOutboundBuffer;
    const/4 v0, 0x0

    iput-object v0, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 709
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->prepareToClose()Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 710
    .local v8, "closeExecutor":Ljava/util/concurrent/Executor;
    if-eqz v8, :cond_4

    .line 711
    new-instance v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v7, p3

    move-object v10, v8

    .end local v8    # "closeExecutor":Ljava/util/concurrent/Executor;
    .local v10, "closeExecutor":Ljava/util/concurrent/Executor;
    move v8, v14

    invoke-direct/range {v1 .. v8}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$6;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;ZLjava/nio/channels/ClosedChannelException;Z)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 736
    .end local v10    # "closeExecutor":Ljava/util/concurrent/Executor;
    .restart local v8    # "closeExecutor":Ljava/util/concurrent/Executor;
    :cond_4
    move-object v10, v8

    .end local v8    # "closeExecutor":Ljava/util/concurrent/Executor;
    .restart local v10    # "closeExecutor":Ljava/util/concurrent/Executor;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->doClose0(Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    if-eqz v15, :cond_5

    .line 740
    invoke-virtual {v15, v11, v13}, Lio/netty/channel/ChannelOutboundBuffer;->failFlushed(Ljava/lang/Throwable;Z)V

    .line 741
    invoke-virtual {v15, v12}, Lio/netty/channel/ChannelOutboundBuffer;->close(Ljava/nio/channels/ClosedChannelException;)V

    .line 744
    :cond_5
    iget-boolean v0, v9, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->inFlush0:Z

    if-eqz v0, :cond_6

    .line 745
    new-instance v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$7;

    invoke-direct {v0, v9, v14}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$7;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Z)V

    invoke-direct {v9, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 752
    :cond_6
    invoke-direct {v9, v14}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->fireChannelInactiveAndDeregister(Z)V

    .line 755
    :goto_1
    return-void

    .line 738
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_7

    .line 740
    invoke-virtual {v15, v11, v13}, Lio/netty/channel/ChannelOutboundBuffer;->failFlushed(Ljava/lang/Throwable;Z)V

    .line 741
    invoke-virtual {v15, v12}, Lio/netty/channel/ChannelOutboundBuffer;->close(Ljava/nio/channels/ClosedChannelException;)V

    .line 743
    :cond_7
    throw v1
.end method

.method private closeOutboundBufferForShutdown(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "buffer"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lio/netty/channel/ChannelOutboundBuffer;->failFlushed(Ljava/lang/Throwable;Z)V

    .line 678
    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lio/netty/channel/ChannelOutboundBuffer;->close(Ljava/lang/Throwable;Z)V

    .line 679
    sget-object v0, Lio/netty/channel/socket/ChannelOutputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelOutputShutdownEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 680
    return-void
.end method

.method private deregister(Lio/netty/channel/ChannelPromise;Z)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "fireChannelInactive"    # Z

    .line 791
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$000(Lio/netty/channel/AbstractChannel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 797
    return-void

    .line 809
    :cond_1
    new-instance v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;

    invoke-direct {v0, p0, p2, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;ZLio/netty/channel/ChannelPromise;)V

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    .line 832
    return-void
.end method

.method private doClose0(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 759
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->doClose()V

    .line 760
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/AbstractChannel$CloseFuture;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel$CloseFuture;->setClosed()Z

    .line 761
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    .line 763
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/AbstractChannel$CloseFuture;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel$CloseFuture;->setClosed()Z

    .line 764
    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 766
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private fireChannelInactiveAndDeregister(Z)V
    .locals 2
    .param p1, "wasActive"    # Z

    .line 769
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->deregister(Lio/netty/channel/ChannelPromise;Z)V

    .line 770
    return-void
.end method

.method private invokeLater(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 1018
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Lio/netty/channel/AbstractChannel;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Can\'t invoke task later as EventLoop rejected it"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1022
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private newClosedChannelException(Ljava/lang/Throwable;)Ljava/nio/channels/ClosedChannelException;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 957
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 958
    .local v0, "exception":Ljava/nio/channels/ClosedChannelException;
    if-eqz p1, :cond_0

    .line 959
    invoke-virtual {v0, p1}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 961
    :cond_0
    return-object v0
.end method

.method private register0(Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 492
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->neverRegistered:Z

    .line 496
    .local v0, "firstRegistration":Z
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->doRegister()V

    .line 497
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->neverRegistered:Z

    .line 498
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/netty/channel/AbstractChannel;->access$002(Lio/netty/channel/AbstractChannel;Z)Z

    .line 502
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/DefaultChannelPipeline;->invokeHandlerAddedIfNeeded()V

    .line 504
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 505
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelRegistered()Lio/netty/channel/ChannelPipeline;

    .line 508
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    if-eqz v0, :cond_1

    .line 510
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 511
    :cond_1
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->beginRead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .end local v0    # "firstRegistration":Z
    :cond_2
    :goto_0
    goto :goto_2

    .line 493
    :cond_3
    :goto_1
    return-void

    .line 519
    :catchall_0
    move-exception v0

    .line 521
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeForcibly()V

    .line 522
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/AbstractChannel$CloseFuture;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel$CloseFuture;->setClosed()Z

    .line 523
    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 525
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private shutdownOutput(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 626
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 631
    .local v0, "outboundBuffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-nez v0, :cond_1

    .line 632
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 633
    return-void

    .line 635
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 637
    const-string v1, "Channel output shutdown"

    new-instance v2, Lio/netty/channel/socket/ChannelOutputShutdownException;

    if-nez p2, :cond_2

    invoke-direct {v2, v1}, Lio/netty/channel/socket/ChannelOutputShutdownException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {v2, v1, p2}, Lio/netty/channel/socket/ChannelOutputShutdownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v1, v2

    .line 640
    .local v1, "shutdownCause":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->prepareToClose()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 641
    .local v2, "closeExecutor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_3

    .line 642
    new-instance v3, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$4;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 665
    :cond_3
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v3}, Lio/netty/channel/AbstractChannel;->doShutdownOutput()V

    .line 666
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    goto :goto_1

    .line 667
    :catchall_0
    move-exception v3

    .line 668
    .local v3, "err":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p1, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 670
    nop

    .end local v3    # "err":Ljava/lang/Throwable;
    :goto_1
    iget-object v3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v3}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeOutboundBufferForShutdown(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;)V

    .line 671
    nop

    .line 673
    :goto_2
    return-void

    .line 670
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v4}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v4

    invoke-direct {p0, v4, v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeOutboundBufferForShutdown(Lio/netty/channel/ChannelPipeline;Lio/netty/channel/ChannelOutboundBuffer;Ljava/lang/Throwable;)V

    .line 671
    throw v3
.end method


# virtual methods
.method protected final annotateConnectException(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 1028
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_0

    .line 1029
    new-instance v0, Lio/netty/channel/AbstractChannel$AnnotatedConnectException;

    move-object v1, p1

    check-cast v1, Ljava/net/ConnectException;

    invoke-direct {v0, v1, p2}, Lio/netty/channel/AbstractChannel$AnnotatedConnectException;-><init>(Ljava/net/ConnectException;Ljava/net/SocketAddress;)V

    return-object v0

    .line 1031
    :cond_0
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1

    .line 1032
    new-instance v0, Lio/netty/channel/AbstractChannel$AnnotatedNoRouteToHostException;

    move-object v1, p1

    check-cast v1, Ljava/net/NoRouteToHostException;

    invoke-direct {v0, v1, p2}, Lio/netty/channel/AbstractChannel$AnnotatedNoRouteToHostException;-><init>(Ljava/net/NoRouteToHostException;Ljava/net/SocketAddress;)V

    return-object v0

    .line 1034
    :cond_1
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_2

    .line 1035
    new-instance v0, Lio/netty/channel/AbstractChannel$AnnotatedSocketException;

    move-object v1, p1

    check-cast v1, Ljava/net/SocketException;

    invoke-direct {v0, v1, p2}, Lio/netty/channel/AbstractChannel$AnnotatedSocketException;-><init>(Ljava/net/SocketException;Ljava/net/SocketAddress;)V

    return-object v0

    .line 1038
    :cond_2
    return-object p1
.end method

.method public final beginRead()V
    .locals 2

    .line 836
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 838
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    return-void

    .line 843
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->doBeginRead()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$9;

    invoke-direct {v1, p0, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$9;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    .line 851
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 853
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public final bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 529
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 531
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 536
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    sget-object v2, Lio/netty/channel/ChannelOption;->SO_BROADCAST:Lio/netty/channel/ChannelOption;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 538
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maybeSuperUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    invoke-static {}, Lio/netty/channel/AbstractChannel;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A non-root user can\'t receive a broadcast packet if the socket is not bound to a wildcard address; binding to a non-wildcard address ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") anyway as requested."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 548
    :cond_1
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v0

    .line 550
    .local v0, "wasActive":Z
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1, p1}, Lio/netty/channel/AbstractChannel;->doBind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    nop

    .line 557
    if-nez v0, :cond_2

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    new-instance v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$2;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$2;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;)V

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    .line 566
    :cond_2
    invoke-virtual {p0, p2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 567
    return-void

    .line 551
    :catchall_0
    move-exception v1

    .line 552
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 553
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeIfClosed()V

    .line 554
    return-void

    .line 532
    .end local v0    # "wasActive":Z
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method

.method public final close(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 604
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 606
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 607
    .local v0, "closedChannelException":Ljava/nio/channels/ClosedChannelException;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V

    .line 608
    return-void
.end method

.method public final closeForcibly()V
    .locals 3

    .line 774
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 777
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->doClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/netty/channel/AbstractChannel;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Failed to close a channel."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected final closeIfClosed()V
    .locals 1

    .line 999
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    return-void

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 1003
    return-void
.end method

.method public final deregister(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 785
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 787
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->deregister(Lio/netty/channel/ChannelPromise;Z)V

    .line 788
    return-void
.end method

.method public final disconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 571
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 573
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v0

    .line 579
    .local v0, "wasActive":Z
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->doDisconnect()V

    .line 581
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/channel/AbstractChannel;->access$602(Lio/netty/channel/AbstractChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 582
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1, v2}, Lio/netty/channel/AbstractChannel;->access$702(Lio/netty/channel/AbstractChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    nop

    .line 589
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 590
    new-instance v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe$3;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$3;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;)V

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    .line 598
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 599
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeIfClosed()V

    .line 600
    return-void

    .line 583
    :catchall_0
    move-exception v1

    .line 584
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 585
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeIfClosed()V

    .line 586
    return-void
.end method

.method protected final ensureOpen(Lio/netty/channel/ChannelPromise;)Z
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 972
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x1

    return v0

    .line 976
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$1300(Lio/netty/channel/AbstractChannel;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->newClosedChannelException(Ljava/lang/Throwable;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method public final flush()V
    .locals 1

    .line 889
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 891
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 892
    .local v0, "outboundBuffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-nez v0, :cond_0

    .line 893
    return-void

    .line 896
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer;->addFlush()V

    .line 897
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->flush0()V

    .line 898
    return-void
.end method

.method protected flush0()V
    .locals 6

    .line 902
    iget-boolean v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->inFlush0:Z

    if-eqz v0, :cond_0

    .line 904
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 908
    .local v0, "outboundBuffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 912
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->inFlush0:Z

    .line 915
    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v2}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 917
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v2}, Lio/netty/channel/AbstractChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 918
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    invoke-virtual {v0, v2, v1}, Lio/netty/channel/ChannelOutboundBuffer;->failFlushed(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 921
    :cond_2
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$1300(Lio/netty/channel/AbstractChannel;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->newClosedChannelException(Ljava/lang/Throwable;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lio/netty/channel/ChannelOutboundBuffer;->failFlushed(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :goto_0
    iput-boolean v3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->inFlush0:Z

    .line 925
    nop

    .line 926
    return-void

    .line 924
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->inFlush0:Z

    .line 925
    throw v1

    .line 930
    :cond_3
    :try_start_1
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/AbstractChannel;->doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 952
    :goto_1
    iput-boolean v3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->inFlush0:Z

    .line 953
    goto :goto_2

    .line 931
    :catchall_1
    move-exception v1

    .line 932
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v2}, Lio/netty/channel/AbstractChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->isAutoClose()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 941
    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v2, v1}, Lio/netty/channel/AbstractChannel;->access$1302(Lio/netty/channel/AbstractChannel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 942
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->newClosedChannelException(Ljava/lang/Throwable;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v4

    invoke-direct {p0, v2, v1, v4, v3}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 945
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->shutdownOutput(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 949
    goto :goto_1

    .line 946
    :catchall_2
    move-exception v2

    .line 947
    .local v2, "t2":Ljava/lang/Throwable;
    :try_start_4
    iget-object v4, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v4, v1}, Lio/netty/channel/AbstractChannel;->access$1302(Lio/netty/channel/AbstractChannel;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 948
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->newClosedChannelException(Ljava/lang/Throwable;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v5

    invoke-direct {p0, v4, v2, v5, v3}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->close(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 954
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "t2":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 952
    :catchall_3
    move-exception v1

    iput-boolean v3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->inFlush0:Z

    .line 953
    throw v1

    .line 909
    :cond_5
    :goto_3
    return-void
.end method

.method public final localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 444
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->localAddress0()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;
    .locals 1

    .line 439
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    return-object v0
.end method

.method protected prepareToClose()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1048
    const/4 v0, 0x0

    return-object v0
.end method

.method public recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 1

    .line 431
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 434
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    return-object v0
.end method

.method public final register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "eventLoop"    # Lio/netty/channel/EventLoop;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 454
    const-string v0, "eventLoop"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "registered to an event loop already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 457
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannel;->isCompatible(Lio/netty/channel/EventLoop;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incompatible event loop type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 462
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannel;->access$102(Lio/netty/channel/AbstractChannel;Lio/netty/channel/EventLoop;)Lio/netty/channel/EventLoop;

    .line 467
    invoke-interface {p1}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-direct {p0, p2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->register0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 471
    :cond_2
    :try_start_0
    new-instance v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$1;

    invoke-direct {v0, p0, p2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe$1;-><init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p1, v0}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    .line 478
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/channel/AbstractChannel;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    const-string v3, "Force-closing a channel whose registration task was not accepted by an event loop: {}"

    invoke-interface {v1, v3, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->closeForcibly()V

    .line 482
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/AbstractChannel$CloseFuture;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel$CloseFuture;->setClosed()Z

    .line 483
    invoke-virtual {p0, p2, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 486
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 449
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->remoteAddress0()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 993
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    invoke-static {}, Lio/netty/channel/AbstractChannel;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 996
    :cond_0
    return-void
.end method

.method protected final safeSetSuccess(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 984
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    invoke-static {}, Lio/netty/channel/AbstractChannel;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Failed to mark a promise as success because it is done already: {}"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 987
    :cond_0
    return-void
.end method

.method public final shutdownOutput(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 616
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->shutdownOutput(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 618
    return-void
.end method

.method public final voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 966
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 968
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$1400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/VoidChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 857
    invoke-direct {p0}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->assertEventLoop()V

    .line 859
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->outboundBuffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 860
    .local v0, "outboundBuffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-nez v0, :cond_0

    .line 865
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$1300(Lio/netty/channel/AbstractChannel;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->newClosedChannelException(Ljava/lang/Throwable;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 867
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 868
    return-void

    .line 873
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1, p1}, Lio/netty/channel/AbstractChannel;->filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    .line 874
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/DefaultChannelPipeline;->estimatorHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    .local v1, "size":I
    if-gez v1, :cond_1

    .line 876
    const/4 v1, 0x0

    .line 882
    :cond_1
    nop

    .line 884
    invoke-virtual {v0, p1, v1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->addMessage(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)V

    .line 885
    return-void

    .line 878
    .end local v1    # "size":I
    :catchall_0
    move-exception v1

    .line 879
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 880
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 881
    return-void
.end method
