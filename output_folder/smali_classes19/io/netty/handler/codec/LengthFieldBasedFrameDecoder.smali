.class public Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "LengthFieldBasedFrameDecoder.java"


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesToDiscard:J

.field private discardingTooLongFrame:Z

.field private final failFast:Z

.field private final initialBytesToStrip:I

.field private final lengthAdjustment:I

.field private final lengthFieldEndOffset:I

.field private final lengthFieldLength:I

.field private final lengthFieldOffset:I

.field private final maxFrameLength:I

.field private tooLongFrameLength:J


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I

    .line 216
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 217
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I
    .param p4, "lengthAdjustment"    # I
    .param p5, "initialBytesToStrip"    # I

    .line 239
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;-><init>(IIIIIZ)V

    .line 243
    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 8
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I
    .param p4, "lengthAdjustment"    # I
    .param p5, "initialBytesToStrip"    # I
    .param p6, "failFast"    # Z

    .line 271
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;-><init>(Ljava/nio/ByteOrder;IIIIIZ)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;IIIIIZ)V
    .locals 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .param p2, "maxFrameLength"    # I
    .param p3, "lengthFieldOffset"    # I
    .param p4, "lengthFieldLength"    # I
    .param p5, "lengthAdjustment"    # I
    .param p6, "initialBytesToStrip"    # I
    .param p7, "failFast"    # Z

    .line 303
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 305
    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteOrder;

    iput-object v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->byteOrder:Ljava/nio/ByteOrder;

    .line 307
    const-string v0, "maxFrameLength"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 309
    const-string v0, "lengthFieldOffset"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 311
    const-string v0, "initialBytesToStrip"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 313
    sub-int v0, p2, p4

    if-gt p3, v0, :cond_0

    .line 321
    iput p2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    .line 322
    iput p3, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    .line 323
    iput p4, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    .line 324
    iput p5, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    .line 325
    add-int v0, p3, p4

    iput v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    .line 326
    iput p6, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    .line 327
    iput-boolean p7, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failFast:Z

    .line 328
    return-void

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFrameLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be equal to or greater than lengthFieldOffset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") + lengthFieldLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private discardingTooLongFrame(Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;

    .line 339
    iget-wide v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 340
    .local v0, "bytesToDiscard":J
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 341
    .local v2, "localBytesToDiscard":I
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 342
    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 343
    iput-wide v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 345
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failIfNecessary(Z)V

    .line 346
    return-void
.end method

.method private exceededFrameLength(Lio/netty/buffer/ByteBuf;J)V
    .locals 4
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "frameLength"    # J

    .line 364
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p2, v0

    .line 365
    .local v0, "discard":J
    iput-wide p2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 367
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_0

    .line 369
    long-to-int v2, p2

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 372
    :cond_0
    iput-boolean v3, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 373
    iput-wide v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 374
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 376
    :goto_0
    invoke-direct {p0, v3}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failIfNecessary(Z)V

    .line 377
    return-void
.end method

.method private fail(J)V
    .locals 3
    .param p1, "frameLength"    # J

    .line 502
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-string v1, "Adjusted frame length exceeds "

    if-lez v0, :cond_0

    .line 503
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - discarded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - discarding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private failIfNecessary(Z)V
    .locals 4
    .param p1, "firstDetectionOfTooLongFrame"    # Z

    .line 477
    iget-wide v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 480
    iget-wide v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 481
    .local v0, "tooLongFrameLength":J
    iput-wide v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 482
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 483
    iget-boolean v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 484
    :cond_0
    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->fail(J)V

    .line 486
    .end local v0    # "tooLongFrameLength":J
    :cond_1
    goto :goto_0

    .line 488
    :cond_2
    iget-boolean v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 489
    iget-wide v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->fail(J)V

    .line 492
    :cond_3
    :goto_0
    return-void
.end method

.method private static failOnFrameLengthLessThanInitialBytesToStrip(Lio/netty/buffer/ByteBuf;JI)V
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "frameLength"    # J
    .param p3, "initialBytesToStrip"    # I

    .line 382
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 383
    new-instance v0, Lio/netty/handler/codec/CorruptedFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted frame length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is less than initialBytesToStrip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static failOnFrameLengthLessThanLengthFieldEndOffset(Lio/netty/buffer/ByteBuf;JI)V
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "frameLength"    # J
    .param p3, "lengthFieldEndOffset"    # I

    .line 357
    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 358
    new-instance v0, Lio/netty/handler/codec/CorruptedFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted frame length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is less than lengthFieldEndOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static failOnNegativeLengthField(Lio/netty/buffer/ByteBuf;JI)V
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "frameLength"    # J
    .param p3, "lengthFieldEndOffset"    # I

    .line 349
    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 350
    new-instance v0, Lio/netty/handler/codec/CorruptedFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative pre-adjustment length field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0, p2}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->discardingTooLongFrame(Lio/netty/buffer/ByteBuf;)V

    .line 401
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 402
    return-object v2

    .line 405
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    add-int/2addr v0, v1

    .line 406
    .local v0, "actualLengthFieldOffset":I
    iget v1, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    iget-object v3, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p2, v0, v1, v3}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->getUnadjustedFrameLength(Lio/netty/buffer/ByteBuf;IILjava/nio/ByteOrder;)J

    move-result-wide v3

    .line 408
    .local v3, "frameLength":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 409
    iget v1, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    invoke-static {p2, v3, v4, v1}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failOnNegativeLengthField(Lio/netty/buffer/ByteBuf;JI)V

    .line 412
    :cond_2
    iget v1, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    iget v5, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    add-int/2addr v1, v5

    int-to-long v6, v1

    add-long/2addr v3, v6

    .line 414
    int-to-long v6, v5

    cmp-long v1, v3, v6

    if-gez v1, :cond_3

    .line 415
    invoke-static {p2, v3, v4, v5}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failOnFrameLengthLessThanLengthFieldEndOffset(Lio/netty/buffer/ByteBuf;JI)V

    .line 418
    :cond_3
    iget v1, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 419
    invoke-direct {p0, p2, v3, v4}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->exceededFrameLength(Lio/netty/buffer/ByteBuf;J)V

    .line 420
    return-object v2

    .line 424
    :cond_4
    long-to-int v1, v3

    .line 425
    .local v1, "frameLengthInt":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-ge v5, v1, :cond_5

    .line 426
    return-object v2

    .line 429
    :cond_5
    iget v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    if-le v2, v1, :cond_6

    .line 430
    invoke-static {p2, v3, v4, v2}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->failOnFrameLengthLessThanInitialBytesToStrip(Lio/netty/buffer/ByteBuf;JI)V

    .line 432
    :cond_6
    iget v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 435
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    .line 436
    .local v2, "readerIndex":I
    iget v5, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    sub-int v5, v1, v5

    .line 437
    .local v5, "actualFrameLength":I
    invoke-virtual {p0, p1, p2, v2, v5}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->extractFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 438
    .local v6, "frame":Lio/netty/buffer/ByteBuf;
    add-int v7, v2, v5

    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 439
    return-object v6
.end method

.method protected final decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, "decoded":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 334
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    return-void
.end method

.method protected extractFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p3, "index"    # I
    .param p4, "length"    # I

    .line 498
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected getUnadjustedFrameLength(Lio/netty/buffer/ByteBuf;IILjava/nio/ByteOrder;)J
    .locals 3
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .line 451
    invoke-virtual {p1, p4}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 453
    packed-switch p3, :pswitch_data_0

    .line 470
    :pswitch_0
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported lengthFieldLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1, 2, 3, 4, or 8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :pswitch_1
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    .line 468
    .local v0, "frameLength":J
    goto :goto_0

    .line 464
    .end local v0    # "frameLength":J
    :pswitch_2
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v0

    .line 465
    .restart local v0    # "frameLength":J
    goto :goto_0

    .line 461
    .end local v0    # "frameLength":J
    :pswitch_3
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v0

    int-to-long v0, v0

    .line 462
    .restart local v0    # "frameLength":J
    goto :goto_0

    .line 458
    .end local v0    # "frameLength":J
    :pswitch_4
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v0

    int-to-long v0, v0

    .line 459
    .restart local v0    # "frameLength":J
    goto :goto_0

    .line 455
    .end local v0    # "frameLength":J
    :pswitch_5
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v0

    int-to-long v0, v0

    .line 456
    .restart local v0    # "frameLength":J
    nop

    .line 473
    :goto_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
