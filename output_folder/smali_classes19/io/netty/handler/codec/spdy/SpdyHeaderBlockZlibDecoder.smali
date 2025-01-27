.class final Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;
.source "SpdyHeaderBlockZlibDecoder.java"


# static fields
.field private static final DEFAULT_BUFFER_CAPACITY:I = 0x1000

.field private static final INVALID_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyProtocolException;


# instance fields
.field private decompressed:Lio/netty/buffer/ByteBuf;

.field private final decompressor:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    const-string v1, "Invalid Header Block"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->INVALID_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V
    .locals 1
    .param p1, "spdyVersion"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxHeaderSize"    # I

    .line 37
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V

    .line 32
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    .line 38
    return-void
.end method

.method private decompress(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)I
    .locals 5
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->ensureBuffer(Lio/netty/buffer/ByteBufAllocator;)V

    .line 75
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 76
    .local v0, "out":[B
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    add-int/2addr v1, v2

    .line 78
    .local v1, "off":I
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 79
    .local v2, "numBytes":I
    if-nez v2, :cond_0

    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 81
    :try_start_1
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    sget-object v4, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    invoke-virtual {v3, v4}, Ljava/util/zip/Inflater;->setDictionary([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    nop

    .line 85
    :try_start_2
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    iget-object v4, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->INVALID_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    .end local v0    # "out":[B
    .end local v1    # "off":I
    .end local p1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local p2    # "frame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    throw v4

    .line 87
    .end local v3    # "ignored":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "out":[B
    .restart local v1    # "off":I
    .restart local p1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .restart local p2    # "frame":Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 88
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 89
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, v3, p2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decodeHeaderBlock(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V

    .line 90
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->discardReadBytes()Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    :cond_1
    return v2

    .line 94
    .end local v2    # "numBytes":I
    :catch_1
    move-exception v2

    .line 95
    .local v2, "e":Ljava/util/zip/DataFormatException;
    new-instance v3, Lio/netty/handler/codec/spdy/SpdyProtocolException;

    const-string v4, "Received invalid header block"

    invoke-direct {v3, v4, v2}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private ensureBuffer(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 100
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    .line 101
    const/16 v0, 0x1000

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    .line 103
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 104
    return-void
.end method

.method private releaseBuffer()V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressed:Lio/netty/buffer/ByteBuf;

    .line 124
    :cond_0
    return-void
.end method

.method private setInput(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p1, "compressed"    # Lio/netty/buffer/ByteBuf;

    .line 60
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 62
    .local v0, "len":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    .line 65
    :cond_0
    new-array v1, v0, [B

    .line 66
    .local v1, "in":[B
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 67
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 70
    .end local v1    # "in":[B
    :goto_0
    return v0
.end method


# virtual methods
.method decode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "headerBlock"    # Lio/netty/buffer/ByteBuf;
    .param p3, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->setInput(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 46
    .local v0, "len":I
    :goto_0
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompress(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)I

    move-result v1

    .line 47
    .local v1, "numBytes":I
    if-gtz v1, :cond_1

    .line 51
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 57
    return-void

    .line 53
    :cond_0
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->INVALID_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyProtocolException;

    throw v2

    .line 47
    :cond_1
    goto :goto_0
.end method

.method public end()V
    .locals 1

    .line 114
    invoke-super {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->end()V

    .line 115
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->releaseBuffer()V

    .line 116
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 117
    return-void
.end method

.method endHeaderBlock(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 0
    .param p1, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->endHeaderBlock(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V

    .line 109
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecoder;->releaseBuffer()V

    .line 110
    return-void
.end method
