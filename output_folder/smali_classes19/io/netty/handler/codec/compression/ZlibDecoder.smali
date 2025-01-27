.class public abstract Lio/netty/handler/codec/compression/ZlibDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "ZlibDecoder.java"


# instance fields
.field protected final maxAllocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxAllocation"    # I

    .line 46
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 47
    if-ltz p1, :cond_0

    .line 50
    iput p1, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    .line 51
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxAllocation must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 94
    return-void
.end method

.method public abstract isClosed()Z
.end method

.method protected prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p3, "preferredSize"    # I

    .line 64
    if-nez p2, :cond_1

    .line 65
    iget v0, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    if-nez v0, :cond_0

    .line 66
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p3}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    invoke-interface {v0, v1, v2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lio/netty/buffer/ByteBuf;->ensureWritable(IZ)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 84
    return-object p2

    .line 79
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/ZlibDecoder;->decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V

    .line 80
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 81
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompression buffer has reached maximum size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->maxCapacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
