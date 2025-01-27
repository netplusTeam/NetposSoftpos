.class final Lio/netty/buffer/PooledSlicedByteBuf;
.super Lio/netty/buffer/AbstractPooledDerivedByteBuf;
.source "PooledSlicedByteBuf.java"


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/buffer/PooledSlicedByteBuf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field adjustment:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lio/netty/buffer/PooledSlicedByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/PooledSlicedByteBuf$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PooledSlicedByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PooledSlicedByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "handle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/buffer/PooledSlicedByteBuf;>;"
    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;Lio/netty/buffer/PooledSlicedByteBuf$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # Lio/netty/buffer/PooledSlicedByteBuf$1;

    .line 34
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;-><init>(Lio/netty/util/internal/ObjectPool$Handle;)V

    return-void
.end method

.method private idx(I)I
    .locals 1
    .param p1, "index"    # I

    .line 439
    iget v0, p0, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    add-int/2addr v0, p1

    return v0
.end method

.method static newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;
    .locals 1
    .param p0, "unwrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "wrapped"    # Lio/netty/buffer/ByteBuf;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 46
    invoke-static {p2, p3, p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkSliceOutOfBounds(IILio/netty/buffer/ByteBuf;)V

    .line 47
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/PooledSlicedByteBuf;->newInstance0(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance0(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;
    .locals 7
    .param p0, "unwrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "wrapped"    # Lio/netty/buffer/ByteBuf;
    .param p2, "adjustment"    # I
    .param p3, "length"    # I

    .line 52
    sget-object v0, Lio/netty/buffer/PooledSlicedByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PooledSlicedByteBuf;

    .line 53
    .local v0, "slice":Lio/netty/buffer/PooledSlicedByteBuf;
    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/netty/buffer/PooledSlicedByteBuf;->init(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;III)Lio/netty/buffer/AbstractPooledDerivedByteBuf;

    .line 54
    invoke-virtual {v0}, Lio/netty/buffer/PooledSlicedByteBuf;->discardMarks()V

    .line 55
    iput p2, v0, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    .line 57
    return-object v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 189
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getInt(I)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 200
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getIntLE(I)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 211
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 222
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 145
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getShort(I)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 2
    .param p1, "index"    # I

    .line 156
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getShortLE(I)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 167
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 178
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 255
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 256
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 315
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    .line 316
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 327
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setIntLE(II)V

    .line 328
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 339
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->_setLong(IJ)V

    .line 340
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 351
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    .line 352
    return-void
.end method

.method protected _setMedium(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 291
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setMedium(II)V

    .line 292
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 303
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setMediumLE(II)V

    .line 304
    return-void
.end method

.method protected _setShort(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 267
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setShort(II)V

    .line 268
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 279
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setShortLE(II)V

    .line 280
    return-void
.end method

.method public arrayOffset()I
    .locals 1

    .line 78
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->arrayOffset()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->maxCapacity()I

    move-result v0

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "newCapacity"    # I

    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "sliced buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 100
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 101
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 118
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->duplicate0()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->readerIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->writerIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public forEachByte(IILio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 420
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 421
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    .line 422
    .local v0, "ret":I
    iget v1, p0, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    if-ge v0, v1, :cond_0

    .line 423
    const/4 v1, -0x1

    return v1

    .line 425
    :cond_0
    sub-int v1, v0, v1

    return v1
.end method

.method public forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 430
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 431
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v0

    .line 432
    .local v0, "ret":I
    iget v1, p0, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    if-ge v0, v1, :cond_0

    .line 433
    const/4 v1, -0x1

    return v1

    .line 435
    :cond_0
    sub-int v1, v0, v1

    return v1
.end method

.method public getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 129
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 394
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 387
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 227
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 228
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 229
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 379
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 380
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 242
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 243
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 234
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 235
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/AbstractByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 236
    return-object p0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 183
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 184
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 194
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 195
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getIntLE(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 205
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 206
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 216
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 217
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 140
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getShortLE(I)S
    .locals 2
    .param p1, "index"    # I

    .line 150
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 151
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getShortLE(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 161
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 162
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 172
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 173
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method public memoryAddress()J
    .locals 4

    .line 83
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->memoryAddress()J

    move-result-wide v0

    iget v2, p0, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 88
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 89
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 94
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 95
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 123
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->readerIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->writerIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lio/netty/buffer/PooledDuplicatedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledDuplicatedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 112
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 113
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, p0, v1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->newInstance0(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 249
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 250
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 401
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 415
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 408
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 363
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 364
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 365
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 370
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 371
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 372
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 356
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 357
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/AbstractByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 358
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 308
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 309
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 310
    return-object p0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 320
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 321
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    .line 322
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 332
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 333
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 334
    return-object p0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 344
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 345
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    .line 346
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 284
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 285
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 286
    return-object p0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 296
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 297
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    .line 298
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 260
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 261
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 262
    return-object p0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 272
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 273
    invoke-virtual {p0}, Lio/netty/buffer/PooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    .line 274
    return-object p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 106
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->checkIndex0(II)V

    .line 107
    invoke-direct {p0, p1}, Lio/netty/buffer/PooledSlicedByteBuf;->idx(I)I

    move-result v0

    invoke-super {p0, v0, p2}, Lio/netty/buffer/AbstractPooledDerivedByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
