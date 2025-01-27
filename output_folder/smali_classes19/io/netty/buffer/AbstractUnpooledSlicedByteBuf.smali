.class abstract Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;
.super Lio/netty/buffer/AbstractDerivedByteBuf;
.source "AbstractUnpooledSlicedByteBuf.java"


# instance fields
.field private final adjustment:I

.field private final buffer:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;II)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 37
    invoke-direct {p0, p3}, Lio/netty/buffer/AbstractDerivedByteBuf;-><init>(I)V

    .line 38
    invoke-static {p2, p3, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkSliceOutOfBounds(IILio/netty/buffer/ByteBuf;)V

    .line 40
    instance-of v0, p1, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    iget-object v0, v0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 42
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    iget v0, v0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    goto :goto_0

    .line 43
    :cond_0
    instance-of v0, p1, Lio/netty/buffer/DuplicatedByteBuf;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 45
    iput p2, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    goto :goto_0

    .line 47
    :cond_1
    iput-object p1, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 48
    iput p2, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    .line 51
    :goto_0
    invoke-virtual {p0, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->initLength(I)V

    .line 52
    invoke-virtual {p0, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 53
    return-void
.end method

.method static checkSliceOutOfBounds(IILio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "length"    # I
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 473
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".slice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 125
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 180
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 191
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 202
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 213
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 136
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 2
    .param p1, "index"    # I

    .line 147
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 158
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 169
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 269
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 270
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 329
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 330
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 341
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    .line 342
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 353
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 354
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 365
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    .line 366
    return-void
.end method

.method protected _setMedium(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 305
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 306
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 317
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    .line 318
    return-void
.end method

.method protected _setShort(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 281
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 282
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 293
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    .line 294
    return-void
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 99
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 104
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v0

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "newCapacity"    # I

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "sliced buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 223
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 224
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 218
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->writerIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

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

    .line 445
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 446
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    .line 447
    .local v0, "ret":I
    iget v1, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    if-lt v0, v1, :cond_0

    .line 448
    sub-int v1, v0, v1

    return v1

    .line 450
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 456
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 457
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v0

    .line 458
    .local v0, "ret":I
    iget v1, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    if-lt v0, v1, :cond_0

    .line 459
    sub-int v1, v0, v1

    return v1

    .line 461
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 120
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

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

    .line 404
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 405
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JI)I

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

    .line 398
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 399
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 235
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 236
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 237
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

    .line 391
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 392
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 393
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 250
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 251
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 242
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 243
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 244
    return-object p0
.end method

.method public getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 263
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 264
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 174
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 175
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 185
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 186
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 196
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 197
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 207
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 208
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 130
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 131
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getShortLE(I)S
    .locals 2
    .param p1, "index"    # I

    .line 141
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 142
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 152
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 153
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 163
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 164
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0
.end method

.method final idx(I)I
    .locals 1
    .param p1, "index"    # I

    .line 469
    iget v0, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    add-int/2addr v0, p1

    return v0
.end method

.method initLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 60
    return-void
.end method

.method public isDirect()Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    return v0
.end method

.method length()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->capacity()I

    move-result v0

    return v0
.end method

.method public memoryAddress()J
    .locals 4

    .line 114
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    iget v2, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->adjustment:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 433
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 434
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .line 428
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 439
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 440
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 257
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 258
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

    .line 410
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 411
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

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

    .line 422
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 423
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

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

    .line 416
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 417
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 377
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 378
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 379
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 384
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 385
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 386
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 370
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 371
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 372
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 322
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 323
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 324
    return-object p0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 334
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 335
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    .line 336
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 346
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 347
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 348
    return-object p0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 358
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 359
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    .line 360
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 298
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 299
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 300
    return-object p0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 310
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 311
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    .line 312
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 274
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 275
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 276
    return-object p0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 286
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 287
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    .line 288
    return-object p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 229
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->checkIndex0(II)V

    .line 230
    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method
