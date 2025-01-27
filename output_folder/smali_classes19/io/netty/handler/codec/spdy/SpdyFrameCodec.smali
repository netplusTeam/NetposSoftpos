.class public Lio/netty/handler/codec/spdy/SpdyFrameCodec;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SpdyFrameCodec.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;
.implements Lio/netty/channel/ChannelOutboundHandler;


# static fields
.field private static final INVALID_FRAME:Lio/netty/handler/codec/spdy/SpdyProtocolException;


# instance fields
.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private read:Z

.field private final spdyFrameDecoder:Lio/netty/handler/codec/spdy/SpdyFrameDecoder;

.field private final spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

.field private final spdyHeaderBlockDecoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;

.field private final spdyHeaderBlockEncoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

.field private spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

.field private spdySettingsFrame:Lio/netty/handler/codec/spdy/SpdySettingsFrame;

.field private final validateHeaders:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    const-string v1, "Received invalid frame"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->INVALID_FRAME:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameCodec;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;IIIII)V
    .locals 8
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxChunkSize"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "compressionLevel"    # I
    .param p5, "windowBits"    # I
    .param p6, "memLevel"    # I

    .line 83
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/spdy/SpdyFrameCodec;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;IIIIIZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;IIIIIZ)V
    .locals 6
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxChunkSize"    # I
    .param p3, "maxHeaderSize"    # I
    .param p4, "compressionLevel"    # I
    .param p5, "windowBits"    # I
    .param p6, "memLevel"    # I
    .param p7, "validateHeaders"    # Z

    .line 93
    nop

    .line 94
    invoke-static {p1, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;->newInstance(Lio/netty/handler/codec/spdy/SpdyVersion;I)Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;

    move-result-object v3

    .line 95
    invoke-static {p1, p4, p5, p6}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;->newInstance(Lio/netty/handler/codec/spdy/SpdyVersion;III)Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

    move-result-object v4

    .line 93
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/spdy/SpdyFrameCodec;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;ILio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;Z)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;ILio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;Z)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxChunkSize"    # I
    .param p3, "spdyHeaderBlockDecoder"    # Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;
    .param p4, "spdyHeaderBlockEncoder"    # Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
    .param p5, "validateHeaders"    # Z

    .line 100
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 101
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;

    invoke-direct {v0, p1, p0, p2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;I)V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameDecoder:Lio/netty/handler/codec/spdy/SpdyFrameDecoder;

    .line 102
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 103
    iput-object p3, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockDecoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;

    .line 104
    iput-object p4, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockEncoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

    .line 105
    iput-boolean p5, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->validateHeaders:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;Z)V
    .locals 8
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "validateHeaders"    # Z

    .line 73
    const/16 v2, 0x2000

    const/16 v3, 0x4000

    const/4 v4, 0x6

    const/16 v5, 0xf

    const/16 v6, 0x8

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/spdy/SpdyFrameCodec;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;IIIIIZ)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/spdy/SpdyFrameCodec;)Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/spdy/SpdyFrameCodec;

    .line 34
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockDecoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/spdy/SpdyFrameCodec;)Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/spdy/SpdyFrameCodec;

    .line 34
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockEncoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

    return-object v0
.end method


# virtual methods
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

    .line 139
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 140
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    if-nez v0, :cond_0

    .line 129
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 134
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    .line 135
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

    .line 155
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 156
    return-void
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

    .line 145
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 146
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameDecoder:Lio/netty/handler/codec/spdy/SpdyFrameDecoder;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->decode(Lio/netty/buffer/ByteBuf;)V

    .line 124
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

    .line 160
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 161
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 151
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 171
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 111
    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 112
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/spdy/SpdyFrameCodec$1;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/spdy/SpdyFrameCodec$1;-><init>(Lio/netty/handler/codec/spdy/SpdyFrameCodec;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 119
    return-void
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 166
    return-void
.end method

.method public readDataFrame(IZLio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "last"    # Z
    .param p3, "data"    # Lio/netty/buffer/ByteBuf;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 296
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v0, p1, p3}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 297
    .local v0, "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v0, p2}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 298
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 299
    return-void
.end method

.method public readFrameError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->INVALID_FRAME:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 409
    return-void
.end method

.method public readGoAwayFrame(II)V
    .locals 2
    .param p1, "lastGoodStreamId"    # I
    .param p2, "statusCode"    # I

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 360
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(II)V

    .line 361
    .local v0, "spdyGoAwayFrame":Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 362
    return-void
.end method

.method public readHeaderBlock(Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "headerBlock"    # Lio/netty/buffer/ByteBuf;

    .line 381
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockDecoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    invoke-virtual {v0, v1, p1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;->decode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 386
    nop

    .line 387
    return-void

    .line 385
    :goto_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 386
    throw v0
.end method

.method public readHeaderBlockEnd()V
    .locals 3

    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, "frame":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockDecoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;->endHeaderBlock(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V

    .line 394
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    move-object v0, v1

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2, v1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 399
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 402
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 404
    :cond_0
    return-void
.end method

.method public readHeadersFrame(IZ)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "last"    # Z

    .line 366
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;

    iget-boolean v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->validateHeaders:Z

    invoke-direct {v0, p1, v1}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(IZ)V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 367
    invoke-interface {v0, p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 368
    return-void
.end method

.method public readPingFrame(I)V
    .locals 2
    .param p1, "id"    # I

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 352
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyPingFrame;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyPingFrame;-><init>(I)V

    .line 353
    .local v0, "spdyPingFrame":Lio/netty/handler/codec/spdy/SpdyPingFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 354
    return-void
.end method

.method public readRstStreamFrame(II)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # I

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 322
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(II)V

    .line 323
    .local v0, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 324
    return-void
.end method

.method public readSetting(IIZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I
    .param p3, "persistValue"    # Z
    .param p4, "persisted"    # Z

    .line 336
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdySettingsFrame:Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->setValue(IIZZ)Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 337
    return-void
.end method

.method public readSettingsEnd()V
    .locals 2

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 343
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdySettingsFrame:Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 344
    .local v0, "frame":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdySettingsFrame:Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 345
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 346
    return-void
.end method

.method public readSettingsFrame(Z)V
    .locals 1
    .param p1, "clearPersisted"    # Z

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 330
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;

    invoke-direct {v0}, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdySettingsFrame:Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 331
    invoke-interface {v0, p1}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->setClearPreviouslyPersistedSettings(Z)Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 332
    return-void
.end method

.method public readSynReplyFrame(IZ)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "last"    # Z

    .line 313
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    iget-boolean v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->validateHeaders:Z

    invoke-direct {v0, p1, v1}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(IZ)V

    .line 314
    .local v0, "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    invoke-interface {v0, p2}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 315
    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 316
    return-void
.end method

.method public readSynStreamFrame(IIBZZ)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "associatedToStreamId"    # I
    .param p3, "priority"    # B
    .param p4, "last"    # Z
    .param p5, "unidirectional"    # Z

    .line 304
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;

    iget-boolean v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->validateHeaders:Z

    invoke-direct {v0, p1, p2, p3, v1}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;-><init>(IIBZ)V

    .line 306
    .local v0, "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    invoke-interface {v0, p4}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 307
    invoke-interface {v0, p5}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->setUnidirectional(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 308
    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeadersFrame:Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 309
    return-void
.end method

.method public readWindowUpdateFrame(II)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->read:Z

    .line 374
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;-><init>(II)V

    .line 375
    .local v0, "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 376
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    if-eqz v0, :cond_0

    .line 179
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 180
    .local v0, "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 181
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 182
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->streamId()I

    move-result v3

    .line 183
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v4

    .line 184
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 180
    invoke-virtual {v1, v2, v3, v4, v5}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeDataFrame(Lio/netty/buffer/ByteBufAllocator;IZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 186
    .local v1, "frame":Lio/netty/buffer/ByteBuf;
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->release()Z

    .line 187
    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 189
    .end local v0    # "spdyDataFrame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    goto/16 :goto_0

    .end local v1    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v0, :cond_1

    .line 191
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 192
    .local v0, "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockEncoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 194
    .local v1, "headerBlock":Lio/netty/buffer/ByteBuf;
    :try_start_0
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 195
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    .line 196
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->streamId()I

    move-result v5

    .line 197
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->associatedStreamId()I

    move-result v6

    .line 198
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->priority()B

    move-result v7

    .line 199
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v8

    .line 200
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v9

    .line 194
    move-object v10, v1

    invoke-virtual/range {v3 .. v10}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeSynStreamFrame(Lio/netty/buffer/ByteBufAllocator;IIBZZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 205
    nop

    .line 206
    invoke-interface {p1, v2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 208
    .end local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    move-object v1, v2

    goto/16 :goto_0

    .line 204
    .end local v2    # "frame":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .restart local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 205
    throw v2

    .line 208
    .end local v0    # "spdySynStreamFrame":Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v0, :cond_2

    .line 210
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 211
    .local v0, "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockEncoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 213
    .restart local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :try_start_1
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 214
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    .line 215
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->streamId()I

    move-result v4

    .line 216
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v5

    .line 213
    invoke-virtual {v2, v3, v4, v5, v1}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeSynReplyFrame(Lio/netty/buffer/ByteBufAllocator;IZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .restart local v2    # "frame":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 221
    nop

    .line 222
    invoke-interface {p1, v2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 224
    .end local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    move-object v1, v2

    goto/16 :goto_0

    .line 220
    .end local v2    # "frame":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .restart local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 221
    throw v2

    .line 224
    .end local v0    # "spdySynReplyFrame":Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v0, :cond_3

    .line 226
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 227
    .local v0, "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 228
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 229
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;->streamId()I

    move-result v3

    .line 230
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;->status()Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->code()I

    move-result v4

    .line 227
    invoke-virtual {v1, v2, v3, v4}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeRstStreamFrame(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 232
    .local v1, "frame":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 234
    .end local v0    # "spdyRstStreamFrame":Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    goto/16 :goto_0

    .end local v1    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_3
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v0, :cond_4

    .line 236
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 237
    .local v0, "spdySettingsFrame":Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 238
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeSettingsFrame(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdySettingsFrame;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 241
    .restart local v1    # "frame":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 243
    .end local v0    # "spdySettingsFrame":Lio/netty/handler/codec/spdy/SpdySettingsFrame;
    goto/16 :goto_0

    .end local v1    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_4
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v0, :cond_5

    .line 245
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyPingFrame;

    .line 246
    .local v0, "spdyPingFrame":Lio/netty/handler/codec/spdy/SpdyPingFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 247
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 248
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyPingFrame;->id()I

    move-result v3

    .line 246
    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodePingFrame(Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 250
    .restart local v1    # "frame":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 252
    .end local v0    # "spdyPingFrame":Lio/netty/handler/codec/spdy/SpdyPingFrame;
    goto :goto_0

    .end local v1    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_5
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v0, :cond_6

    .line 254
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    .line 255
    .local v0, "spdyGoAwayFrame":Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 256
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 257
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;->lastGoodStreamId()I

    move-result v3

    .line 258
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;->status()Lio/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->code()I

    move-result v4

    .line 255
    invoke-virtual {v1, v2, v3, v4}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeGoAwayFrame(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 260
    .restart local v1    # "frame":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 262
    .end local v0    # "spdyGoAwayFrame":Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    goto :goto_0

    .end local v1    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_6
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v0, :cond_7

    .line 264
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 265
    .local v0, "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyHeaderBlockEncoder:Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 267
    .local v1, "headerBlock":Lio/netty/buffer/ByteBuf;
    :try_start_2
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 268
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    .line 269
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->streamId()I

    move-result v4

    .line 270
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v5

    .line 267
    invoke-virtual {v2, v3, v4, v5, v1}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeHeadersFrame(Lio/netty/buffer/ByteBufAllocator;IZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 274
    .restart local v2    # "frame":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 275
    nop

    .line 276
    invoke-interface {p1, v2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 278
    .end local v0    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    move-object v1, v2

    goto :goto_0

    .line 274
    .end local v2    # "frame":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .restart local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :catchall_2
    move-exception v2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 275
    throw v2

    .line 278
    .end local v0    # "spdyHeadersFrame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :cond_7
    instance-of v0, p2, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v0, :cond_8

    .line 280
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    .line 281
    .local v0, "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameCodec;->spdyFrameEncoder:Lio/netty/handler/codec/spdy/SpdyFrameEncoder;

    .line 282
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 283
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->streamId()I

    move-result v3

    .line 284
    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->deltaWindowSize()I

    move-result v4

    .line 281
    invoke-virtual {v1, v2, v3, v4}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeWindowUpdateFrame(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 286
    .local v1, "frame":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1, v1, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 287
    .end local v0    # "spdyWindowUpdateFrame":Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    nop

    .line 290
    :goto_0
    return-void

    .line 288
    .end local v1    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_8
    new-instance v0, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, p2, v1}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    throw v0
.end method
