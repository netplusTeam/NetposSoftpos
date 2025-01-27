.class final Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;
.source "UnpooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/UnpooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V
    .locals 0
    .param p1, "alloc"    # Lio/netty/buffer/UnpooledByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 182
    return-void
.end method


# virtual methods
.method protected allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 186
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/UnpooledByteBufAllocator;->incrementDirect(I)V

    .line 188
    return-object v0
.end method

.method protected freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 201
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 202
    .local v0, "capacity":I
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->freeDirect(Ljava/nio/ByteBuffer;)V

    .line 203
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {v1, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->decrementDirect(I)V

    .line 204
    return-void
.end method

.method reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "initialCapacity"    # I

    .line 193
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 194
    .local v0, "capacity":I
    invoke-super {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;->reallocateDirect(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 195
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeNoCleanerDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lio/netty/buffer/UnpooledByteBufAllocator;->incrementDirect(I)V

    .line 196
    return-object v1
.end method
