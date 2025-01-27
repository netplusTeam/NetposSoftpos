.class public Lio/netty/handler/codec/spdy/SpdyFrameEncoder;
.super Ljava/lang/Object;
.source "SpdyFrameEncoder.java"


# instance fields
.field private final version:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V
    .locals 1
    .param p1, "spdyVersion"    # Lio/netty/handler/codec/spdy/SpdyVersion;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "spdyVersion"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdyVersion;->getVersion()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    .line 39
    return-void
.end method

.method private writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V
    .locals 2
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "type"    # I
    .param p3, "flags"    # B
    .param p4, "length"    # I

    .line 42
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    const v1, 0x8000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 43
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 44
    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 45
    invoke-virtual {p1, p4}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 46
    return-void
.end method


# virtual methods
.method public encodeDataFrame(Lio/netty/buffer/ByteBufAllocator;IZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "streamId"    # I
    .param p3, "last"    # Z
    .param p4, "data"    # Lio/netty/buffer/ByteBuf;

    .line 49
    move v0, p3

    .line 50
    .local v0, "flags":B
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 51
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x8

    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 52
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    const v3, 0x7fffffff

    and-int/2addr v3, p2

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 53
    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 54
    invoke-virtual {v2, v1}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 55
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, p4, v3, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 56
    return-object v2
.end method

.method public encodeGoAwayFrame(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "lastGoodStreamId"    # I
    .param p3, "statusCode"    # I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "flags":B
    const/16 v1, 0x8

    .line 134
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x8

    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 135
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x7

    invoke-direct {p0, v2, v3, v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 136
    invoke-virtual {v2, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 137
    invoke-virtual {v2, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 138
    return-object v2
.end method

.method public encodeHeadersFrame(Lio/netty/buffer/ByteBufAllocator;IZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "streamId"    # I
    .param p3, "last"    # Z
    .param p4, "headerBlock"    # Lio/netty/buffer/ByteBuf;

    .line 142
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 143
    .local v0, "headerBlockLength":I
    move v1, p3

    .line 144
    .local v1, "flags":B
    add-int/lit8 v2, v0, 0x4

    .line 145
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x8

    invoke-interface {p1, v3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 146
    .local v3, "frame":Lio/netty/buffer/ByteBuf;
    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 147
    invoke-virtual {v3, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 148
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3, p4, v4, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 149
    return-object v3
.end method

.method public encodePingFrame(Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "id"    # I

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "flags":B
    const/4 v1, 0x4

    .line 125
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x8

    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 126
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x6

    invoke-direct {p0, v2, v3, v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 127
    invoke-virtual {v2, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 128
    return-object v2
.end method

.method public encodeRstStreamFrame(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "streamId"    # I
    .param p3, "statusCode"    # I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "flags":B
    const/16 v1, 0x8

    .line 90
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x8

    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 91
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x3

    invoke-direct {p0, v2, v3, v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 92
    invoke-virtual {v2, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 93
    invoke-virtual {v2, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 94
    return-object v2
.end method

.method public encodeSettingsFrame(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdySettingsFrame;)Lio/netty/buffer/ByteBuf;
    .locals 8
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "spdySettingsFrame"    # Lio/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 98
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->ids()Ljava/util/Set;

    move-result-object v0

    .line 99
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 101
    .local v1, "numSettings":I
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->clearPreviouslyPersistedSettings()Z

    move-result v2

    .line 103
    .local v2, "flags":B
    mul-int/lit8 v3, v1, 0x8

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 104
    .local v3, "length":I
    add-int/lit8 v5, v3, 0x8

    invoke-interface {p1, v5}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 105
    .local v5, "frame":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v5, v4, v2, v3}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 106
    invoke-virtual {v5, v1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 108
    .local v6, "id":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 109
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p2, v7}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->isPersistValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 110
    or-int/lit8 v7, v2, 0x1

    int-to-byte v2, v7

    .line 112
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p2, v7}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    or-int/lit8 v7, v2, 0x2

    int-to-byte v2, v7

    .line 115
    :cond_1
    invoke-virtual {v5, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 116
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 117
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p2, v7}, Lio/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 118
    .end local v6    # "id":Ljava/lang/Integer;
    goto :goto_0

    .line 119
    :cond_2
    return-object v5
.end method

.method public encodeSynReplyFrame(Lio/netty/buffer/ByteBufAllocator;IZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "streamId"    # I
    .param p3, "last"    # Z
    .param p4, "headerBlock"    # Lio/netty/buffer/ByteBuf;

    .line 77
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 78
    .local v0, "headerBlockLength":I
    move v1, p3

    .line 79
    .local v1, "flags":B
    add-int/lit8 v2, v0, 0x4

    .line 80
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x8

    invoke-interface {p1, v3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 81
    .local v3, "frame":Lio/netty/buffer/ByteBuf;
    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 82
    invoke-virtual {v3, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 83
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3, p4, v4, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 84
    return-object v3
.end method

.method public encodeSynStreamFrame(Lio/netty/buffer/ByteBufAllocator;IIBZZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "streamId"    # I
    .param p3, "associatedToStreamId"    # I
    .param p4, "priority"    # B
    .param p5, "last"    # Z
    .param p6, "unidirectional"    # Z
    .param p7, "headerBlock"    # Lio/netty/buffer/ByteBuf;

    .line 61
    invoke-virtual {p7}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 62
    .local v0, "headerBlockLength":I
    move v1, p5

    .line 63
    .local v1, "flags":B
    if-eqz p6, :cond_0

    .line 64
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 66
    :cond_0
    add-int/lit8 v2, v0, 0xa

    .line 67
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x8

    invoke-interface {p1, v3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 68
    .local v3, "frame":Lio/netty/buffer/ByteBuf;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 69
    invoke-virtual {v3, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 70
    invoke-virtual {v3, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 71
    and-int/lit16 v4, p4, 0xff

    shl-int/lit8 v4, v4, 0xd

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 72
    invoke-virtual {p7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3, p7, v4, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 73
    return-object v3
.end method

.method public encodeWindowUpdateFrame(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "streamId"    # I
    .param p3, "deltaWindowSize"    # I

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "flags":B
    const/16 v1, 0x8

    .line 155
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x8

    invoke-interface {p1, v2}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 156
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3, v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameEncoder;->writeControlFrameHeader(Lio/netty/buffer/ByteBuf;IBI)V

    .line 157
    invoke-virtual {v2, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 158
    invoke-virtual {v2, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 159
    return-object v2
.end method
