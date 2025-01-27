.class public Lio/netty/handler/codec/spdy/SpdySessionHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SpdySessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONCURRENT_STREAMS:I = 0x7fffffff

.field private static final DEFAULT_WINDOW_SIZE:I = 0x10000

.field private static final PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

.field private static final STREAM_CLOSED:Lio/netty/handler/codec/spdy/SpdyProtocolException;


# instance fields
.field private closeSessionFutureListener:Lio/netty/channel/ChannelFutureListener;

.field private initialReceiveWindowSize:I

.field private initialSendWindowSize:I

.field private volatile initialSessionReceiveWindowSize:I

.field private lastGoodStreamId:I

.field private localConcurrentStreams:I

.field private final minorVersion:I

.field private final pings:Ljava/util/concurrent/atomic/AtomicInteger;

.field private receivedGoAwayFrame:Z

.field private remoteConcurrentStreams:I

.field private sentGoAwayFrame:Z

.field private final server:Z

.field private final spdySession:Lio/netty/handler/codec/spdy/SpdySession;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const-class v0, Lio/netty/handler/codec/spdy/SpdySessionHandler;

    .line 38
    const/4 v1, 0x0

    invoke-static {v1}, Lio/netty/handler/codec/spdy/SpdyProtocolException;->newStatic(Ljava/lang/String;)Lio/netty/handler/codec/spdy/SpdyProtocolException;

    move-result-object v1

    .line 37
    const-string v2, "handleOutboundMessage(...)"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    sput-object v1, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    .line 39
    nop

    .line 40
    const-string v1, "Stream closed"

    invoke-static {v1}, Lio/netty/handler/codec/spdy/SpdyProtocolException;->newStatic(Ljava/lang/String;)Lio/netty/handler/codec/spdy/SpdyProtocolException;

    move-result-object v1

    .line 39
    const-string v2, "removeStream(...)"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    sput-object v0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->STREAM_CLOSED:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;Z)V
    .locals 3
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "server"    # Z

    .line 73
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 43
    const/high16 v0, 0x10000

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    .line 44
    iput v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    .line 45
    iput v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSessionReceiveWindowSize:I

    .line 47
    new-instance v0, Lio/netty/handler/codec/spdy/SpdySession;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdySession;-><init>(II)V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    .line 51
    const v0, 0x7fffffff

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    .line 52
    iput v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdyVersion;->getMinorVersion()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->minorVersion:I

    .line 75
    iput-boolean p2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    .line 76
    return-void
.end method

.method private acceptStream(IBZZ)Z
    .locals 11
    .param p1, "streamId"    # I
    .param p2, "priority"    # B
    .param p3, "remoteSideClosed"    # Z
    .param p4, "localSideClosed"    # Z

    .line 714
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->receivedGoAwayFrame:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 718
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v0

    .line 719
    .local v0, "remote":Z
    if-eqz v0, :cond_1

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    :goto_0
    move v10, v2

    .line 720
    .local v10, "maxConcurrentStreams":I
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/spdy/SpdySession;->numActiveStreams(Z)I

    move-result v2

    if-lt v2, v10, :cond_2

    .line 721
    return v1

    .line 723
    :cond_2
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    iget v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    iget v8, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lio/netty/handler/codec/spdy/SpdySession;->acceptStream(IBZZIIZ)V

    .line 726
    if-eqz v0, :cond_3

    .line 727
    iput p1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamId:I

    .line 729
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 715
    .end local v0    # "remote":Z
    .end local v10    # "maxConcurrentStreams":I
    :cond_4
    :goto_1
    return v1
.end method

.method static synthetic access$000(Lio/netty/handler/codec/spdy/SpdySessionHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/spdy/SpdySessionHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 35
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V

    return-void
.end method

.method private halfCloseStream(IZLio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "remote"    # Z
    .param p3, "future"    # Lio/netty/channel/ChannelFuture;

    .line 733
    if-eqz p2, :cond_0

    .line 734
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/spdy/SpdySession;->closeRemoteSide(IZ)V

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/spdy/SpdySession;->closeLocalSide(IZ)V

    .line 738
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFutureListener:Lio/netty/channel/ChannelFutureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFutureListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 741
    :cond_1
    return-void
.end method

.method private handleOutboundMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 457
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 458
    .local v0, "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->streamId()I

    move-result v2

    .line 461
    .local v2, "streamId":I
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->release()Z

    .line 463
    sget-object v1, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 464
    return-void

    .line 480
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 481
    .local v3, "dataLength":I
    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v2}, Lio/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v4

    .line 482
    .local v4, "sendWindowSize":I
    iget-object v5, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v5, v1}, Lio/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v5

    .line 483
    .local v5, "sessionSendWindowSize":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 485
    if-gtz v4, :cond_1

    .line 487
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    new-instance v6, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;

    invoke-direct {v6, v0, p3}, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;-><init>(Lio/netty/handler/codec/spdy/SpdyDataFrame;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {v1, v2, v6}, Lio/netty/handler/codec/spdy/SpdySession;->putPendingWrite(ILio/netty/handler/codec/spdy/SpdySession$PendingWrite;)Z

    .line 488
    return-void

    .line 489
    :cond_1
    if-ge v4, v3, :cond_2

    .line 491
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v2, v7}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 492
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v1, v7}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 495
    new-instance v1, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    .line 496
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 499
    .local v1, "partialDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    new-instance v7, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;

    invoke-direct {v7, v0, p3}, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;-><init>(Lio/netty/handler/codec/spdy/SpdyDataFrame;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {v6, v2, v7}, Lio/netty/handler/codec/spdy/SpdySession;->putPendingWrite(ILio/netty/handler/codec/spdy/SpdySession$PendingWrite;)Z

    .line 503
    move-object v6, p1

    .line 504
    .local v6, "context":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v7

    new-instance v8, Lio/netty/handler/codec/spdy/SpdySessionHandler$1;

    invoke-direct {v8, p0, v6}, Lio/netty/handler/codec/spdy/SpdySessionHandler$1;-><init>(Lio/netty/handler/codec/spdy/SpdySessionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v7, v8}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 512
    return-void

    .line 515
    .end local v1    # "partialDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v6    # "context":Lio/netty/channel/ChannelHandlerContext;
    :cond_2
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v2, v7}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 516
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v1, v7}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 520
    move-object v6, p1

    .line 521
    .restart local v6    # "context":Lio/netty/channel/ChannelHandlerContext;
    new-instance v7, Lio/netty/handler/codec/spdy/SpdySessionHandler$2;

    invoke-direct {v7, p0, v6}, Lio/netty/handler/codec/spdy/SpdySessionHandler$2;-><init>(Lio/netty/handler/codec/spdy/SpdySessionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p3, v7}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 532
    .end local v6    # "context":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 533
    invoke-direct {p0, v2, v1, p3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZLio/netty/channel/ChannelFuture;)V

    .line 536
    .end local v0    # "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v2    # "streamId":I
    .end local v3    # "dataLength":I
    .end local v4    # "sendWindowSize":I
    .end local v5    # "sessionSendWindowSize":I
    :cond_3
    goto/16 :goto_2

    :cond_4
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v0, :cond_7

    .line 538
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 539
    .local v0, "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->streamId()I

    move-result v1

    .line 541
    .local v1, "streamId":I
    invoke-direct {p0, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 542
    sget-object v2, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 543
    return-void

    .line 546
    :cond_5
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->priority()B

    move-result v2

    .line 547
    .local v2, "priority":B
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v3

    .line 548
    .local v3, "remoteSideClosed":Z
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v4

    .line 549
    .local v4, "localSideClosed":Z
    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->acceptStream(IBZZ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 550
    sget-object v5, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v5}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 551
    return-void

    .line 554
    .end local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v1    # "streamId":I
    .end local v2    # "priority":B
    .end local v3    # "remoteSideClosed":Z
    .end local v4    # "localSideClosed":Z
    :cond_6
    goto/16 :goto_2

    :cond_7
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v0, :cond_b

    .line 556
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 557
    .local v0, "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->streamId()I

    move-result v2

    .line 560
    .local v2, "streamId":I
    invoke-direct {p0, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    .line 566
    :cond_8
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 567
    invoke-direct {p0, v2, v1, p3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZLio/netty/channel/ChannelFuture;)V

    .line 570
    .end local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v2    # "streamId":I
    :cond_9
    goto/16 :goto_2

    .line 561
    .restart local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .restart local v2    # "streamId":I
    :cond_a
    :goto_0
    sget-object v1, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 562
    return-void

    .line 570
    .end local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v2    # "streamId":I
    :cond_b
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v0, :cond_c

    .line 572
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 573
    .local v0, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;->streamId()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(ILio/netty/channel/ChannelFuture;)V

    .line 575
    .end local v0    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    goto/16 :goto_2

    :cond_c
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v0, :cond_11

    .line 577
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 579
    .local v0, "spdySettingsFrame":Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    invoke-interface {v0, v1}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v2

    .line 580
    .local v2, "settingsMinorVersion":I
    if-ltz v2, :cond_d

    iget v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->minorVersion:I

    if-eq v2, v3, :cond_d

    .line 582
    sget-object v1, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 583
    return-void

    .line 586
    :cond_d
    const/4 v3, 0x4

    .line 587
    invoke-interface {v0, v3}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v3

    .line 588
    .local v3, "newConcurrentStreams":I
    if-ltz v3, :cond_e

    .line 589
    iput v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    .line 595
    :cond_e
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 596
    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->removeValue(I)Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 598
    :cond_f
    invoke-interface {v0, v4, v1}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->setPersistValue(IZ)Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 600
    nop

    .line 601
    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v1

    .line 602
    .local v1, "newInitialWindowSize":I
    if-ltz v1, :cond_10

    .line 603
    invoke-direct {p0, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->updateInitialReceiveWindowSize(I)V

    .line 606
    .end local v0    # "spdySettingsFrame":Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .end local v1    # "newInitialWindowSize":I
    .end local v2    # "settingsMinorVersion":I
    .end local v3    # "newConcurrentStreams":I
    :cond_10
    goto :goto_2

    :cond_11
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v0, :cond_13

    .line 608
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyPingFrame;

    .line 609
    .local v0, "spdyPingFrame":Lio/netty/handler/codec/spdy/SpdyPingFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyPingFrame;->id()I

    move-result v1

    invoke-direct {p0, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid PING ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyPingFrame;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 612
    return-void

    .line 614
    :cond_12
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 616
    .end local v0    # "spdyPingFrame":Lio/netty/handler/codec/spdy/SpdyPingFrame;
    goto :goto_2

    :cond_13
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v0, :cond_14

    .line 620
    sget-object v0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 621
    return-void

    .line 623
    :cond_14
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v0, :cond_16

    .line 625
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 626
    .local v0, "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->streamId()I

    move-result v2

    .line 629
    .local v2, "streamId":I
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 630
    sget-object v1, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 631
    return-void

    .line 635
    :cond_15
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 636
    invoke-direct {p0, v2, v1, p3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZLio/netty/channel/ChannelFuture;)V

    goto :goto_1

    .line 639
    .end local v0    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v2    # "streamId":I
    :cond_16
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v0, :cond_17

    .line 642
    sget-object v0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 643
    return-void

    .line 639
    :cond_17
    :goto_1
    nop

    .line 646
    :goto_2
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 647
    return-void
.end method

.method private isRemoteInitiatedId(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 692
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v0

    .line 693
    .local v0, "serverId":Z
    iget-boolean v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private issueSessionError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "status"    # Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 661
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 662
    return-void
.end method

.method private issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "status"    # Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 676
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 677
    .local v0, "fireChannelRead":Z
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 678
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, p2, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(ILio/netty/channel/ChannelFuture;)V

    .line 680
    new-instance v2, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    invoke-direct {v2, p2, p3}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 681
    .local v2, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {p1, v2, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 682
    if-eqz v0, :cond_0

    .line 683
    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 685
    :cond_0
    return-void
.end method

.method private removeStream(ILio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "future"    # Lio/netty/channel/ChannelFuture;

    .line 744
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    sget-object v1, Lio/netty/handler/codec/spdy/SpdySessionHandler;->STREAM_CLOSED:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lio/netty/handler/codec/spdy/SpdySession;->removeStream(ILjava/lang/Throwable;Z)V

    .line 746
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFutureListener:Lio/netty/channel/ChannelFutureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFutureListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 749
    :cond_0
    return-void
.end method

.method private sendGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "status"    # Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 832
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-nez v0, :cond_0

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    .line 834
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamId:I

    invoke-direct {v0, v1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(ILio/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 835
    .local v0, "spdyGoAwayFrame":Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 837
    .end local v0    # "spdyGoAwayFrame":Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private sendGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "future"    # Lio/netty/channel/ChannelPromise;

    .line 816
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 818
    return-void

    .line 821
    :cond_0
    sget-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 822
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1}, Lio/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    new-instance v1, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;

    invoke-direct {v1, p1, p2}, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 825
    :cond_1
    new-instance v1, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;

    invoke-direct {v1, p1, p2}, Lio/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFutureListener:Lio/netty/channel/ChannelFutureListener;

    .line 828
    :goto_0
    return-void
.end method

.method private updateInitialReceiveWindowSize(I)V
    .locals 2
    .param p1, "newInitialWindowSize"    # I

    .line 705
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    sub-int v0, p1, v0

    .line 706
    .local v0, "deltaWindowSize":I
    iput p1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    .line 707
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/spdy/SpdySession;->updateAllReceiveWindowSizes(I)V

    .line 708
    return-void
.end method

.method private updateInitialSendWindowSize(I)V
    .locals 2
    .param p1, "newInitialWindowSize"    # I

    .line 698
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    sub-int v0, p1, v0

    .line 699
    .local v0, "deltaWindowSize":I
    iput p1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    .line 700
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/spdy/SpdySession;->updateAllSendWindowSizes(I)V

    .line 701
    return-void
.end method

.method private updateSendWindowSize(Lio/netty/channel/ChannelHandlerContext;II)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "deltaWindowSize"    # I

    .line 752
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p2, p3}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 756
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/spdy/SpdySession;->getPendingWrite(I)Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;

    move-result-object v0

    .line 757
    .local v0, "pendingWrite":Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;
    if-nez v0, :cond_0

    .line 758
    return-void

    .line 761
    :cond_0
    iget-object v1, v0, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;->spdyDataFrame:Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 762
    .local v1, "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v1}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 763
    .local v2, "dataFrameSize":I
    invoke-interface {v1}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->streamId()I

    move-result v3

    .line 764
    .local v3, "writeStreamId":I
    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v4, v3}, Lio/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v4

    .line 765
    .local v4, "sendWindowSize":I
    iget-object v5, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lio/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v5

    .line 766
    .local v5, "sessionSendWindowSize":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 768
    if-gtz v4, :cond_1

    .line 769
    return-void

    .line 770
    :cond_1
    if-ge v4, v2, :cond_2

    .line 772
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v3, v8}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 773
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v6, v8}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 776
    new-instance v6, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    .line 777
    invoke-interface {v1}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-virtual {v7, v4}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 781
    .local v6, "partialDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {p1, v6}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v7

    new-instance v8, Lio/netty/handler/codec/spdy/SpdySessionHandler$3;

    invoke-direct {v8, p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler$3;-><init>(Lio/netty/handler/codec/spdy/SpdySessionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v7, v8}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 789
    .end local v6    # "partialDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    goto :goto_1

    .line 791
    :cond_2
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v7, v3}, Lio/netty/handler/codec/spdy/SpdySession;->removePendingWrite(I)Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;

    .line 792
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v3, v8}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 793
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v6, v8}, Lio/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    .line 796
    invoke-interface {v1}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 797
    iget-object v7, v0, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0, v3, v6, v7}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZLio/netty/channel/ChannelFuture;)V

    .line 802
    :cond_3
    iget-object v6, v0, Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v1, v6}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v6

    new-instance v7, Lio/netty/handler/codec/spdy/SpdySessionHandler$4;

    invoke-direct {v7, p0, p1}, Lio/netty/handler/codec/spdy/SpdySessionHandler$4;-><init>(Lio/netty/handler/codec/spdy/SpdySessionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v6, v7}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 811
    .end local v0    # "pendingWrite":Lio/netty/handler/codec/spdy/SpdySession$PendingWrite;
    .end local v1    # "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v2    # "dataFrameSize":I
    .end local v3    # "writeStreamId":I
    .end local v4    # "sendWindowSize":I
    .end local v5    # "sessionSendWindowSize":I
    :goto_1
    goto/16 :goto_0
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdySession;->activeStreams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 417
    .local v1, "streamId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(ILio/netty/channel/ChannelFuture;)V

    .line 418
    .end local v1    # "streamId":Ljava/lang/Integer;
    goto :goto_0

    .line 419
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 420
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 115
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 116
    .local v0, "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->streamId()I

    move-result v3

    .line 118
    .local v3, "streamId":I
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    .line 119
    .local v4, "deltaWindowSize":I
    iget-object v5, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    .line 120
    invoke-virtual {v5, v2, v4}, Lio/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    move-result v5

    .line 123
    .local v5, "newSessionWindowSize":I
    if-gez v5, :cond_0

    .line 124
    sget-object v1, Lio/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 125
    return-void

    .line 129
    :cond_0
    iget v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSessionReceiveWindowSize:I

    div-int/lit8 v6, v6, 0x2

    if-gt v5, v6, :cond_1

    .line 130
    iget v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSessionReceiveWindowSize:I

    sub-int/2addr v6, v5

    .line 131
    .local v6, "sessionDeltaWindowSize":I
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v7, v2, v6}, Lio/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    .line 132
    new-instance v7, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;

    invoke-direct {v7, v2, v6}, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;-><init>(II)V

    move-object v2, v7

    .line 134
    .local v2, "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 139
    .end local v2    # "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    .end local v6    # "sessionDeltaWindowSize":I
    :cond_1
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/spdy/SpdySession;->isActiveStream(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->release()Z

    .line 141
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamId:I

    if-gt v3, v1, :cond_2

    .line 142
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v3, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-boolean v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-nez v1, :cond_3

    .line 144
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v3, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 146
    :cond_3
    :goto_0
    return-void

    .line 151
    :cond_4
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->release()Z

    .line 153
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_ALREADY_CLOSED:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v3, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 154
    return-void

    .line 158
    :cond_5
    invoke-direct {p0, v3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/spdy/SpdySession;->hasReceivedReply(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 159
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->release()Z

    .line 160
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v3, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 161
    return-void

    .line 171
    :cond_6
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    move-result v2

    .line 178
    .local v2, "newWindowSize":I
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v6, v3}, Lio/netty/handler/codec/spdy/SpdySession;->getReceiveWindowSizeLowerBound(I)I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 179
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->release()Z

    .line 180
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v3, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 181
    return-void

    .line 186
    :cond_7
    if-gez v2, :cond_8

    .line 187
    :goto_1
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    iget v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    if-le v6, v7, :cond_8

    .line 188
    new-instance v6, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    .line 189
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    iget v8, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    invoke-virtual {v7, v8}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 190
    .local v6, "partialDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {p1, v6}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 191
    .end local v6    # "partialDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    goto :goto_1

    .line 195
    :cond_8
    iget v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    div-int/lit8 v6, v6, 0x2

    if-gt v2, v6, :cond_9

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v6

    if-nez v6, :cond_9

    .line 196
    iget v6, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    sub-int/2addr v6, v2

    .line 197
    .local v6, "streamDeltaWindowSize":I
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v7, v3, v6}, Lio/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    .line 198
    new-instance v7, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;

    invoke-direct {v7, v3, v6}, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;-><init>(II)V

    .line 200
    .local v7, "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    invoke-interface {p1, v7}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 204
    .end local v6    # "streamDeltaWindowSize":I
    .end local v7    # "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    :cond_9
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 205
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v6

    invoke-direct {p0, v3, v1, v6}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZLio/netty/channel/ChannelFuture;)V

    .line 208
    .end local v0    # "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v2    # "newWindowSize":I
    .end local v3    # "streamId":I
    .end local v4    # "deltaWindowSize":I
    .end local v5    # "newSessionWindowSize":I
    :cond_a
    goto/16 :goto_6

    :cond_b
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v0, :cond_10

    .line 224
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 225
    .local v0, "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->streamId()I

    move-result v1

    .line 228
    .local v1, "streamId":I
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_f

    .line 229
    invoke-direct {p0, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    .line 230
    invoke-virtual {v2, v1}, Lio/netty/handler/codec/spdy/SpdySession;->isActiveStream(I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    .line 236
    :cond_c
    iget v2, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamId:I

    if-gt v1, v2, :cond_d

    .line 237
    sget-object v2, Lio/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 238
    return-void

    .line 242
    :cond_d
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->priority()B

    move-result v2

    .line 243
    .local v2, "priority":B
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v3

    .line 244
    .local v3, "remoteSideClosed":Z
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v4

    .line 245
    .local v4, "localSideClosed":Z
    invoke-direct {p0, v1, v2, v3, v4}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->acceptStream(IBZZ)Z

    move-result v5

    if-nez v5, :cond_e

    .line 246
    sget-object v5, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->REFUSED_STREAM:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v1, v5}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 247
    return-void

    .line 250
    .end local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v1    # "streamId":I
    .end local v2    # "priority":B
    .end local v3    # "remoteSideClosed":Z
    .end local v4    # "localSideClosed":Z
    :cond_e
    goto/16 :goto_6

    .line 231
    .restart local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .restart local v1    # "streamId":I
    :cond_f
    :goto_2
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v1, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 232
    return-void

    .line 250
    .end local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v1    # "streamId":I
    :cond_10
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v0, :cond_15

    .line 259
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 260
    .local v0, "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->streamId()I

    move-result v2

    .line 263
    .local v2, "streamId":I
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_14

    .line 264
    invoke-direct {p0, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    .line 265
    invoke-virtual {v3, v2}, Lio/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_3

    .line 271
    :cond_11
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/spdy/SpdySession;->hasReceivedReply(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 272
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_IN_USE:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 273
    return-void

    .line 276
    :cond_12
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/spdy/SpdySession;->receivedReply(I)V

    .line 279
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 280
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZLio/netty/channel/ChannelFuture;)V

    .line 283
    .end local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v2    # "streamId":I
    :cond_13
    goto/16 :goto_6

    .line 266
    .restart local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .restart local v2    # "streamId":I
    :cond_14
    :goto_3
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 267
    return-void

    .line 283
    .end local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v2    # "streamId":I
    :cond_15
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v0, :cond_16

    .line 294
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 295
    .local v0, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;->streamId()I

    move-result v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(ILio/netty/channel/ChannelFuture;)V

    .line 297
    .end local v0    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    goto/16 :goto_6

    :cond_16
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v0, :cond_1b

    .line 299
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 301
    .local v0, "spdySettingsFrame":Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    invoke-interface {v0, v2}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v1

    .line 302
    .local v1, "settingsMinorVersion":I
    if-ltz v1, :cond_17

    iget v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->minorVersion:I

    if-eq v1, v3, :cond_17

    .line 304
    sget-object v2, Lio/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 305
    return-void

    .line 308
    :cond_17
    const/4 v3, 0x4

    .line 309
    invoke-interface {v0, v3}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v3

    .line 310
    .local v3, "newConcurrentStreams":I
    if-ltz v3, :cond_18

    .line 311
    iput v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    .line 317
    :cond_18
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 318
    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->removeValue(I)Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 320
    :cond_19
    invoke-interface {v0, v4, v2}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->setPersistValue(IZ)Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 322
    nop

    .line 323
    invoke-interface {v0, v4}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v2

    .line 324
    .local v2, "newInitialWindowSize":I
    if-ltz v2, :cond_1a

    .line 325
    invoke-direct {p0, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->updateInitialSendWindowSize(I)V

    .line 328
    .end local v0    # "spdySettingsFrame":Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    .end local v1    # "settingsMinorVersion":I
    .end local v2    # "newInitialWindowSize":I
    .end local v3    # "newConcurrentStreams":I
    :cond_1a
    goto/16 :goto_6

    :cond_1b
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v0, :cond_1e

    .line 339
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyPingFrame;

    .line 341
    .local v0, "spdyPingFrame":Lio/netty/handler/codec/spdy/SpdyPingFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyPingFrame;->id()I

    move-result v1

    invoke-direct {p0, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedId(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 342
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 343
    return-void

    .line 347
    :cond_1c
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1d

    .line 348
    return-void

    .line 350
    :cond_1d
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 352
    .end local v0    # "spdyPingFrame":Lio/netty/handler/codec/spdy/SpdyPingFrame;
    goto/16 :goto_6

    :cond_1e
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v0, :cond_1f

    .line 354
    iput-boolean v1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->receivedGoAwayFrame:Z

    goto :goto_6

    .line 356
    :cond_1f
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v0, :cond_22

    .line 358
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 359
    .local v0, "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->streamId()I

    move-result v2

    .line 362
    .local v2, "streamId":I
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 363
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 364
    return-void

    .line 367
    :cond_20
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 368
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v2, v1}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 369
    return-void

    .line 373
    :cond_21
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 374
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZLio/netty/channel/ChannelFuture;)V

    goto :goto_5

    .line 377
    .end local v0    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v2    # "streamId":I
    :cond_22
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v0, :cond_26

    .line 389
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    .line 390
    .local v0, "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->streamId()I

    move-result v1

    .line 391
    .local v1, "streamId":I
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->deltaWindowSize()I

    move-result v2

    .line 394
    .local v2, "deltaWindowSize":I
    if-eqz v1, :cond_23

    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v1}, Lio/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 395
    return-void

    .line 399
    :cond_23
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v1}, Lio/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v3

    const v4, 0x7fffffff

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_25

    .line 400
    if-nez v1, :cond_24

    .line 401
    sget-object v3, Lio/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V

    goto :goto_4

    .line 403
    :cond_24
    sget-object v3, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v1, v3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 405
    :goto_4
    return-void

    .line 408
    :cond_25
    invoke-direct {p0, p1, v1, v2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->updateSendWindowSize(Lio/netty/channel/ChannelHandlerContext;II)V

    goto :goto_6

    .line 377
    .end local v0    # "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    .end local v1    # "streamId":I
    .end local v2    # "deltaWindowSize":I
    :cond_26
    :goto_5
    nop

    .line 411
    :goto_6
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 412
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 433
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 434
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lio/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 428
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 429
    return-void
.end method

.method public setSessionReceiveWindowSize(I)V
    .locals 1
    .param p1, "sessionReceiveWindowSize"    # I

    .line 79
    const-string v0, "sessionReceiveWindowSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 86
    iput p1, p0, Lio/netty/handler/codec/spdy/SpdySessionHandler;->initialSessionReceiveWindowSize:I

    .line 87
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 438
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyPingFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 448
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/spdy/SpdySessionHandler;->handleOutboundMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 452
    :goto_1
    return-void
.end method
