.class public final Lio/netty/channel/PreferHeapByteBufAllocator;
.super Ljava/lang/Object;
.source "PreferHeapByteBufAllocator.java"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocator;


# instance fields
.field private final allocator:Lio/netty/buffer/ByteBufAllocator;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBufAllocator;

    iput-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 34
    return-void
.end method


# virtual methods
.method public buffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 43
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public buffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 48
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public calculateNewCapacity(II)I
    .locals 1
    .param p1, "minNewCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 133
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->calculateNewCapacity(II)I

    move-result v0

    return v0
.end method

.method public compositeBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "maxNumComponents"    # I

    .line 103
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "maxNumComponents"    # I

    .line 123
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "maxNumComponents"    # I

    .line 113
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public directBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 83
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public directBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 88
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public directBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 93
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public heapBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public heapBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 73
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public heapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 78
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ioBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ioBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 58
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ioBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 63
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p1, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lio/netty/channel/PreferHeapByteBufAllocator;->allocator:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v0

    return v0
.end method
