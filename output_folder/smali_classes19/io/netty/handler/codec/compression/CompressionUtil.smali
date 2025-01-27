.class final Lio/netty/handler/codec/compression/CompressionUtil;
.super Ljava/lang/Object;
.source "CompressionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkChecksum(Lio/netty/handler/codec/compression/ByteBufChecksum;Lio/netty/buffer/ByteBuf;I)V
    .locals 5
    .param p0, "checksum"    # Lio/netty/handler/codec/compression/ByteBufChecksum;
    .param p1, "uncompressed"    # Lio/netty/buffer/ByteBuf;
    .param p2, "currentChecksum"    # I

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 28
    nop

    .line 29
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 28
    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 32
    .local v0, "checksumResult":I
    if-ne v0, p2, :cond_0

    .line 37
    return-void

    .line 33
    :cond_0
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 33
    const-string v3, "stream corrupted: mismatching checksum: %d (expected: %d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static safeNioBuffer(Lio/netty/buffer/ByteBuf;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 40
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0
.end method

.method static safeNioBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 45
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0
.end method
