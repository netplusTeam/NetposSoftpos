.class Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;
.source "SpdyHeaderBlockJZlibEncoder.java"


# instance fields
.field private finished:Z

.field private final z:Lcom/jcraft/jzlib/Deflater;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;III)V
    .locals 4
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "compressionLevel"    # I
    .param p3, "windowBits"    # I
    .param p4, "memLevel"    # I

    .line 35
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    .line 29
    new-instance v0, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Deflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    .line 36
    if-ltz p2, :cond_4

    const/16 v1, 0x9

    if-gt p2, v1, :cond_4

    .line 40
    if-lt p3, v1, :cond_3

    const/16 v2, 0xf

    if-gt p3, v2, :cond_3

    .line 44
    const/4 v2, 0x1

    if-lt p4, v2, :cond_2

    if-gt p4, v1, :cond_2

    .line 49
    sget-object v1, Lcom/jcraft/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/jcraft/jzlib/Deflater;->deflateInit(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result v1

    .line 51
    .local v1, "resultCode":I
    if-nez v1, :cond_1

    .line 55
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    sget-object v3, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jzlib/Deflater;->deflateSetDictionary([BI)I

    move-result v0

    .line 56
    .end local v1    # "resultCode":I
    .local v0, "resultCode":I
    if-nez v0, :cond_0

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v1, Lio/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set the SPDY dictionary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    .end local v0    # "resultCode":I
    .restart local v1    # "resultCode":I
    :cond_1
    new-instance v0, Lio/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to initialize an SPDY header block deflater: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    .end local v1    # "resultCode":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encode(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 10
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, "release":Z
    const/4 v1, 0x0

    .line 85
    .local v1, "out":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v3, v3, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    .line 86
    .local v3, "oldNextInIndex":I
    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v4, v4, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    .line 88
    .local v4, "oldNextOutIndex":I
    iget-object v5, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget-object v5, v5, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    array-length v5, v5

    int-to-double v5, v5

    const-wide v7, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v5, v5, 0xc

    .line 89
    .local v5, "maxOutputLength":I
    invoke-interface {p1, v5}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v1, v6

    .line 90
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v7

    iput-object v7, v6, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 91
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    .line 92
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v5, v6, Lcom/jcraft/jzlib/Deflater;->avail_out:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :try_start_1
    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .local v6, "resultCode":I
    :try_start_2
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v7, v7, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr v7, v3

    invoke-virtual {v1, v7}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 99
    nop

    .line 100
    if-nez v6, :cond_2

    .line 104
    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v7, v7, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    sub-int/2addr v7, v4

    .line 105
    .local v7, "outputLength":I
    if-lez v7, :cond_0

    .line 106
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v1, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 109
    nop

    .line 115
    iget-object v8, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v2, v8, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 116
    iget-object v8, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v2, v8, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 117
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 109
    :cond_1
    return-object v1

    .line 101
    .end local v7    # "outputLength":I
    :cond_2
    :try_start_3
    new-instance v7, Lio/netty/handler/codec/compression/CompressionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compression failure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "release":Z
    .end local v1    # "out":Lio/netty/buffer/ByteBuf;
    .end local p1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    throw v7

    .line 98
    .end local v6    # "resultCode":I
    .restart local v0    # "release":Z
    .restart local v1    # "out":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v7, v7, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr v7, v3

    invoke-virtual {v1, v7}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 99
    nop

    .end local v0    # "release":Z
    .end local v1    # "out":Lio/netty/buffer/ByteBuf;
    .end local p1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .end local v3    # "oldNextInIndex":I
    .end local v4    # "oldNextOutIndex":I
    .end local v5    # "maxOutputLength":I
    .restart local v0    # "release":Z
    .restart local v1    # "out":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v2, v4, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 116
    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v2, v4, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 117
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 120
    :cond_3
    throw v3
.end method

.method private setInput(Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "decompressed"    # Lio/netty/buffer/ByteBuf;

    .line 64
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 68
    .local v0, "len":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v1

    .line 70
    .local v1, "in":[B
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    add-int/2addr v2, v3

    .local v2, "offset":I
    goto :goto_0

    .line 72
    .end local v1    # "in":[B
    .end local v2    # "offset":I
    :cond_0
    new-array v1, v0, [B

    .line 73
    .restart local v1    # "in":[B
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 74
    const/4 v2, 0x0

    .line 76
    .restart local v2    # "offset":I
    :goto_0
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v3, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 77
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v2, v3, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    .line 78
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v0, v3, Lcom/jcraft/jzlib/Deflater;->avail_in:I

    .line 79
    return-void
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    if-eqz p2, :cond_2

    .line 129
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 135
    .local v0, "decompressed":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 136
    return-object v1

    .line 139
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->setInput(Lio/netty/buffer/ByteBuf;)V

    .line 140
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 140
    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 143
    throw v1

    .line 126
    .end local v0    # "decompressed":Lio/netty/buffer/ByteBuf;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "frame"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->finished:Z

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    .line 153
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 154
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockJZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v0, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 155
    return-void
.end method
