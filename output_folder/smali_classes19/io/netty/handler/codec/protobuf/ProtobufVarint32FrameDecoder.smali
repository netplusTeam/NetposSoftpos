.class public Lio/netty/handler/codec/protobuf/ProtobufVarint32FrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "ProtobufVarint32FrameDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    return-void
.end method

.method private static readRawVarint32(Lio/netty/buffer/ByteBuf;)I
    .locals 4
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 74
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    return v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 78
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 79
    .local v0, "tmp":B
    if-ltz v0, :cond_1

    .line 80
    return v0

    .line 82
    :cond_1
    and-int/lit8 v2, v0, 0x7f

    .line 83
    .local v2, "result":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 85
    return v1

    .line 87
    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v3

    move v0, v3

    if-ltz v3, :cond_3

    .line 88
    shl-int/lit8 v1, v0, 0x7

    or-int/2addr v1, v2

    .end local v2    # "result":I
    .local v1, "result":I
    goto :goto_0

    .line 90
    .end local v1    # "result":I
    .restart local v2    # "result":I
    :cond_3
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    .line 91
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 92
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 93
    return v1

    .line 95
    :cond_4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v3

    move v0, v3

    if-ltz v3, :cond_5

    .line 96
    shl-int/lit8 v1, v0, 0xe

    or-int/2addr v1, v2

    .end local v2    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 98
    .end local v1    # "result":I
    .restart local v2    # "result":I
    :cond_5
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    .line 99
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-nez v3, :cond_6

    .line 100
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 101
    return v1

    .line 103
    :cond_6
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v3

    move v0, v3

    if-ltz v3, :cond_7

    .line 104
    shl-int/lit8 v1, v0, 0x15

    or-int/2addr v1, v2

    .end local v2    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 106
    .end local v1    # "result":I
    .restart local v2    # "result":I
    :cond_7
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v2, v3

    .line 107
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 108
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 109
    return v1

    .line 111
    :cond_8
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v1

    move v0, v1

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v2

    .line 112
    .end local v2    # "result":I
    .restart local v1    # "result":I
    if-ltz v0, :cond_9

    .line 118
    :goto_0
    return v1

    .line 113
    :cond_9
    new-instance v2, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v3, "malformed varint."

    invoke-direct {v2, v3}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 5
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

    .line 51
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 52
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 53
    .local v0, "preIndex":I
    invoke-static {p2}, Lio/netty/handler/codec/protobuf/ProtobufVarint32FrameDecoder;->readRawVarint32(Lio/netty/buffer/ByteBuf;)I

    move-result v1

    .line 54
    .local v1, "length":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    if-ltz v1, :cond_2

    .line 61
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 62
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_2
    new-instance v2, Lio/netty/handler/codec/CorruptedFrameException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "negative length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
