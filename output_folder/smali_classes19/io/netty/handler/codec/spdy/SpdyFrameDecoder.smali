.class public Lio/netty/handler/codec/spdy/SpdyFrameDecoder;
.super Ljava/lang/Object;
.source "SpdyFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    }
.end annotation


# instance fields
.field private final delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

.field private flags:B

.field private length:I

.field private final maxChunkSize:I

.field private numSettings:I

.field private final spdyVersion:I

.field private state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field private streamId:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;)V
    .locals 1
    .param p1, "spdyVersion"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "delegate"    # Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    .line 87
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;I)V
    .locals 1
    .param p1, "spdyVersion"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "delegate"    # Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;
    .param p3, "maxChunkSize"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "spdyVersion"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdyVersion;->getVersion()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    .line 95
    const-string v0, "delegate"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    .line 96
    const-string v0, "maxChunkSize"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    .line 97
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 98
    return-void
.end method

.method private static getNextState(II)Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    .locals 1
    .param p0, "type"    # I
    .param p1, "length"    # I

    .line 387
    packed-switch p0, :pswitch_data_0

    .line 416
    :pswitch_0
    if-eqz p1, :cond_0

    .line 417
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->DISCARD_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 413
    :pswitch_1
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_WINDOW_UPDATE_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 410
    :pswitch_2
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADERS_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 407
    :pswitch_3
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_GOAWAY_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 404
    :pswitch_4
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_PING_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 401
    :pswitch_5
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTINGS_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 398
    :pswitch_6
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_RST_STREAM_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 395
    :pswitch_7
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SYN_REPLY_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 392
    :pswitch_8
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SYN_STREAM_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 389
    :pswitch_9
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 419
    :cond_0
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static hasFlag(BB)Z
    .locals 1
    .param p0, "flags"    # B
    .param p1, "flag"    # B

    .line 383
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidFrameHeader(IIBI)Z
    .locals 4
    .param p0, "streamId"    # I
    .param p1, "type"    # I
    .param p2, "flags"    # B
    .param p3, "length"    # I

    .line 425
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 454
    :pswitch_0
    return v3

    .line 451
    :pswitch_1
    if-ne p3, v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 448
    :pswitch_2
    if-lt p3, v1, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 445
    :pswitch_3
    if-ne p3, v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 442
    :pswitch_4
    if-ne p3, v1, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 439
    :pswitch_5
    if-lt p3, v1, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 436
    :pswitch_6
    if-nez p2, :cond_5

    if-ne p3, v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    .line 433
    :pswitch_7
    if-lt p3, v1, :cond_6

    move v2, v3

    :cond_6
    return v2

    .line 430
    :pswitch_8
    const/16 v0, 0xa

    if-lt p3, v0, :cond_7

    move v2, v3

    :cond_7
    return v2

    .line 427
    :pswitch_9
    if-eqz p0, :cond_8

    move v2, v3

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public decode(Lio/netty/buffer/ByteBuf;)V
    .locals 12
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 105
    :goto_0
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$1;->$SwitchMap$io$netty$handler$codec$spdy$SpdyFrameDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x4

    packed-switch v0, :pswitch_data_0

    .line 377
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 374
    return-void

    .line 363
    :pswitch_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 364
    .local v0, "numBytes":I
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 365
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 366
    if-nez v1, :cond_0

    .line 367
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 368
    goto :goto_0

    .line 370
    :cond_0
    return-void

    .line 344
    .end local v0    # "numBytes":I
    :pswitch_2
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_1

    .line 345
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 346
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readHeaderBlockEnd()V

    .line 347
    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    return-void

    .line 354
    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 355
    .local v0, "compressedBytes":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 356
    .local v1, "headerBlock":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1, p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 357
    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 359
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v2, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readHeaderBlock(Lio/netty/buffer/ByteBuf;)V

    .line 360
    goto :goto_0

    .line 326
    .end local v0    # "compressedBytes":I
    .end local v1    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :pswitch_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 327
    return-void

    .line 330
    :cond_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    .line 331
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 332
    .local v0, "deltaWindowSize":I
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 334
    if-nez v0, :cond_4

    .line 335
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 336
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v2, "Invalid WINDOW_UPDATE Frame"

    invoke-interface {v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_4
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 339
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-interface {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readWindowUpdateFrame(II)V

    .line 341
    goto/16 :goto_0

    .line 306
    .end local v0    # "deltaWindowSize":I
    :pswitch_4
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 307
    return-void

    .line 310
    :cond_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    .line 311
    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    .line 313
    .local v0, "last":Z
    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 314
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 316
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-nez v1, :cond_6

    .line 317
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 318
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v2, "Invalid HEADERS Frame"

    invoke-interface {v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_6
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 321
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-interface {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readHeadersFrame(IZ)V

    .line 323
    goto/16 :goto_0

    .line 293
    .end local v0    # "last":Z
    :pswitch_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_7

    .line 294
    return-void

    .line 297
    :cond_7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 298
    .local v0, "lastGoodStreamId":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {p1, v1}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    .line 299
    .local v1, "statusCode":I
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 301
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 302
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v2, v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readGoAwayFrame(II)V

    .line 303
    goto/16 :goto_0

    .line 281
    .end local v0    # "lastGoodStreamId":I
    .end local v1    # "statusCode":I
    :pswitch_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_8

    .line 282
    return-void

    .line 285
    :cond_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 286
    .local v0, "pingId":I
    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 288
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 289
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readPingFrame(I)V

    .line 290
    goto/16 :goto_0

    .line 258
    .end local v0    # "pingId":I
    :pswitch_7
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    if-nez v0, :cond_9

    .line 259
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 260
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSettingsEnd()V

    .line 261
    goto/16 :goto_0

    .line 264
    :cond_9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_a

    .line 265
    return-void

    .line 268
    :cond_a
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    .line 269
    .local v0, "settingsFlags":B
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lio/netty/buffer/ByteBuf;I)I

    move-result v2

    .line 270
    .local v2, "id":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {p1, v6}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v5

    .line 271
    .local v5, "value":I
    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v6

    .line 272
    .local v6, "persistValue":Z
    invoke-static {v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v1

    .line 273
    .local v1, "persisted":Z
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 275
    iget v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    sub-int/2addr v4, v3

    iput v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    .line 277
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v3, v2, v5, v6, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSetting(IIZZ)V

    .line 278
    goto/16 :goto_0

    .line 237
    .end local v0    # "settingsFlags":B
    .end local v1    # "persisted":Z
    .end local v2    # "id":I
    .end local v5    # "value":I
    .end local v6    # "persistValue":Z
    :pswitch_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_b

    .line 238
    return-void

    .line 241
    :cond_b
    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    .line 243
    .local v0, "clear":Z
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-static {p1, v1}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    .line 244
    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 245
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 248
    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_d

    shr-int/lit8 v1, v1, 0x3

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    if-eq v1, v2, :cond_c

    goto :goto_1

    .line 252
    :cond_c
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTING:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 253
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSettingsFrame(Z)V

    .line 255
    goto/16 :goto_0

    .line 249
    :cond_d
    :goto_1
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 250
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v2, "Invalid SETTINGS Frame"

    invoke-interface {v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "clear":Z
    :pswitch_9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_e

    .line 220
    return-void

    .line 223
    :cond_e
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    .line 224
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 225
    .local v0, "statusCode":I
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 227
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-eqz v1, :cond_10

    if-nez v0, :cond_f

    goto :goto_2

    .line 231
    :cond_f
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 232
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-interface {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readRstStreamFrame(II)V

    .line 234
    goto/16 :goto_0

    .line 228
    :cond_10
    :goto_2
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 229
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v2, "Invalid RST_STREAM Frame"

    invoke-interface {v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "statusCode":I
    :pswitch_a
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_11

    .line 200
    return-void

    .line 203
    :cond_11
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    .line 204
    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    .line 206
    .local v0, "last":Z
    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 207
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 209
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-nez v1, :cond_12

    .line 210
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 211
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v2, "Invalid SYN_REPLY Frame"

    invoke-interface {v1, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_12
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 214
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-interface {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSynReplyFrame(IZ)V

    .line 216
    goto/16 :goto_0

    .line 176
    .end local v0    # "last":Z
    :pswitch_b
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_13

    .line 177
    return-void

    .line 180
    :cond_13
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 181
    .local v0, "offset":I
    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    iput v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    .line 182
    add-int/lit8 v4, v0, 0x4

    invoke-static {p1, v4}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    .line 183
    .local v4, "associatedToStreamId":I
    add-int/lit8 v5, v0, 0x8

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x7

    int-to-byte v11, v5

    .line 184
    .local v11, "priority":B
    iget-byte v5, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v5, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v3

    .line 185
    .local v3, "last":Z
    iget-byte v5, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v5, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v1

    .line 186
    .local v1, "unidirectional":Z
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 187
    iget v5, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v5, v2

    iput v5, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 189
    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-nez v2, :cond_14

    .line 190
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 191
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v5, "Invalid SYN_STREAM Frame"

    invoke-interface {v2, v5}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_14
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 194
    iget-object v5, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v6, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    move v7, v4

    move v8, v11

    move v9, v3

    move v10, v1

    invoke-interface/range {v5 .. v10}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSynStreamFrame(IIBZZ)V

    .line 196
    goto/16 :goto_0

    .line 148
    .end local v0    # "offset":I
    .end local v1    # "unidirectional":Z
    .end local v3    # "last":Z
    .end local v4    # "associatedToStreamId":I
    .end local v11    # "priority":B
    :pswitch_c
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_15

    .line 149
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 150
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    iget-byte v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v4, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v3

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readDataFrame(IZLio/netty/buffer/ByteBuf;)V

    .line 151
    goto/16 :goto_0

    .line 155
    :cond_15
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 158
    .local v0, "dataLength":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_16

    .line 159
    return-void

    .line 162
    :cond_16
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 163
    .local v1, "data":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1, p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 164
    iget v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v4, v0

    iput v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 166
    if-nez v4, :cond_17

    .line 167
    sget-object v4, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 170
    :cond_17
    iget v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v4, :cond_18

    iget-byte v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v4, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v4

    if-eqz v4, :cond_18

    move v2, v3

    .line 172
    .local v2, "last":Z
    :cond_18
    iget-object v3, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-interface {v3, v4, v2, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readDataFrame(IZLio/netty/buffer/ByteBuf;)V

    .line 173
    goto/16 :goto_0

    .line 107
    .end local v0    # "dataLength":I
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    .end local v2    # "last":Z
    :pswitch_d
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_19

    .line 108
    return-void

    .line 111
    :cond_19
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 112
    .local v0, "frameOffset":I
    add-int/lit8 v1, v0, 0x4

    .line 113
    .local v1, "flagsOffset":I
    add-int/lit8 v5, v0, 0x5

    .line 114
    .local v5, "lengthOffset":I
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 116
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1a

    goto :goto_3

    :cond_1a
    move v3, v2

    .line 120
    .local v3, "control":Z
    :goto_3
    if-eqz v3, :cond_1b

    .line 122
    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lio/netty/buffer/ByteBuf;I)I

    move-result v4

    and-int/lit16 v4, v4, 0x7fff

    .line 123
    .local v4, "version":I
    add-int/lit8 v6, v0, 0x2

    invoke-static {p1, v6}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lio/netty/buffer/ByteBuf;I)I

    move-result v6

    .line 124
    .local v6, "type":I
    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    goto :goto_4

    .line 127
    .end local v4    # "version":I
    .end local v6    # "type":I
    :cond_1b
    iget v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    .line 128
    .restart local v4    # "version":I
    const/4 v6, 0x0

    .line 129
    .restart local v6    # "type":I
    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v2

    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    .line 132
    :goto_4
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    iput-byte v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    .line 133
    invoke-static {p1, v5}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lio/netty/buffer/ByteBuf;I)I

    move-result v2

    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 136
    iget v7, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    if-eq v4, v7, :cond_1c

    .line 137
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 138
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v7, "Invalid SPDY Version"

    invoke-interface {v2, v7}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_1c
    iget v7, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    iget-byte v8, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v7, v6, v8, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->isValidFrameHeader(IIBI)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 140
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 141
    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v7, "Invalid Frame Error"

    invoke-interface {v2, v7}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_1d
    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v6, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->getNextState(II)Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 145
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
