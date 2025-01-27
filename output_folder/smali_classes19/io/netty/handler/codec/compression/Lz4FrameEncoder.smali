.class public Lio/netty/handler/codec/compression/Lz4FrameEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "Lz4FrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_MAX_ENCODE_SIZE:I = 0x7fffffff


# instance fields
.field private final blockSize:I

.field private buffer:Lio/netty/buffer/ByteBuf;

.field private final checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private final compressionLevel:I

.field private final compressor:Lnet/jpountz/lz4/LZ4Compressor;

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private volatile finished:Z

.field private final maxEncodeSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;-><init>(Z)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;)V
    .locals 6
    .param p1, "factory"    # Lnet/jpountz/lz4/LZ4Factory;
    .param p2, "highCompressor"    # Z
    .param p3, "blockSize"    # I
    .param p4, "checksum"    # Ljava/util/zip/Checksum;

    .line 143
    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;I)V
    .locals 1
    .param p1, "factory"    # Lnet/jpountz/lz4/LZ4Factory;
    .param p2, "highCompressor"    # Z
    .param p3, "blockSize"    # I
    .param p4, "checksum"    # Ljava/util/zip/Checksum;
    .param p5, "maxEncodeSize"    # I

    .line 160
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    .line 161
    const-string v0, "factory"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    const-string v0, "checksum"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lnet/jpountz/lz4/LZ4Factory;->highCompressor()Lnet/jpountz/lz4/LZ4Compressor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/jpountz/lz4/LZ4Factory;->fastCompressor()Lnet/jpountz/lz4/LZ4Compressor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    .line 165
    invoke-static {p4}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 167
    invoke-static {p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel(I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel:I

    .line 168
    iput p3, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    .line 169
    const-string v0, "maxEncodeSize"

    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->maxEncodeSize:I

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    .line 171
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "highCompressor"    # Z

    .line 127
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/compression/Lz4XXHash32;

    const v2, -0x68b84d74

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/Lz4XXHash32;-><init>(I)V

    const/high16 v2, 0x10000

    invoke-direct {p0, v0, p1, v2, v1}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;ZILjava/util/zip/Checksum;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/compression/Lz4FrameEncoder;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/Lz4FrameEncoder;

    .line 69
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/Lz4FrameEncoder;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 69
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;ZZ)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p3, "preferDirect"    # Z
    .param p4, "allowEmptyReturn"    # Z

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "targetBufSize":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    add-int/2addr v1, v2

    .line 197
    .local v1, "remaining":I
    if-ltz v1, :cond_4

    .line 201
    :goto_0
    if-lez v1, :cond_0

    .line 202
    iget v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 203
    .local v2, "curSize":I
    sub-int/2addr v1, v2

    .line 205
    iget-object v3, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    invoke-virtual {v3, v2}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v0, v3

    .line 206
    .end local v2    # "curSize":I
    goto :goto_0

    .line 211
    :cond_0
    iget v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->maxEncodeSize:I

    if-gt v0, v2, :cond_3

    if-ltz v0, :cond_3

    .line 216
    if-eqz p4, :cond_1

    iget v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    if-ge v0, v2, :cond_1

    .line 217
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v2

    .line 220
    :cond_1
    if-eqz p3, :cond_2

    .line 221
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, v0, v0}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    return-object v2

    .line 223
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, v0, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    return-object v2

    .line 212
    :cond_3
    new-instance v2, Lio/netty/handler/codec/EncoderException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->maxEncodeSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 212
    const-string v4, "requested encode buffer size (%d bytes) exceeds the maximum allowable size (%d bytes)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_4
    new-instance v2, Lio/netty/handler/codec/EncoderException;

    const-string v3, "too much data to allocate a buffer for compression"

    invoke-direct {v2, v3}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static compressionLevel(I)I
    .locals 6
    .param p0, "blockSize"    # I

    .line 177
    const/high16 v0, 0x2000000

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-lt p0, v2, :cond_0

    if-gt p0, v0, :cond_0

    .line 181
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 182
    .local v0, "compressionLevel":I
    add-int/lit8 v2, v0, -0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 183
    return v0

    .line 178
    .end local v0    # "compressionLevel":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 178
    const-string v0, "blockSize: %d (expected: %d-%d)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 390
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 391
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 394
    return-object v0

    .line 392
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not added to a pipeline"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 308
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 310
    return-object p2

    .line 312
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    .line 314
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    iget-object v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 315
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    .line 314
    invoke-interface {v0, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 316
    .local v0, "footer":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    .line 318
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 319
    .local v1, "idx":I
    const-wide v2, 0x4c5a34426c6f636bL    # 6.579441740982069E59

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 320
    add-int/lit8 v2, v1, 0x8

    iget v3, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel:I

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 321
    add-int/lit8 v2, v1, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 322
    add-int/lit8 v2, v1, 0xd

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 323
    add-int/lit8 v2, v1, 0x11

    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 325
    add-int/lit8 v2, v1, 0x15

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 327
    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    return-object v2
.end method

.method private flushBufferedData(Lio/netty/buffer/ByteBuf;)V
    .locals 9
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 258
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 259
    .local v0, "flushableBytes":I
    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 263
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    iget-object v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 264
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    .line 266
    .local v1, "check":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    invoke-virtual {v2, v0}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    .line 267
    .local v2, "bufSize":I
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 268
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    .line 271
    .local v3, "idx":I
    add-int/lit8 v4, v3, 0x15

    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v5

    add-int/lit8 v5, v5, -0x15

    invoke-virtual {p1, v4, v5}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 272
    .local v4, "outNioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 274
    .local v5, "pos":I
    iget-object v6, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    iget-object v7, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    invoke-virtual {v7, v8, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lnet/jpountz/lz4/LZ4Compressor;->compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 275
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6
    :try_end_0
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v6, v5

    .line 278
    .end local v4    # "outNioBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "pos":I
    .local v6, "compressedLength":I
    nop

    .line 280
    if-lt v6, v0, :cond_1

    .line 281
    const/16 v4, 0x10

    .line 282
    .local v4, "blockType":I
    move v6, v0

    .line 283
    add-int/lit8 v5, v3, 0x15

    iget-object v7, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v7, v8, v0}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 285
    .end local v4    # "blockType":I
    :cond_1
    const/16 v4, 0x20

    .line 288
    .restart local v4    # "blockType":I
    :goto_0
    const-wide v7, 0x4c5a34426c6f636bL    # 6.579441740982069E59

    invoke-virtual {p1, v3, v7, v8}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 289
    add-int/lit8 v5, v3, 0x8

    iget v7, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->compressionLevel:I

    or-int/2addr v7, v4

    int-to-byte v7, v7

    invoke-virtual {p1, v5, v7}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 290
    add-int/lit8 v5, v3, 0x9

    invoke-virtual {p1, v5, v6}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    .line 291
    add-int/lit8 v5, v3, 0xd

    invoke-virtual {p1, v5, v0}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    .line 292
    add-int/lit8 v5, v3, 0x11

    invoke-virtual {p1, v5, v1}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    .line 293
    add-int/lit8 v5, v3, 0x15

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 294
    iget-object v5, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 295
    return-void

    .line 276
    .end local v4    # "blockType":I
    .end local v6    # "compressedLength":I
    :catch_0
    move-exception v4

    .line 277
    .local v4, "e":Lnet/jpountz/lz4/LZ4Exception;
    new-instance v5, Lio/netty/handler/codec/compression/CompressionException;

    invoke-direct {v5, v4}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method protected allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p3, "preferDirect"    # Z

    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;ZZ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 343
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 352
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 353
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 354
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    return-object v2

    .line 357
    :cond_0
    new-instance v2, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;-><init>(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 364
    return-object p1
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 371
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    new-instance v1, Lio/netty/handler/codec/compression/Lz4FrameEncoder$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder$2;-><init>(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 378
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/compression/Lz4FrameEncoder$3;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder$3;-><init>(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 387
    :cond_0
    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->isWritable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p3, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 242
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encode finished and not enough space to write remaining data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 247
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    move v2, v1

    .local v2, "length":I
    if-lez v1, :cond_3

    .line 248
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 249
    .local v1, "nextChunkSize":I
    invoke-virtual {p2, v0, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 251
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 252
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    .line 254
    .end local v1    # "nextChunkSize":I
    :cond_2
    goto :goto_0

    .line 255
    :cond_3
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->isPreferDirect()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;ZZ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 301
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->flushBufferedData(Lio/netty/buffer/ByteBuf;)V

    .line 302
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 304
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 305
    return-void
.end method

.method final getBackingBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 415
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 399
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 401
    iget v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->blockSize:I

    new-array v0, v0, [B

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 402
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 403
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 407
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToByteEncoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 408
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->buffer:Lio/netty/buffer/ByteBuf;

    .line 412
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->finished:Z

    return v0
.end method
