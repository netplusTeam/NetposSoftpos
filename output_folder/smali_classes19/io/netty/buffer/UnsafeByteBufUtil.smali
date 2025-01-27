.class final Lio/netty/buffer/UnsafeByteBufUtil;
.super Ljava/lang/Object;
.source "UnsafeByteBufUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNALIGNED:Z

.field private static final ZERO:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    nop

    .line 35
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v0

    sput-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copy(Lio/netty/buffer/AbstractByteBuf;JII)Lio/netty/buffer/ByteBuf;
    .locals 8
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "length"    # I

    .line 435
    invoke-virtual {p0, p3, p4}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 436
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p4, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 437
    .local v0, "copy":Lio/netty/buffer/ByteBuf;
    if-eqz p4, :cond_1

    .line 438
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v4

    int-to-long v6, p4

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v0, p0, p3, p4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 445
    :cond_1
    :goto_0
    return-object v0
.end method

.method static getByte(J)B
    .locals 1
    .param p0, "address"    # J

    .line 39
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    return v0
.end method

.method static getByte([BI)B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 231
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    return v0
.end method

.method private static getBytes(J[BIILjava/io/OutputStream;I)V
    .locals 7
    .param p0, "inAddr"    # J
    .param p2, "in"    # [B
    .param p3, "inOffset"    # I
    .param p4, "inLen"    # I
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "outLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    :goto_0
    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 607
    .local v6, "len":I
    int-to-long v4, v6

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 608
    invoke-virtual {p5, p2, p3, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 609
    sub-int/2addr p6, v6

    .line 610
    int-to-long v0, v6

    add-long/2addr p0, v0

    .line 611
    .end local v6    # "len":I
    if-gtz p6, :cond_0

    .line 612
    return-void

    .line 611
    :cond_0
    goto :goto_0
.end method

.method static getBytes(Lio/netty/buffer/AbstractByteBuf;JILio/netty/buffer/ByteBuf;II)V
    .locals 15
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p5, "dstIndex"    # I
    .param p6, "length"    # I

    .line 465
    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual {p0, v1, v4}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 466
    const-string v5, "dst"

    invoke-static {v2, v5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    invoke-static {v3, v4, v5}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v5

    if-nez v5, :cond_2

    .line 471
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v5

    int-to-long v7, v3

    add-long v11, v5, v7

    int-to-long v13, v4

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v5

    add-int v9, v5, v3

    int-to-long v10, v4

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {v2, v3, p0, v1, v4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 478
    :goto_0
    return-void

    .line 468
    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dstIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static getBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/io/OutputStream;I)V
    .locals 9
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0, p3, p5}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 585
    if-eqz p5, :cond_2

    .line 586
    const/16 v0, 0x2000

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 587
    .local v0, "len":I
    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    .line 593
    .local v8, "tmpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v3

    .line 594
    .local v3, "tmp":[B
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v4

    .line 595
    .local v4, "offset":I
    move-wide v1, p1

    move v5, v0

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lio/netty/buffer/UnsafeByteBufUtil;->getBytes(J[BIILjava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .end local v3    # "tmp":[B
    .end local v4    # "offset":I
    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 598
    goto :goto_1

    .line 597
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 598
    throw v1

    .line 588
    .end local v8    # "tmpBuf":Lio/netty/buffer/ByteBuf;
    :cond_1
    :goto_0
    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    move-wide v1, p1

    move v5, v0

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lio/netty/buffer/UnsafeByteBufUtil;->getBytes(J[BIILjava/io/OutputStream;I)V

    .line 601
    .end local v0    # "len":I
    :cond_2
    :goto_1
    return-void
.end method

.method static getBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/nio/ByteBuffer;)V
    .locals 10
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;

    .line 492
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 493
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 494
    return-void

    .line 497
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    invoke-static {p4}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 504
    .local v0, "dstAddress":J
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v8, v2

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 505
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 506
    .end local v0    # "dstAddress":J
    goto :goto_0

    .line 500
    :cond_1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 506
    :cond_2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v5, v0

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 509
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 511
    :cond_3
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 513
    :goto_0
    return-void
.end method

.method static getBytes(Lio/netty/buffer/AbstractByteBuf;JI[BII)V
    .locals 7
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "dst"    # [B
    .param p5, "dstIndex"    # I
    .param p6, "length"    # I

    .line 481
    invoke-virtual {p0, p3, p6}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 482
    const-string v0, "dst"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    array-length v0, p4

    invoke-static {p5, p6, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    if-eqz p6, :cond_0

    .line 487
    int-to-long v5, p6

    move-wide v1, p1

    move-object v3, p4

    move v4, p5

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 489
    :cond_0
    return-void

    .line 484
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dstIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getInt(J)I
    .locals 3
    .param p0, "address"    # J

    .line 81
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 82
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result v0

    .line 83
    .local v0, "v":I
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :goto_0
    return v1

    .line 85
    .end local v0    # "v":I
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 86
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const-wide/16 v1, 0x2

    add-long/2addr v1, p0

    .line 87
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v1, 0x3

    add-long/2addr v1, p0

    .line 88
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 85
    return v0
.end method

.method static getInt([BI)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 276
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getInt([BI)I

    move-result v0

    .line 278
    .local v0, "v":I
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :goto_0
    return v1

    .line 280
    .end local v0    # "v":I
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 281
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 282
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 283
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 280
    return v0
.end method

.method static getIntLE(J)I
    .locals 3
    .param p0, "address"    # J

    .line 92
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result v0

    .line 94
    .local v0, "v":I
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 96
    .end local v0    # "v":I
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 97
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v1, 0x2

    add-long/2addr v1, p0

    .line 98
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const-wide/16 v1, 0x3

    add-long/2addr v1, p0

    .line 99
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 96
    return v0
.end method

.method static getIntLE([BI)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 287
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 288
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getInt([BI)I

    move-result v0

    .line 289
    .local v0, "v":I
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 291
    .end local v0    # "v":I
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 292
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 293
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 294
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 291
    return v0
.end method

.method static getLong(J)J
    .locals 7
    .param p0, "address"    # J

    .line 103
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    .line 105
    .local v0, "v":J
    sget-boolean v2, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 107
    .end local v0    # "v":J
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    .line 108
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    .line 109
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v2, p0

    .line 110
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v2, p0

    .line 111
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    .line 112
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x6

    add-long/2addr v2, p0

    .line 113
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v2, p0

    .line 114
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 107
    return-wide v0
.end method

.method static getLong([BI)J
    .locals 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 298
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 299
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getLong([BI)J

    move-result-wide v0

    .line 300
    .local v0, "v":J
    sget-boolean v2, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 302
    .end local v0    # "v":J
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 303
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 304
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    .line 305
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    .line 306
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    .line 307
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 308
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 309
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 302
    return-wide v0
.end method

.method static getLongLE(J)J
    .locals 7
    .param p0, "address"    # J

    .line 118
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    .line 120
    .local v0, "v":J
    sget-boolean v2, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2

    .line 122
    .end local v0    # "v":J
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v4, p0

    .line 123
    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x2

    add-long/2addr v4, p0

    .line 124
    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3

    add-long/2addr v4, p0

    .line 125
    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x4

    add-long/2addr v4, p0

    .line 126
    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x5

    add-long/2addr v4, p0

    .line 127
    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x6

    add-long/2addr v4, p0

    .line 128
    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v2, p0

    .line 129
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 122
    return-wide v0
.end method

.method static getLongLE([BI)J
    .locals 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 313
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 314
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getLong([BI)J

    move-result-wide v0

    .line 315
    .local v0, "v":J
    sget-boolean v2, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2

    .line 317
    .end local v0    # "v":J
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    .line 318
    invoke-static {p0, v4}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    .line 319
    invoke-static {p0, v4}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    .line 320
    invoke-static {p0, v4}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    .line 321
    invoke-static {p0, v4}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    .line 322
    invoke-static {p0, v4}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    .line 323
    invoke-static {p0, v4}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    .line 324
    invoke-static {p0, v2}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 317
    return-wide v0
.end method

.method static getShort(J)S
    .locals 3
    .param p0, "address"    # J

    .line 43
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v0

    .line 45
    .local v0, "v":S
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    :goto_0
    return v1

    .line 47
    .end local v0    # "v":S
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static getShort([BI)S
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 235
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result v0

    .line 237
    .local v0, "v":S
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    :goto_0
    return v1

    .line 239
    .end local v0    # "v":S
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    .line 240
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 239
    return v0
.end method

.method static getShortLE(J)S
    .locals 3
    .param p0, "address"    # J

    .line 51
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v0

    .line 53
    .local v0, "v":S
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 55
    .end local v0    # "v":S
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static getShortLE([BI)S
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 244
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 245
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result v0

    .line 246
    .local v0, "v":S
    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 248
    .end local v0    # "v":S
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 249
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 248
    return v0
.end method

.method static getUnsignedMedium(J)I
    .locals 4
    .param p0, "address"    # J

    .line 59
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 60
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    sget-boolean v3, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v3, :cond_0

    add-long/2addr v1, p0

    .line 61
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v1

    goto :goto_0

    :cond_0
    add-long/2addr v1, p0

    .line 62
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    :goto_0
    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 60
    return v0

    .line 64
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-long/2addr v1, p0

    .line 65
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v1, 0x2

    add-long/2addr v1, p0

    .line 66
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 64
    return v0
.end method

.method static getUnsignedMedium([BI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 253
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 254
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 255
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 256
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    :goto_0
    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 254
    return v0

    .line 259
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    .line 260
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 261
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 259
    return v0
.end method

.method static getUnsignedMediumLE(J)I
    .locals 4
    .param p0, "address"    # J

    .line 70
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sget-boolean v3, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v3, :cond_0

    add-long/2addr v1, p0

    .line 72
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    goto :goto_0

    :cond_0
    add-long/2addr v1, p0

    .line 73
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v1

    :goto_0
    const v2, 0xffff

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 71
    return v0

    .line 75
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-long/2addr v1, p0

    .line 76
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v1, 0x2

    add-long/2addr v1, p0

    .line 77
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 75
    return v0
.end method

.method static getUnsignedMediumLE([BI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 265
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 267
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 268
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result v1

    :goto_0
    const v2, 0xffff

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 266
    return v0

    .line 270
    :cond_1
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 271
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 272
    invoke-static {p0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 270
    return v0
.end method

.method static newUnsafeDirectByteBuf(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 624
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeNoCleanerDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    return-object v0

    .line 627
    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    return-object v0
.end method

.method static setByte(JI)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 133
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 134
    return-void
.end method

.method static setByte([BII)V
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 328
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 329
    return-void
.end method

.method static setBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/io/InputStream;I)I
    .locals 10
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "in"    # Ljava/io/InputStream;
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0, p3, p5}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 450
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p5}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 452
    .local v0, "tmpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v1

    .line 453
    .local v1, "tmp":[B
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    move v8, v2

    .line 454
    .local v8, "offset":I
    invoke-virtual {p4, v1, v8, p5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v9, v2

    .line 455
    .local v9, "readBytes":I
    if-lez v9, :cond_0

    .line 456
    int-to-long v6, v9

    move-object v2, v1

    move v3, v8

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_0
    nop

    .line 460
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 458
    return v9

    .line 460
    .end local v1    # "tmp":[B
    .end local v8    # "offset":I
    .end local v9    # "readBytes":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 461
    throw v1
.end method

.method static setBytes(Lio/netty/buffer/AbstractByteBuf;JILio/netty/buffer/ByteBuf;II)V
    .locals 15
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "src"    # Lio/netty/buffer/ByteBuf;
    .param p5, "srcIndex"    # I
    .param p6, "length"    # I

    .line 516
    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual {p0, v1, v4}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 517
    const-string v5, "src"

    invoke-static {v2, v5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 518
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    invoke-static {v3, v4, v5}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v5

    if-nez v5, :cond_3

    .line 522
    if-eqz v4, :cond_2

    .line 523
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 524
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v5

    int-to-long v7, v3

    add-long v9, v5, v7

    int-to-long v13, v4

    move-wide/from16 v11, p1

    invoke-static/range {v9 .. v14}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v5

    add-int v7, v5, v3

    int-to-long v10, v4

    move-wide/from16 v8, p1

    invoke-static/range {v6 .. v11}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {v2, v3, p0, v1, v4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 531
    :cond_2
    :goto_0
    return-void

    .line 519
    :cond_3
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "srcIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static setBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/nio/ByteBuffer;)V
    .locals 16
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "src"    # Ljava/nio/ByteBuffer;

    .line 541
    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    .line 542
    .local v9, "length":I
    if-nez v9, :cond_0

    .line 543
    return-void

    .line 546
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {v6, v7, v9}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 549
    invoke-static/range {p4 .. p4}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 550
    .local v0, "srcAddress":J
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long v10, v0, v2

    int-to-long v14, v9

    move-wide/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 551
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 552
    .end local v0    # "srcAddress":J
    goto :goto_0

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {v6, v7, v9}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 555
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v11, v0, v1

    int-to-long v14, v9

    move-wide/from16 v12, p1

    invoke-static/range {v10 .. v15}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    .line 556
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 558
    :cond_2
    const/16 v0, 0x8

    if-ge v9, v0, :cond_3

    .line 559
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v9

    invoke-static/range {v0 .. v5}, Lio/netty/buffer/UnsafeByteBufUtil;->setSingleBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 562
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/AbstractByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 563
    invoke-virtual {v6, v7, v9}, Lio/netty/buffer/AbstractByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 564
    .local v0, "internalBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 567
    .end local v0    # "internalBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 562
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static setBytes(Lio/netty/buffer/AbstractByteBuf;JI[BII)V
    .locals 6
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "src"    # [B
    .param p5, "srcIndex"    # I
    .param p6, "length"    # I

    .line 534
    invoke-virtual {p0, p3, p6}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 535
    if-eqz p6, :cond_0

    .line 536
    int-to-long v4, p6

    move-object v0, p4

    move v1, p5

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    .line 538
    :cond_0
    return-void
.end method

.method static setInt(JI)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 179
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 180
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    goto :goto_1

    .line 182
    :cond_1
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 183
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 184
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 185
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    int-to-byte v2, p2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 187
    :goto_1
    return-void
.end method

.method static setInt([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 376
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 377
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putInt([BII)V

    goto :goto_1

    .line 379
    :cond_1
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 380
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 381
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 382
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 384
    :goto_1
    return-void
.end method

.method static setIntLE(JI)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 190
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 191
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    goto :goto_1

    .line 193
    :cond_1
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 194
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 195
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 196
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 198
    :goto_1
    return-void
.end method

.method static setIntLE([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 387
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 388
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putInt([BII)V

    goto :goto_1

    .line 390
    :cond_1
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 391
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 392
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 393
    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 395
    :goto_1
    return-void
.end method

.method static setLong(JJ)V
    .locals 4
    .param p0, "address"    # J
    .param p2, "value"    # J

    .line 201
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 202
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    goto :goto_1

    .line 204
    :cond_1
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 205
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 206
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 207
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 208
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 209
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 210
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 211
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 213
    :goto_1
    return-void
.end method

.method static setLong([BIJ)V
    .locals 3
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 398
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 399
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putLong([BIJ)V

    goto :goto_1

    .line 401
    :cond_1
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 402
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 403
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 404
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 405
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 406
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 407
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 408
    add-int/lit8 v0, p1, 0x7

    long-to-int v1, p2

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 410
    :goto_1
    return-void
.end method

.method static setLongLE(JJ)V
    .locals 4
    .param p0, "address"    # J
    .param p2, "value"    # J

    .line 216
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 217
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    goto :goto_1

    .line 219
    :cond_1
    long-to-int v0, p2

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 220
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 221
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 222
    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 223
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 224
    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 225
    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 226
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    const/16 v2, 0x38

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 228
    :goto_1
    return-void
.end method

.method static setLongLE([BIJ)V
    .locals 3
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 413
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 414
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    invoke-static {p0, p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putLong([BIJ)V

    goto :goto_1

    .line 416
    :cond_1
    long-to-int v0, p2

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 417
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 418
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 419
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 420
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 421
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 422
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 423
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 425
    :goto_1
    return-void
.end method

.method static setMedium(JI)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 157
    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 158
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 159
    add-long/2addr v1, p0

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    int-to-short v0, p2

    goto :goto_0

    :cond_0
    int-to-short v0, p2

    .line 160
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 159
    :goto_0
    invoke-static {v1, v2, v0}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    goto :goto_1

    .line 162
    :cond_1
    add-long/2addr v1, p0

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-static {v1, v2, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 163
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    int-to-byte v2, p2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 165
    :goto_1
    return-void
.end method

.method static setMedium([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 352
    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 353
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 354
    add-int/lit8 v0, p1, 0x1

    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    int-to-short v1, p2

    goto :goto_0

    :cond_0
    int-to-short v1, p2

    .line 356
    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    .line 354
    :goto_0
    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putShort([BIS)V

    goto :goto_1

    .line 358
    :cond_1
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 359
    add-int/lit8 v0, p1, 0x2

    int-to-byte v1, p2

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 361
    :goto_1
    return-void
.end method

.method static setMediumLE(JI)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 168
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 169
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 170
    add-long/2addr v1, p0

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    ushr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    :goto_0
    invoke-static {v1, v2, v0}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    goto :goto_1

    .line 173
    :cond_1
    add-long/2addr v1, p0

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-static {v1, v2, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 174
    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 176
    :goto_1
    return-void
.end method

.method static setMediumLE([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 364
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 365
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 366
    add-int/lit8 v0, p1, 0x1

    sget-boolean v1, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    ushr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    .line 367
    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    .line 366
    :goto_0
    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putShort([BIS)V

    goto :goto_1

    .line 370
    :cond_1
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 371
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 373
    :goto_1
    return-void
.end method

.method static setShort(JI)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 137
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 138
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    int-to-short v0, p2

    goto :goto_0

    :cond_0
    int-to-short v0, p2

    .line 139
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 138
    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    goto :goto_1

    .line 141
    :cond_1
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 142
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    int-to-byte v2, p2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 144
    :goto_1
    return-void
.end method

.method static setShort([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 332
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 333
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    int-to-short v0, p2

    goto :goto_0

    :cond_0
    int-to-short v0, p2

    .line 334
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 333
    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putShort([BIS)V

    goto :goto_1

    .line 336
    :cond_1
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 337
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 339
    :goto_1
    return-void
.end method

.method static setShortLE(JI)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 147
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 148
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    int-to-short v0, p2

    .line 149
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    goto :goto_0

    :cond_0
    int-to-short v0, p2

    .line 148
    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    goto :goto_1

    .line 151
    :cond_1
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 152
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 154
    :goto_1
    return-void
.end method

.method static setShortLE([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 342
    sget-boolean v0, Lio/netty/buffer/UnsafeByteBufUtil;->UNALIGNED:Z

    if-eqz v0, :cond_1

    .line 343
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    int-to-short v0, p2

    .line 344
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    goto :goto_0

    :cond_0
    int-to-short v0, p2

    .line 343
    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putShort([BIS)V

    goto :goto_1

    .line 346
    :cond_1
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 347
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent;->putByte([BIB)V

    .line 349
    :goto_1
    return-void
.end method

.method private static setSingleBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/nio/ByteBuffer;I)V
    .locals 8
    .param p0, "buf"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "addr"    # J
    .param p3, "index"    # I
    .param p4, "src"    # Ljava/nio/ByteBuffer;
    .param p5, "length"    # I

    .line 571
    invoke-virtual {p0, p3, p5}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 572
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 573
    .local v0, "srcPosition":I
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 574
    .local v1, "srcLimit":I
    move-wide v2, p1

    .line 575
    .local v2, "dstAddr":J
    move v4, v0

    .local v4, "srcIndex":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 576
    invoke-virtual {p4, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 577
    .local v5, "value":B
    invoke-static {v2, v3, v5}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 578
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 575
    .end local v5    # "value":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 580
    .end local v4    # "srcIndex":I
    :cond_0
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 581
    return-void
.end method

.method static setZero(JI)V
    .locals 3
    .param p0, "addr"    # J
    .param p2, "length"    # I

    .line 615
    if-nez p2, :cond_0

    .line 616
    return-void

    .line 619
    :cond_0
    int-to-long v0, p2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->setMemory(JJB)V

    .line 620
    return-void
.end method

.method static setZero([BII)V
    .locals 3
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 428
    if-nez p2, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    int-to-long v0, p2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->setMemory([BIJB)V

    .line 432
    return-void
.end method
