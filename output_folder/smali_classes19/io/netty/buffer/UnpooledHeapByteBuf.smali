.class public Lio/netty/buffer/UnpooledHeapByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "UnpooledHeapByteBuf.java"


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field array:[B

.field private tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .line 51
    invoke-direct {p0, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 53
    const/4 v0, 0x0

    if-gt p2, p3, :cond_0

    .line 58
    const-string v1, "alloc"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBufAllocator;

    iput-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 59
    invoke-virtual {p0, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->allocateArray(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    .line 60
    invoke-virtual {p0, v0, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 61
    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 54
    const-string v0, "initialCapacity(%d) > maxCapacity(%d)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;[BI)V
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialArray"    # [B
    .param p3, "maxCapacity"    # I

    .line 70
    invoke-direct {p0, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 72
    const-string v0, "alloc"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string v0, "initialArray"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    array-length v0, p2

    const/4 v1, 0x0

    if-gt v0, p3, :cond_0

    .line 79
    iput-object p1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 80
    invoke-direct {p0, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    .line 81
    array-length v0, p2

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 82
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p2

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 75
    const-string v1, "initialCapacity(%d) > maxCapacity(%d)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBytes(ILjava/nio/channels/FileChannel;JIZ)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .param p6, "internal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 225
    if-eqz p6, :cond_0

    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p5

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1, p3, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    return v1
.end method

.method private getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .param p4, "internal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 215
    if-eqz p4, :cond_0

    .line 216
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 218
    .end local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 220
    .restart local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method

.method private internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 539
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 540
    .local v0, "tmpNioBuf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 541
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 543
    :cond_0
    return-object v0
.end method

.method private setArray([B)V
    .locals 1
    .param p1, "initialArray"    # [B

    .line 93
    iput-object p1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 95
    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 333
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getByte([BI)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 388
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getInt([BI)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 399
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getIntLE([BI)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 410
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 421
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getLongLE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 344
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getShort([BI)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 355
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getShortLE([BI)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 366
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getUnsignedMedium([BI)I

    move-result v0

    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 377
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/HeapByteBufUtil;->getUnsignedMediumLE([BI)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 433
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/HeapByteBufUtil;->setByte([BII)V

    .line 434
    return-void
.end method

.method protected _setInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 493
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/HeapByteBufUtil;->setInt([BII)V

    .line 494
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 505
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/HeapByteBufUtil;->setIntLE([BII)V

    .line 506
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 517
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3}, Lio/netty/buffer/HeapByteBufUtil;->setLong([BIJ)V

    .line 518
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 529
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3}, Lio/netty/buffer/HeapByteBufUtil;->setLongLE([BIJ)V

    .line 530
    return-void
.end method

.method protected _setMedium(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 469
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/HeapByteBufUtil;->setMedium([BII)V

    .line 470
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 481
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/HeapByteBufUtil;->setMediumLE([BII)V

    .line 482
    return-void
.end method

.method protected _setShort(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 445
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/HeapByteBufUtil;->setShort([BII)V

    .line 446
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 457
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/HeapByteBufUtil;->setShortLE([BII)V

    .line 458
    return-void
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method protected allocateArray(I)[B
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 85
    new-array v0, p1, [B

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 147
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 148
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public capacity()I
    .locals 1

    .line 114
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    array-length v0, v0

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "newCapacity"    # I

    .line 119
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkNewCapacity(I)V

    .line 120
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    .line 121
    .local v0, "oldArray":[B
    array-length v1, v0

    .line 122
    .local v1, "oldCapacity":I
    if-ne p1, v1, :cond_0

    .line 123
    return-object p0

    .line 127
    :cond_0
    if-le p1, v1, :cond_1

    .line 128
    move v2, v1

    .local v2, "bytesToCopy":I
    goto :goto_0

    .line 130
    .end local v2    # "bytesToCopy":I
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->trimIndicesToCapacity(I)V

    .line 131
    move v2, p1

    .line 133
    .restart local v2    # "bytesToCopy":I
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->allocateArray(I)[B

    move-result-object v3

    .line 134
    .local v3, "newArray":[B
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-direct {p0, v3}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    .line 136
    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->freeArray([B)V

    .line 137
    return-object p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 534
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkIndex(II)V

    .line 535
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {v0, v1, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected deallocate()V
    .locals 1

    .line 548
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->freeArray([B)V

    .line 549
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    iput-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    .line 550
    return-void
.end method

.method protected freeArray([B)V
    .locals 0
    .param p1, "array"    # [B

    .line 90
    return-void
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 327
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 328
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 209
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JIZ)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 168
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 169
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p3

    add-long v3, v2, v4

    int-to-long v5, p4

    move v2, p1

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 176
    :goto_0
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 196
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 189
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 190
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 181
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 182
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-object p0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 382
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 383
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 393
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 394
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getIntLE(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 404
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 405
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 415
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 416
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 338
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 339
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getShort(I)S

    move-result v0

    return v0
.end method

.method public getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 349
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 350
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getShortLE(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 360
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 361
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 371
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 372
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 316
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkIndex(II)V

    .line 317
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final isContiguous()Z
    .locals 1

    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 305
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 306
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 311
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 104
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public readBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 7
    .param p1, "out"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkReadableBytes(I)V

    .line 240
    iget v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JIZ)I

    move-result v0

    .line 241
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    .line 242
    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkReadableBytes(I)V

    .line 232
    iget v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    .line 233
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    .line 234
    return v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 426
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 427
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setByte(II)V

    .line 428
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 275
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 292
    :try_start_0
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p5

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ignored":Ljava/nio/channels/ClosedChannelException;
    const/4 v1, -0x1

    return v1
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

    .line 280
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 282
    :try_start_0
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "ignored":Ljava/nio/channels/ClosedChannelException;
    const/4 v1, -0x1

    return v1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 10
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 247
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 248
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long v2, p3

    add-long v4, v0, v2

    iget-object v6, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    int-to-long v8, p4

    move v7, p1

    invoke-static/range {v4 .. v9}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 255
    :goto_0
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 267
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 268
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 269
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 260
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 261
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 486
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 487
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setInt(II)V

    .line 488
    return-object p0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 498
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 499
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setIntLE(II)V

    .line 500
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 510
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 511
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setLong(IJ)V

    .line 512
    return-object p0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 522
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 523
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setLongLE(IJ)V

    .line 524
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 462
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 463
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setMedium(II)V

    .line 464
    return-object p0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 474
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 475
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setMediumLE(II)V

    .line 476
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 438
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 439
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setShort(II)V

    .line 440
    return-object p0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 450
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 451
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setShortLE(II)V

    .line 452
    return-object p0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 554
    const/4 v0, 0x0

    return-object v0
.end method
