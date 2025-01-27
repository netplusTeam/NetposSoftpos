.class Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "UnpooledUnsafeNoCleanerDirectByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 0
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 30
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "newCapacity"    # I

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->checkNewCapacity(I)V

    .line 46
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->capacity()I

    move-result v0

    .line 47
    .local v0, "oldCapacity":I
    if-ne p1, v0, :cond_0

    .line 48
    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->trimIndicesToCapacity(I)V

    .line 52
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;Z)V

    .line 53
    return-object p0
.end method

.method protected freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 39
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->freeDirectNoCleaner(Ljava/nio/ByteBuffer;)V

    .line 40
    return-void
.end method

.method reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "initialCapacity"    # I

    .line 34
    invoke-static {p1, p2}, Lio/netty/util/internal/PlatformDependent;->reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
