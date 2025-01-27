.class public final Lio/netty/buffer/Unpooled;
.super Ljava/lang/Object;
.source "Unpooled.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOC:Lio/netty/buffer/ByteBufAllocator;

.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    nop

    .line 74
    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    sput-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    .line 79
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 84
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lio/netty/buffer/Unpooled;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 89
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 92
    instance-of v0, v0, Lio/netty/buffer/EmptyByteBuf;

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "EMPTY_BUFFER must be an EmptyByteBuf."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    return-void
.end method

.method public static buffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 100
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I

    .line 117
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "maxCapacity"    # I

    .line 136
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static compositeBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 345
    const/16 v0, 0x10

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 3
    .param p0, "maxNumComponents"    # I

    .line 352
    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    return-object v0
.end method

.method public static copiedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 408
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 409
    .local v0, "readable":I
    if-lez v0, :cond_0

    .line 410
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 411
    .local v1, "copy":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v1, p0, v2, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 412
    return-object v1

    .line 414
    .end local v1    # "copy":Lio/netty/buffer/ByteBuf;
    :cond_0
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 596
    const-string v0, "string"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    if-nez p2, :cond_0

    .line 598
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 601
    :cond_0
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 602
    move-object v0, p0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 603
    .local v0, "buf":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    nop

    .line 605
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    .line 606
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    .line 604
    invoke-static {v1, v2, p2, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer([CIILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 610
    :cond_1
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 611
    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 612
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 613
    invoke-static {v0, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 616
    .end local v0    # "buf":Ljava/nio/CharBuffer;
    :cond_2
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 579
    const-string v0, "string"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 581
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_0

    .line 582
    move-object v0, p0

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-static {v0, p1}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 585
    :cond_0
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 389
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 390
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 391
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 393
    :cond_0
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v1

    .line 396
    .local v1, "copy":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 397
    .local v2, "duplicate":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 398
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3
.end method

.method private static copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/CharBuffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 645
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "array"    # [B

    .line 361
    array-length v0, p0

    if-nez v0, :cond_0

    .line 362
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 364
    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 374
    if-nez p2, :cond_0

    .line 375
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 377
    :cond_0
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    .line 378
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method public static copiedBuffer([CIILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "array"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 637
    const-string v0, "array"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 638
    if-nez p2, :cond_0

    .line 639
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 641
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([CLjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 626
    const-string v0, "array"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lio/netty/buffer/Unpooled;->copiedBuffer([CIILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs copiedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 8
    .param p0, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 471
    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "order":Ljava/nio/ByteOrder;
    const/4 v2, 0x0

    .line 481
    .local v2, "length":I
    array-length v3, p0

    goto :goto_0

    .line 475
    .end local v0    # "order":Ljava/nio/ByteOrder;
    .end local v2    # "length":I
    :pswitch_0
    aget-object v0, p0, v1

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->copiedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 473
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 481
    .restart local v0    # "order":Ljava/nio/ByteOrder;
    .restart local v2    # "length":I
    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, p0, v1

    .line 482
    .local v4, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    .line 483
    .local v5, "bLen":I
    if-gtz v5, :cond_0

    .line 484
    goto :goto_1

    .line 486
    :cond_0
    const v6, 0x7fffffff

    sub-int/2addr v6, v2

    if-lt v6, v5, :cond_3

    .line 490
    add-int/2addr v2, v5

    .line 491
    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 493
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "inconsistent byte order"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_2
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 481
    .end local v4    # "b":Lio/netty/buffer/ByteBuf;
    .end local v5    # "bLen":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .restart local v4    # "b":Lio/netty/buffer/ByteBuf;
    .restart local v5    # "bLen":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The total length of the specified buffers is too big."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    .end local v4    # "b":Lio/netty/buffer/ByteBuf;
    .end local v5    # "bLen":I
    :cond_4
    if-nez v2, :cond_5

    .line 501
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 504
    :cond_5
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v1

    .line 505
    .local v1, "mergedArray":[B
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_6

    .line 506
    aget-object v5, p0, v3

    .line 507
    .local v5, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    .line 508
    .local v6, "bLen":I
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v7

    invoke-virtual {v5, v7, v1, v4, v6}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 509
    add-int/2addr v4, v6

    .line 505
    .end local v5    # "b":Lio/netty/buffer/ByteBuf;
    .end local v6    # "bLen":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 512
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_6
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs copiedBuffer([Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 526
    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "order":Ljava/nio/ByteOrder;
    const/4 v2, 0x0

    .line 536
    .local v2, "length":I
    array-length v3, p0

    goto :goto_0

    .line 530
    .end local v0    # "order":Ljava/nio/ByteOrder;
    .end local v2    # "length":I
    :pswitch_0
    aget-object v0, p0, v1

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 528
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 536
    .restart local v0    # "order":Ljava/nio/ByteOrder;
    .restart local v2    # "length":I
    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, p0, v1

    .line 537
    .local v4, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 538
    .local v5, "bLen":I
    if-gtz v5, :cond_0

    .line 539
    goto :goto_1

    .line 541
    :cond_0
    const v6, 0x7fffffff

    sub-int/2addr v6, v2

    if-lt v6, v5, :cond_3

    .line 545
    add-int/2addr v2, v5

    .line 546
    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 548
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "inconsistent byte order"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 536
    .end local v4    # "b":Ljava/nio/ByteBuffer;
    .end local v5    # "bLen":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .restart local v4    # "b":Ljava/nio/ByteBuffer;
    .restart local v5    # "bLen":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The total length of the specified buffers is too big."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    .end local v4    # "b":Ljava/nio/ByteBuffer;
    .end local v5    # "bLen":I
    :cond_4
    if-nez v2, :cond_5

    .line 556
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 559
    :cond_5
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v1

    .line 560
    .local v1, "mergedArray":[B
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_6

    .line 563
    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 564
    .local v5, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 565
    .local v6, "bLen":I
    invoke-virtual {v5, v1, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 566
    add-int/2addr v4, v6

    .line 560
    .end local v5    # "b":Ljava/nio/ByteBuffer;
    .end local v6    # "bLen":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 569
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_6
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs copiedBuffer([[B)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p0, "arrays"    # [[B

    .line 425
    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "length":I
    array-length v2, p0

    move v3, v1

    goto :goto_0

    .line 429
    .end local v0    # "length":I
    :pswitch_0
    aget-object v0, p0, v1

    array-length v0, v0

    if-nez v0, :cond_0

    .line 430
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 432
    :cond_0
    aget-object v0, p0, v1

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->copiedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 427
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 438
    .restart local v0    # "length":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 439
    .local v4, "a":[B
    const v5, 0x7fffffff

    sub-int/2addr v5, v0

    array-length v6, v4

    if-lt v5, v6, :cond_1

    .line 443
    array-length v5, v4

    add-int/2addr v0, v5

    .line 438
    .end local v4    # "a":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    .restart local v4    # "a":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The total length of the specified arrays is too big."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    .end local v4    # "a":[B
    :cond_2
    if-nez v0, :cond_3

    .line 447
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 450
    :cond_3
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v2

    .line 451
    .local v2, "mergedArray":[B
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_4

    .line 452
    aget-object v5, p0, v3

    .line 453
    .local v5, "a":[B
    array-length v6, v5

    invoke-static {v5, v1, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    array-length v6, v5

    add-int/2addr v4, v6

    .line 451
    .end local v5    # "a":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 457
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_4
    invoke-static {v2}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static copyBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "value"    # Z

    .line 776
    const/4 v0, 0x1

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 777
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    .line 778
    return-object v0
.end method

.method public static varargs copyBoolean([Z)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [Z

    .line 785
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 788
    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 789
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-boolean v3, p0, v2

    .line 790
    .local v3, "v":Z
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    .line 789
    .end local v3    # "v":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_1
    return-object v0

    .line 786
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static copyDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "value"    # D

    .line 822
    const/16 v0, 0x8

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 823
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0, p1}, Lio/netty/buffer/ByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    .line 824
    return-object v0
.end method

.method public static varargs copyDouble([D)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "values"    # [D

    .line 831
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 834
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 835
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    .line 836
    .local v3, "v":D
    invoke-virtual {v0, v3, v4}, Lio/netty/buffer/ByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    .line 835
    .end local v3    # "v":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 838
    :cond_1
    return-object v0

    .line 832
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static copyFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "value"    # F

    .line 799
    const/4 v0, 0x4

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 800
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    .line 801
    return-object v0
.end method

.method public static varargs copyFloat([F)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [F

    .line 808
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 812
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 813
    .local v3, "v":F
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    .line 812
    .end local v3    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    :cond_1
    return-object v0

    .line 809
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static copyInt(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "value"    # I

    .line 670
    const/4 v0, 0x4

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 671
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 672
    return-object v0
.end method

.method public static varargs copyInt([I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [I

    .line 679
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 682
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 683
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 684
    .local v3, "v":I
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 683
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    :cond_1
    return-object v0

    .line 680
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static copyLong(J)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "value"    # J

    .line 753
    const/16 v0, 0x8

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 754
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0, p1}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 755
    return-object v0
.end method

.method public static varargs copyLong([J)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "values"    # [J

    .line 762
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 765
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 766
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    .line 767
    .local v3, "v":J
    invoke-virtual {v0, v3, v4}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 766
    .end local v3    # "v":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    :cond_1
    return-object v0

    .line 763
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static copyMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "value"    # I

    .line 730
    const/4 v0, 0x3

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 731
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 732
    return-object v0
.end method

.method public static varargs copyMedium([I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [I

    .line 739
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 742
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 743
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 744
    .local v3, "v":I
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 743
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 746
    :cond_1
    return-object v0

    .line 740
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static copyShort(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "value"    # I

    .line 693
    const/4 v0, 0x2

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 694
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 695
    return-object v0
.end method

.method public static varargs copyShort([I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [I

    .line 716
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 719
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 720
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 721
    .local v3, "v":I
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 720
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 723
    :cond_1
    return-object v0

    .line 717
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static varargs copyShort([S)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [S

    .line 702
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 705
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 706
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-short v3, p0, v2

    .line 707
    .local v3, "v":I
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 706
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_1
    return-object v0

    .line 703
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static directBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 108
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static directBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I

    .line 126
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static directBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "maxCapacity"    # I

    .line 146
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 659
    .local v0, "endianness":Ljava/nio/ByteOrder;
    sget-object v1, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 660
    new-instance v1, Lio/netty/buffer/ReadOnlyByteBuf;

    invoke-direct {v1, p0}, Lio/netty/buffer/ReadOnlyByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v1

    .line 663
    :cond_0
    new-instance v2, Lio/netty/buffer/ReadOnlyByteBuf;

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/netty/buffer/ReadOnlyByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    sget-object v1, Lio/netty/buffer/Unpooled;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Lio/netty/buffer/ReadOnlyByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method public static varargs unmodifiableBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffers"    # [Lio/netty/buffer/ByteBuf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedUnmodifiableBuffer(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 845
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method static wrappedBuffer(ILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 11
    .param p0, "maxNumComponents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "TT;>;[TT;)",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .line 266
    .local p1, "wrapper":Lio/netty/buffer/CompositeByteBuf$ByteWrapper;, "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "len":I
    goto :goto_0

    .line 270
    .end local v0    # "i":I
    .end local v1    # "len":I
    :pswitch_0
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Lio/netty/buffer/CompositeByteBuf$ByteWrapper;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    aget-object v0, p2, v0

    invoke-interface {p1, v0}, Lio/netty/buffer/CompositeByteBuf$ByteWrapper;->wrap(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_1
    goto :goto_1

    .line 275
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 276
    aget-object v9, p2, v0

    .line 277
    .local v9, "bytes":Ljava/lang/Object;, "TT;"
    if-nez v9, :cond_0

    .line 278
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v2

    .line 280
    :cond_0
    invoke-interface {p1, v9}, Lio/netty/buffer/CompositeByteBuf$ByteWrapper;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    new-instance v10, Lio/netty/buffer/CompositeByteBuf;

    sget-object v3, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    const/4 v4, 0x0

    move-object v2, v10

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;I)V

    return-object v10

    .line 275
    .end local v9    # "bytes":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs wrappedBuffer(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 9
    .param p0, "maxNumComponents"    # I
    .param p1, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 308
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    goto :goto_0

    .line 312
    .end local v0    # "i":I
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 313
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    sget-object v1, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    .line 316
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 318
    goto :goto_1

    .line 310
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :pswitch_1
    goto :goto_1

    .line 320
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 321
    aget-object v7, p1, v0

    .line 322
    .local v7, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    new-instance v8, Lio/netty/buffer/CompositeByteBuf;

    sget-object v2, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    const/4 v3, 0x0

    move-object v1, v8

    move v4, p0

    move-object v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;I)V

    return-object v8

    .line 325
    :cond_1
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 320
    .end local v7    # "buf":Lio/netty/buffer/ByteBuf;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :cond_2
    :goto_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs wrappedBuffer(I[Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "maxNumComponents"    # I
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 338
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_BUFFER_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    invoke-static {p0, v0, p1}, Lio/netty/buffer/Unpooled;->wrappedBuffer(ILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer(I[[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "maxNumComponents"    # I
    .param p1, "arrays"    # [[B

    .line 295
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_ARRAY_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    invoke-static {p0, v0, p1}, Lio/netty/buffer/Unpooled;->wrappedBuffer(ILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static wrappedBuffer(JIZ)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p0, "memoryAddress"    # J
    .param p2, "size"    # I
    .param p3, "doFree"    # Z

    .line 216
    new-instance v6, Lio/netty/buffer/WrappedUnpooledUnsafeDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    move-object v0, v6

    move-wide v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/WrappedUnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;JIZ)V

    return-object v6
.end method

.method public static wrappedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 228
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 232
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 188
    invoke-static {v0, v1, v2}, Lio/netty/buffer/Unpooled;->wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 188
    return-object v0

    .line 192
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    new-instance v0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 197
    :cond_2
    new-instance v0, Lio/netty/buffer/ReadOnlyByteBufferBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 200
    :cond_3
    new-instance v0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V

    return-object v0

    .line 203
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    new-instance v0, Lio/netty/buffer/ReadOnlyByteBufferBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 206
    :cond_5
    new-instance v0, Lio/netty/buffer/UnpooledDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static wrappedBuffer([B)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "array"    # [B

    .line 155
    array-length v0, p0

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledHeapByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    array-length v2, p0

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BI)V

    return-object v0
.end method

.method public static wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 167
    if-nez p2, :cond_0

    .line 168
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 171
    :cond_0
    if-nez p1, :cond_1

    array-length v0, p0

    if-ne p2, v0, :cond_1

    .line 172
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 175
    :cond_1
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 253
    array-length v0, p0

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 262
    array-length v0, p0

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(I[Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "arrays"    # [[B

    .line 242
    array-length v0, p0

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(I[[B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method private static varargs wrappedUnmodifiableBuffer(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "copy"    # Z
    .param p1, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 870
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 876
    if-eqz p0, :cond_0

    .line 877
    array-length v0, p1

    const-class v1, [Lio/netty/buffer/ByteBuf;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 874
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 872
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 879
    :cond_0
    :goto_0
    new-instance v0, Lio/netty/buffer/FixedCompositeByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p1}, Lio/netty/buffer/FixedCompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[Lio/netty/buffer/ByteBuf;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs wrappedUnmodifiableBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 866
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedUnmodifiableBuffer(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
