.class public Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "WebSocket00FrameDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;"
    }
.end annotation


# static fields
.field static final DEFAULT_MAX_FRAME_SIZE:I = 0x4000


# instance fields
.field private final maxFrameSize:J

.field private receivedClosingHandshake:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxFrameSize"    # I

    .line 52
    invoke-direct {p0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>()V

    .line 53
    int-to-long v0, p1

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    .line 54
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 2
    .param p1, "decoderConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 63
    invoke-direct {p0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>()V

    .line 64
    const-string v0, "decoderConfig"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    .line 65
    return-void
.end method

.method private decodeBinaryFrame(Lio/netty/channel/ChannelHandlerContext;BLio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "type"    # B
    .param p3, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "frameSize":J
    const/4 v2, 0x0

    .line 96
    .local v2, "lengthFieldSize":I
    :cond_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v3

    .line 97
    .local v3, "b":B
    const/4 v4, 0x7

    shl-long/2addr v0, v4

    .line 98
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 99
    iget-wide v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    const/16 v4, 0x8

    if-gt v2, v4, :cond_2

    .line 107
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    .line 109
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 110
    const/4 v4, 0x1

    iput-boolean v4, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    .line 111
    new-instance v5, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-direct {v5, v4, v7, v6}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    return-object v5

    .line 113
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    long-to-int v5, v0

    invoke-static {v4, p3, v5}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 114
    .local v4, "payload":Lio/netty/buffer/ByteBuf;
    new-instance v5, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    invoke-direct {v5, v4}, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v5

    .line 105
    .end local v4    # "payload":Lio/netty/buffer/ByteBuf;
    :cond_2
    new-instance v4, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {v4}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw v4

    .line 100
    :cond_3
    new-instance v4, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {v4}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw v4
.end method

.method private decodeTextFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 118
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 119
    .local v0, "ridx":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->actualReadableBytes()I

    move-result v1

    .line 120
    .local v1, "rbytes":I
    add-int v2, v0, v1

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v2, v3}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result v2

    .line 121
    .local v2, "delimPos":I
    if-ne v2, v3, :cond_1

    .line 123
    int-to-long v3, v1

    iget-wide v5, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 128
    const/4 v3, 0x0

    return-object v3

    .line 125
    :cond_0
    new-instance v3, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {v3}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw v3

    .line 132
    :cond_1
    sub-int v4, v2, v0

    .line 133
    .local v4, "frameSize":I
    int-to-long v5, v4

    iget-wide v7, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 137
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    invoke-static {v5, p2, v4}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 138
    .local v5, "binaryData":Lio/netty/buffer/ByteBuf;
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 140
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7, v3}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result v3

    .line 141
    .local v3, "ffDelimPos":I
    if-gez v3, :cond_2

    .line 146
    new-instance v6, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    invoke-direct {v6, v5}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v6

    .line 142
    :cond_2
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 143
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "a text frame should not contain 0xFF."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    .end local v3    # "ffDelimPos":I
    .end local v5    # "binaryData":Lio/netty/buffer/ByteBuf;
    :cond_3
    new-instance v3, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {v3}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    throw v3
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 3
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

    .line 70
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->actualReadableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 72
    return-void

    .line 76
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 78
    .local v0, "type":B
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 80
    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeBinaryFrame(Lio/netty/channel/ChannelHandlerContext;BLio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v1

    .local v1, "frame":Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    goto :goto_0

    .line 83
    .end local v1    # "frame":Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeTextFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v1

    .line 86
    .restart local v1    # "frame":Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    :goto_0
    if-eqz v1, :cond_2

    .line 87
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    return-void
.end method
