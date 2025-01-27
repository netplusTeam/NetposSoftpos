.class final Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;
.super Lio/netty/buffer/UnpooledHeapByteBuf;
.source "UnpooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/UnpooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstrumentedUnpooledHeapByteBuf"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V
    .locals 0
    .param p1, "alloc"    # Lio/netty/buffer/UnpooledByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 160
    return-void
.end method


# virtual methods
.method protected allocateArray(I)[B
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 164
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->allocateArray(I)[B

    move-result-object v0

    .line 165
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/UnpooledByteBufAllocator;

    array-length v2, v0

    invoke-virtual {v1, v2}, Lio/netty/buffer/UnpooledByteBufAllocator;->incrementHeap(I)V

    .line 166
    return-object v0
.end method

.method protected freeArray([B)V
    .locals 2
    .param p1, "array"    # [B

    .line 171
    array-length v0, p1

    .line 172
    .local v0, "length":I
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->freeArray([B)V

    .line 173
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledHeapByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {v1, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->decrementHeap(I)V

    .line 174
    return-void
.end method
