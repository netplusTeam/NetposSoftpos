.class public final Lio/netty/handler/codec/compression/Snappy;
.super Ljava/lang/Object;
.source "Snappy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Snappy$State;
    }
.end annotation


# static fields
.field private static final COPY_1_BYTE_OFFSET:I = 0x1

.field private static final COPY_2_BYTE_OFFSET:I = 0x2

.field private static final COPY_4_BYTE_OFFSET:I = 0x3

.field private static final LITERAL:I = 0x0

.field private static final MAX_HT_SIZE:I = 0x4000

.field private static final MIN_COMPRESSIBLE_BYTES:I = 0xf

.field private static final NOT_ENOUGH_INPUT:I = -0x1

.field private static final PREAMBLE_NOT_FULL:I = -0x1


# instance fields
.field private state:Lio/netty/handler/codec/compression/Snappy$State;

.field private tag:B

.field private written:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READY:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    return-void
.end method

.method private static bitsToEncode(I)I
    .locals 3
    .param p0, "value"    # I

    .line 205
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 206
    .local v0, "highestOneBit":I
    const/4 v1, 0x0

    .line 207
    .local v1, "bitLength":I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-eqz v2, :cond_0

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return v1
.end method

.method static calculateChecksum(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p0, "data"    # Lio/netty/buffer/ByteBuf;

    .line 597
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/compression/Snappy;->calculateChecksum(Lio/netty/buffer/ByteBuf;II)I

    move-result v0

    return v0
.end method

.method static calculateChecksum(Lio/netty/buffer/ByteBuf;II)I
    .locals 3
    .param p0, "data"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 607
    new-instance v0, Lio/netty/handler/codec/compression/Crc32c;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Crc32c;-><init>()V

    .line 609
    .local v0, "crc32":Lio/netty/handler/codec/compression/Crc32c;
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/handler/codec/compression/Crc32c;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 610
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32c;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/handler/codec/compression/Snappy;->maskChecksum(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32c;->reset()V

    .line 610
    return v1

    .line 612
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32c;->reset()V

    .line 613
    throw v1
.end method

.method private static decodeCopyWith1ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "writtenSoFar"    # I

    .line 448
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const/4 v0, -0x1

    return v0

    .line 452
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 453
    .local v0, "initialIndex":I
    and-int/lit8 v1, p0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    .line 454
    .local v1, "length":I
    and-int/lit16 v2, p0, 0xe0

    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x5

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    or-int/2addr v2, v3

    .line 456
    .local v2, "offset":I
    invoke-static {v2, p3}, Lio/netty/handler/codec/compression/Snappy;->validateOffset(II)V

    .line 458
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 459
    if-ge v2, v1, :cond_3

    .line 460
    div-int v3, v1, v2

    .line 461
    .local v3, "copies":I
    :goto_0
    if-lez v3, :cond_1

    .line 462
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 463
    invoke-virtual {p2, p2, v2}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 461
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 465
    :cond_1
    rem-int v4, v1, v2

    if-eqz v4, :cond_2

    .line 466
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 467
    rem-int v4, v1, v2

    invoke-virtual {p2, p2, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 469
    .end local v3    # "copies":I
    :cond_2
    goto :goto_1

    .line 470
    :cond_3
    sub-int v3, v0, v2

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 471
    invoke-virtual {p2, p2, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 473
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 475
    return v1
.end method

.method private static decodeCopyWith2ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "writtenSoFar"    # I

    .line 492
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 493
    const/4 v0, -0x1

    return v0

    .line 496
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 497
    .local v0, "initialIndex":I
    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x3f

    add-int/lit8 v1, v1, 0x1

    .line 498
    .local v1, "length":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShortLE()I

    move-result v2

    .line 500
    .local v2, "offset":I
    invoke-static {v2, p3}, Lio/netty/handler/codec/compression/Snappy;->validateOffset(II)V

    .line 502
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 503
    if-ge v2, v1, :cond_3

    .line 504
    div-int v3, v1, v2

    .line 505
    .local v3, "copies":I
    :goto_0
    if-lez v3, :cond_1

    .line 506
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 507
    invoke-virtual {p2, p2, v2}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 505
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 509
    :cond_1
    rem-int v4, v1, v2

    if-eqz v4, :cond_2

    .line 510
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 511
    rem-int v4, v1, v2

    invoke-virtual {p2, p2, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 513
    .end local v3    # "copies":I
    :cond_2
    goto :goto_1

    .line 514
    :cond_3
    sub-int v3, v0, v2

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 515
    invoke-virtual {p2, p2, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 517
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 519
    return v1
.end method

.method private static decodeCopyWith4ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "writtenSoFar"    # I

    .line 536
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 537
    const/4 v0, -0x1

    return v0

    .line 540
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 541
    .local v0, "initialIndex":I
    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x3f

    add-int/lit8 v1, v1, 0x1

    .line 542
    .local v1, "length":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result v2

    .line 544
    .local v2, "offset":I
    invoke-static {v2, p3}, Lio/netty/handler/codec/compression/Snappy;->validateOffset(II)V

    .line 546
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 547
    if-ge v2, v1, :cond_3

    .line 548
    div-int v3, v1, v2

    .line 549
    .local v3, "copies":I
    :goto_0
    if-lez v3, :cond_1

    .line 550
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 551
    invoke-virtual {p2, p2, v2}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 549
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 553
    :cond_1
    rem-int v4, v1, v2

    if-eqz v4, :cond_2

    .line 554
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 555
    rem-int v4, v1, v2

    invoke-virtual {p2, p2, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 557
    .end local v3    # "copies":I
    :cond_2
    goto :goto_1

    .line 558
    :cond_3
    sub-int v3, v0, v2

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 559
    invoke-virtual {p2, p2, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 561
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 563
    return v1
.end method

.method static decodeLiteral(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 3
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 393
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 395
    shr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x3f

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 421
    shr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x3f

    .local v0, "length":I
    goto :goto_0

    .line 415
    .end local v0    # "length":I
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 416
    return v1

    .line 418
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result v0

    .line 419
    .restart local v0    # "length":I
    goto :goto_0

    .line 409
    .end local v0    # "length":I
    :pswitch_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 410
    return v1

    .line 412
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedMediumLE()I

    move-result v0

    .line 413
    .restart local v0    # "length":I
    goto :goto_0

    .line 403
    .end local v0    # "length":I
    :pswitch_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 404
    return v1

    .line 406
    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShortLE()I

    move-result v0

    .line 407
    .restart local v0    # "length":I
    goto :goto_0

    .line 397
    .end local v0    # "length":I
    :pswitch_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    return v1

    .line 400
    :cond_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    .line 401
    .restart local v0    # "length":I
    nop

    .line 423
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 425
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-ge v2, v0, :cond_4

    .line 426
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 427
    return v1

    .line 430
    :cond_4
    invoke-virtual {p2, p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 431
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encodeCopy(Lio/netty/buffer/ByteBuf;II)V
    .locals 2
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 257
    :goto_0
    const/16 v0, 0x44

    const/16 v1, 0x40

    if-lt p2, v0, :cond_0

    .line 258
    invoke-static {p0, p1, v1}, Lio/netty/handler/codec/compression/Snappy;->encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V

    .line 259
    add-int/lit8 p2, p2, -0x40

    goto :goto_0

    .line 262
    :cond_0
    if-le p2, v1, :cond_1

    .line 263
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Lio/netty/handler/codec/compression/Snappy;->encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V

    .line 264
    add-int/lit8 p2, p2, -0x3c

    .line 267
    :cond_1
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/compression/Snappy;->encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V

    .line 268
    return-void
.end method

.method private static encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V
    .locals 2
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 239
    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    .line 240
    add-int/lit8 v0, p2, -0x4

    shl-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p1, 0x8

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 241
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 243
    :cond_0
    add-int/lit8 v0, p2, -0x1

    shl-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 244
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 245
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 247
    :goto_0
    return-void
.end method

.method static encodeLiteral(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V
    .locals 5
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 224
    const/16 v0, 0x3d

    if-ge p2, v0, :cond_0

    .line 225
    add-int/lit8 v0, p2, -0x1

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 227
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-static {v0}, Lio/netty/handler/codec/compression/Snappy;->bitsToEncode(I)I

    move-result v0

    .line 228
    .local v0, "bitLength":I
    div-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    .line 229
    .local v1, "bytesToEncode":I
    add-int/lit8 v2, v1, 0x3b

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 230
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 231
    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v4, v2, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "bitLength":I
    .end local v1    # "bytesToEncode":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1, p0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 236
    return-void
.end method

.method private static findMatchingLength(Lio/netty/buffer/ByteBuf;III)I
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "minIndex"    # I
    .param p2, "inIndex"    # I
    .param p3, "maxIndex"    # I

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "matched":I
    :goto_0
    add-int/lit8 v1, p3, -0x4

    if-gt p2, v1, :cond_0

    .line 183
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v1

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 184
    add-int/lit8 p2, p2, 0x4

    .line 185
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 188
    :cond_0
    :goto_1
    if-ge p2, p3, :cond_1

    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    if-ne v1, v2, :cond_1

    .line 189
    add-int/lit8 p2, p2, 0x1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    return v0
.end method

.method private static getHashTable(I)[S
    .locals 2
    .param p0, "inputSize"    # I

    .line 161
    const/16 v0, 0x100

    .line 162
    .local v0, "htSize":I
    :goto_0
    const/16 v1, 0x4000

    if-ge v0, v1, :cond_0

    if-ge v0, p0, :cond_0

    .line 163
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-array v1, v0, [S

    return-object v1
.end method

.method private static hash(Lio/netty/buffer/ByteBuf;II)I
    .locals 2
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "shift"    # I

    .line 151
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v0

    const v1, 0x1e35a7bd

    mul-int/2addr v0, v1

    ushr-int/2addr v0, p2

    return v0
.end method

.method static maskChecksum(J)I
    .locals 4
    .param p0, "checksum"    # J

    .line 659
    const/16 v0, 0xf

    shr-long v0, p0, v0

    const/16 v2, 0x11

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    const-wide/32 v2, -0x5d7d1528

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static readPreamble(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "length":I
    const/4 v1, 0x0

    .line 366
    .local v1, "byteIndex":I
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    .line 368
    .local v2, "current":I
    and-int/lit8 v3, v2, 0x7f

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "byteIndex":I
    .local v4, "byteIndex":I
    mul-int/lit8 v1, v1, 0x7

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    .line 369
    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_0

    .line 370
    return v0

    .line 373
    :cond_0
    const/4 v1, 0x4

    if-ge v4, v1, :cond_1

    .line 376
    .end local v2    # "current":I
    move v1, v4

    goto :goto_0

    .line 374
    .restart local v2    # "current":I
    :cond_1
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v3, "Preamble is greater than 4 bytes"

    invoke-direct {v1, v3}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    .end local v2    # "current":I
    .end local v4    # "byteIndex":I
    .restart local v1    # "byteIndex":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method static validateChecksum(ILio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "expectedChecksum"    # I
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;

    .line 626
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/Snappy;->validateChecksum(ILio/netty/buffer/ByteBuf;II)V

    .line 627
    return-void
.end method

.method static validateChecksum(ILio/netty/buffer/ByteBuf;II)V
    .locals 4
    .param p0, "expectedChecksum"    # I
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 639
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/compression/Snappy;->calculateChecksum(Lio/netty/buffer/ByteBuf;II)I

    move-result v0

    .line 640
    .local v0, "actualChecksum":I
    if-ne v0, p0, :cond_0

    .line 645
    return-void

    .line 641
    :cond_0
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mismatching checksum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 643
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validateOffset(II)V
    .locals 2
    .param p0, "offset"    # I
    .param p1, "chunkSizeSoFar"    # I

    .line 576
    if-eqz p0, :cond_2

    .line 580
    if-ltz p0, :cond_1

    .line 585
    if-gt p0, p1, :cond_0

    .line 588
    return-void

    .line 586
    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "Offset exceeds size of chunk"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_1
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "Offset is greater than maximum value supported by this implementation"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_2
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "Offset is less than minimum permissible value"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 271
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 272
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$1;->$SwitchMap$io$netty$handler$codec$compression$Snappy$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/Snappy$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 318
    :pswitch_0
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    and-int/lit8 v2, v0, 0x3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_2

    .line 340
    :pswitch_1
    iget v2, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    invoke-static {v0, p1, p2, v2}, Lio/netty/handler/codec/compression/Snappy;->decodeCopyWith4ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 341
    .local v0, "decodeWritten":I
    if-eq v0, v1, :cond_0

    .line 342
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 343
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto/16 :goto_2

    .line 346
    :cond_0
    return-void

    .line 330
    .end local v0    # "decodeWritten":I
    :pswitch_2
    iget v2, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    invoke-static {v0, p1, p2, v2}, Lio/netty/handler/codec/compression/Snappy;->decodeCopyWith2ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 331
    .restart local v0    # "decodeWritten":I
    if-eq v0, v1, :cond_1

    .line 332
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 333
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto :goto_2

    .line 336
    :cond_1
    return-void

    .line 320
    .end local v0    # "decodeWritten":I
    :pswitch_3
    iget v2, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    invoke-static {v0, p1, p2, v2}, Lio/netty/handler/codec/compression/Snappy;->decodeCopyWith1ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 321
    .restart local v0    # "decodeWritten":I
    if-eq v0, v1, :cond_2

    .line 322
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 323
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto :goto_2

    .line 326
    :cond_2
    return-void

    .line 307
    .end local v0    # "decodeWritten":I
    :pswitch_4
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    invoke-static {v0, p1, p2}, Lio/netty/handler/codec/compression/Snappy;->decodeLiteral(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 308
    .local v0, "literalWritten":I
    if-eq v0, v1, :cond_3

    .line 309
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 310
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto :goto_2

    .line 313
    :cond_3
    return-void

    .line 274
    .end local v0    # "literalWritten":I
    :pswitch_5
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_PREAMBLE:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 277
    :pswitch_6
    invoke-static {p1}, Lio/netty/handler/codec/compression/Snappy;->readPreamble(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 278
    .local v0, "uncompressedLength":I
    if-ne v0, v1, :cond_4

    .line 280
    return-void

    .line 282
    :cond_4
    if-nez v0, :cond_5

    .line 284
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READY:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 285
    return-void

    .line 287
    :cond_5
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 288
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 291
    .end local v0    # "uncompressedLength":I
    :pswitch_7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 292
    return-void

    .line 294
    :cond_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    iput-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    .line 295
    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 302
    :pswitch_8
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_COPY:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    goto :goto_1

    .line 297
    :pswitch_9
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_LITERAL:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 298
    nop

    .line 305
    :goto_1
    nop

    .line 348
    :goto_2
    goto/16 :goto_0

    .line 352
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public encode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V
    .locals 19
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 61
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 62
    .local v3, "i":I
    :goto_0
    mul-int/lit8 v4, v3, 0x7

    ushr-int v4, v2, v4

    .line 63
    .local v4, "b":I
    and-int/lit8 v5, v4, -0x80

    if-eqz v5, :cond_0

    .line 64
    and-int/lit8 v5, v4, 0x7f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 61
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .restart local v4    # "b":I
    :cond_0
    invoke-virtual {v1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 67
    nop

    .line 71
    .end local v3    # "i":I
    .end local v4    # "b":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 72
    .local v3, "inIndex":I
    move v4, v3

    .line 74
    .local v4, "baseIndex":I
    invoke-static/range {p3 .. p3}, Lio/netty/handler/codec/compression/Snappy;->getHashTable(I)[S

    move-result-object v5

    .line 75
    .local v5, "table":[S
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 77
    .local v6, "shift":I
    move v7, v3

    .line 79
    .local v7, "nextEmit":I
    sub-int v8, v2, v3

    const/16 v9, 0xf

    if-lt v8, v9, :cond_5

    .line 80
    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    move v9, v7

    .line 82
    .end local v7    # "nextEmit":I
    .local v8, "nextHash":I
    .local v9, "nextEmit":I
    :goto_1
    const/16 v7, 0x20

    .line 85
    .local v7, "skip":I
    move v10, v3

    .line 87
    .local v10, "nextIndex":I
    :goto_2
    move v3, v10

    .line 88
    move v11, v8

    .line 89
    .local v11, "hash":I
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "skip":I
    .local v12, "skip":I
    shr-int/lit8 v7, v7, 0x5

    .line 90
    .local v7, "bytesBetweenHashLookups":I
    add-int v10, v3, v7

    .line 93
    add-int/lit8 v13, v2, -0x4

    if-le v10, v13, :cond_1

    .line 94
    move v7, v9

    goto/16 :goto_4

    .line 97
    :cond_1
    invoke-static {v0, v10, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    .line 99
    aget-short v13, v5, v11

    add-int/2addr v13, v4

    .line 101
    .local v13, "candidate":I
    sub-int v14, v3, v4

    int-to-short v14, v14

    aput-short v14, v5, v11

    .line 103
    .end local v7    # "bytesBetweenHashLookups":I
    .end local v11    # "hash":I
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v13}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v11

    if-ne v7, v11, :cond_4

    .line 105
    sub-int v7, v3, v9

    invoke-static {v0, v1, v7}, Lio/netty/handler/codec/compression/Snappy;->encodeLiteral(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 109
    :goto_3
    move v7, v3

    .line 110
    .local v7, "base":I
    add-int/lit8 v11, v13, 0x4

    add-int/lit8 v14, v3, 0x4

    invoke-static {v0, v11, v14, v2}, Lio/netty/handler/codec/compression/Snappy;->findMatchingLength(Lio/netty/buffer/ByteBuf;III)I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    .line 111
    .local v11, "matched":I
    add-int/2addr v3, v11

    .line 112
    sub-int v14, v7, v13

    .line 113
    .local v14, "offset":I
    invoke-static {v1, v14, v11}, Lio/netty/handler/codec/compression/Snappy;->encodeCopy(Lio/netty/buffer/ByteBuf;II)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v15

    add-int/2addr v15, v11

    invoke-virtual {v0, v15}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 115
    add-int/lit8 v15, v3, -0x1

    .line 116
    .local v15, "insertTail":I
    move v9, v3

    .line 117
    move/from16 v16, v7

    .end local v7    # "base":I
    .local v16, "base":I
    add-int/lit8 v7, v2, -0x4

    if-lt v3, v7, :cond_2

    .line 118
    move v7, v9

    goto :goto_4

    .line 121
    :cond_2
    invoke-static {v0, v15, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v7

    .line 122
    .local v7, "prevHash":I
    sub-int v17, v3, v4

    move/from16 v18, v8

    .end local v8    # "nextHash":I
    .local v18, "nextHash":I
    add-int/lit8 v8, v17, -0x1

    int-to-short v8, v8

    aput-short v8, v5, v7

    .line 123
    add-int/lit8 v8, v15, 0x1

    invoke-static {v0, v8, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    .line 124
    .local v8, "currentHash":I
    aget-short v17, v5, v8

    add-int v13, v4, v17

    .line 125
    move/from16 v17, v7

    .end local v7    # "prevHash":I
    .local v17, "prevHash":I
    sub-int v7, v3, v4

    int-to-short v7, v7

    aput-short v7, v5, v8

    .line 127
    .end local v8    # "currentHash":I
    .end local v11    # "matched":I
    .end local v14    # "offset":I
    .end local v16    # "base":I
    .end local v17    # "prevHash":I
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v13}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 129
    add-int/lit8 v7, v15, 0x2

    invoke-static {v0, v7, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    .line 130
    .end local v18    # "nextHash":I
    .local v8, "nextHash":I
    nop

    .end local v10    # "nextIndex":I
    .end local v12    # "skip":I
    .end local v13    # "candidate":I
    .end local v15    # "insertTail":I
    add-int/lit8 v3, v3, 0x1

    .line 131
    goto/16 :goto_1

    .line 127
    .end local v8    # "nextHash":I
    .restart local v10    # "nextIndex":I
    .restart local v12    # "skip":I
    .restart local v13    # "candidate":I
    .restart local v15    # "insertTail":I
    .restart local v18    # "nextHash":I
    :cond_3
    move/from16 v8, v18

    goto :goto_3

    .line 103
    .end local v15    # "insertTail":I
    .end local v18    # "nextHash":I
    .restart local v8    # "nextHash":I
    :cond_4
    move/from16 v18, v8

    .end local v8    # "nextHash":I
    .restart local v18    # "nextHash":I
    move v7, v12

    goto/16 :goto_2

    .line 135
    .end local v9    # "nextEmit":I
    .end local v10    # "nextIndex":I
    .end local v12    # "skip":I
    .end local v13    # "candidate":I
    .end local v18    # "nextHash":I
    .local v7, "nextEmit":I
    :cond_5
    :goto_4
    if-ge v7, v2, :cond_6

    .line 136
    sub-int v8, v2, v7

    invoke-static {v0, v1, v8}, Lio/netty/handler/codec/compression/Snappy;->encodeLiteral(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 138
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 1

    .line 54
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READY:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 55
    const/4 v0, 0x0

    iput-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    .line 56
    iput v0, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    .line 57
    return-void
.end method
