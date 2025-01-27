.class final Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "UnpooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/UnpooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstrumentedUnpooledUnsafeDirectByteBuf"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V
    .locals 0
    .param p1, "alloc"    # Lio/netty/buffer/UnpooledByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 211
    return-void
.end method


# virtual methods
.method protected allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 215
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 216
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/UnpooledByteBufAllocator;->incrementDirect(I)V

    .line 217
    return-object v0
.end method

.method protected freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 223
    .local v0, "capacity":I
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->freeDirect(Ljava/nio/ByteBuffer;)V

    .line 224
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {v1, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->decrementDirect(I)V

    .line 225
    return-void
.end method
