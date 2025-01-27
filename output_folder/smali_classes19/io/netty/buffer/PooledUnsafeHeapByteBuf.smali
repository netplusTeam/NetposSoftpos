.class final Lio/netty/buffer/PooledUnsafeHeapByteBuf;
.super Lio/netty/buffer/PooledHeapByteBuf;
.source "PooledUnsafeHeapByteBuf.java"


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/buffer/PooledUnsafeHeapByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lio/netty/buffer/PooledUnsafeHeapByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/PooledUnsafeHeapByteBuf$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;I)V
    .locals 0
    .param p2, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PooledUnsafeHeapByteBuf;",
            ">;I)V"
        }
    .end annotation

    .line 40
    .local p1, "recyclerHandle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/buffer/PooledUnsafeHeapByteBuf;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;-><init>(Lio/netty/util/internal/ObjectPool$Handle;I)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;ILio/netty/buffer/PooledUnsafeHeapByteBuf$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/netty/buffer/PooledUnsafeHeapByteBuf$1;

    .line 23
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;-><init>(Lio/netty/util/internal/ObjectPool$Handle;I)V

    return-void
.end method

.method static newUnsafeInstance(I)Lio/netty/buffer/PooledUnsafeHeapByteBuf;
    .locals 1
    .param p0, "maxCapacity"    # I

    .line 34
    sget-object v0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;

    .line 35
    .local v0, "buf":Lio/netty/buffer/PooledUnsafeHeapByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->reuse(I)V

    .line 36
    return-object v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 45
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getByte([BI)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 70
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getInt([BI)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 75
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getIntLE([BI)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 80
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 85
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLongLE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 50
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShort([BI)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 2
    .param p1, "index"    # I

    .line 55
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShortLE([BI)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 60
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMedium([BI)I

    move-result v0

    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 65
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMediumLE([BI)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 90
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setByte([BII)V

    .line 91
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 115
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setInt([BII)V

    .line 116
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 120
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setIntLE([BII)V

    .line 121
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 125
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLong([BIJ)V

    .line 126
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 130
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLongLE([BIJ)V

    .line 131
    return-void
.end method

.method protected _setMedium(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 105
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMedium([BII)V

    .line 106
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 110
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMediumLE([BII)V

    .line 111
    return-void
.end method

.method protected _setShort(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 95
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShort([BII)V

    .line 96
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 100
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShortLE([BII)V

    .line 101
    return-void
.end method

.method protected newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0

    .line 164
    :cond_0
    invoke-super {p0}, Lio/netty/buffer/PooledHeapByteBuf;->newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 135
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 136
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 138
    iget-object v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero([BII)V

    .line 139
    return-object p0

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "length"    # I

    .line 146
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 149
    iget v0, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->writerIndex:I

    .line 150
    .local v0, "wIndex":I
    iget-object v1, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->idx(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero([BII)V

    .line 151
    add-int v1, v0, p1

    iput v1, p0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->writerIndex:I

    .line 152
    return-object p0

    .line 154
    .end local v0    # "wIndex":I
    :cond_0
    invoke-super {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
