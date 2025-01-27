.class Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;
.source "SpdyHeaderBlockZlibEncoder.java"


# instance fields
.field private final compressor:Ljava/util/zip/Deflater;

.field private finished:Z


# direct methods
.method constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V
    .locals 3
    .param p1, "spdyVersion"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "compressionLevel"    # I

    .line 35
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    .line 36
    if-ltz p2, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->compressor:Ljava/util/zip/Deflater;

    .line 41
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 42
    return-void

    .line 37
    :cond_0
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

.method private compressInto(Lio/netty/buffer/ByteBuf;)Z
    .locals 5
    .param p1, "compressed"    # Lio/netty/buffer/ByteBuf;

    .line 77
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 78
    .local v0, "out":[B
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    add-int/2addr v1, v2

    .line 79
    .local v1, "off":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v2

    .line 81
    .local v2, "toWrite":I
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 82
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->compressor:Ljava/util/zip/Deflater;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v1, v2, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v3

    .local v3, "numBytes":I
    goto :goto_0

    .line 84
    .end local v3    # "numBytes":I
    :cond_0
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v3

    .line 86
    .restart local v3    # "numBytes":I
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 87
    if-ne v3, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method private encode(Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "len"    # I

    .line 59
    invoke-interface {p1, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 60
    .local v0, "compressed":Lio/netty/buffer/ByteBuf;
    const/4 v1, 0x1

    .line 62
    .local v1, "release":Z
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->compressInto(Lio/netty/buffer/ByteBuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    nop

    .line 69
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 67
    :cond_1
    return-object v0

    .line 69
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 72
    :cond_2
    throw v2
.end method

.method private setInput(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p1, "decompressed"    # Lio/netty/buffer/ByteBuf;

    .line 45
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 47
    .local v0, "len":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    goto :goto_0

    .line 50
    :cond_0
    new-array v1, v0, [B

    .line 51
    .local v1, "in":[B
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 52
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->compressor:Ljava/util/zip/Deflater;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 55
    .end local v1    # "in":[B
    :goto_0
    return v0
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    if-eqz p2, :cond_2

    .line 96
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 102
    .local v0, "decompressed":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 103
    return-object v1

    .line 106
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->setInput(Lio/netty/buffer/ByteBuf;)I

    move-result v1

    .line 107
    .local v1, "len":I
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->encode(Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 107
    return-object v2

    .line 109
    .end local v1    # "len":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 110
    throw v1

    .line 93
    .end local v0    # "decompressed":Lio/netty/buffer/ByteBuf;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "frame"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->finished:Z

    .line 119
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibEncoder;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 120
    invoke-super {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->end()V

    .line 121
    return-void
.end method
