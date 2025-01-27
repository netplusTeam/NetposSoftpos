.class public abstract Lio/netty/handler/codec/ByteToMessageDecoder;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "ByteToMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;
    }
.end annotation


# static fields
.field public static final COMPOSITE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

.field public static final MERGE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

.field private static final STATE_CALLING_CHILD_DECODE:B = 0x1t

.field private static final STATE_HANDLER_REMOVED_PENDING:B = 0x2t

.field private static final STATE_INIT:B


# instance fields
.field cumulation:Lio/netty/buffer/ByteBuf;

.field private cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

.field private decodeState:B

.field private discardAfterReads:I

.field private firedChannelRead:Z

.field private first:Z

.field private numReads:I

.field private singleDecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lio/netty/handler/codec/ByteToMessageDecoder$1;

    invoke-direct {v0}, Lio/netty/handler/codec/ByteToMessageDecoder$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/ByteToMessageDecoder;->MERGE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    .line 115
    new-instance v0, Lio/netty/handler/codec/ByteToMessageDecoder$2;

    invoke-direct {v0}, Lio/netty/handler/codec/ByteToMessageDecoder$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/ByteToMessageDecoder;->COMPOSITE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 155
    sget-object v0, Lio/netty/handler/codec/ByteToMessageDecoder;->MERGE_CUMULATOR:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    .line 173
    const/4 v0, 0x0

    iput-byte v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    .line 174
    const/16 v0, 0x10

    iput v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->discardAfterReads:I

    .line 178
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->ensureNotSharable()V

    .line 179
    return-void
.end method

.method private channelInputClosed(Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "callChannelInactive"    # Z

    .line 366
    invoke-static {}, Lio/netty/handler/codec/CodecOutputList;->newInstance()Lio/netty/handler/codec/CodecOutputList;

    move-result-object v0

    .line 368
    .local v0, "out":Lio/netty/handler/codec/CodecOutputList;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInputClosed(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;)V
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 375
    :try_start_1
    iget-object v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 377
    iput-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 379
    :cond_0
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v1

    .line 380
    .local v1, "size":I
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;I)V

    .line 381
    if-lez v1, :cond_1

    .line 383
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 385
    :cond_1
    if-eqz p2, :cond_2

    .line 386
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    .end local v1    # "size":I
    :cond_2
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 391
    nop

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 391
    throw v1

    .line 374
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 371
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v3, v2}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "callChannelInactive":Z
    throw v3

    .line 369
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "callChannelInactive":Z
    :catch_1
    move-exception v2

    .line 370
    .local v2, "e":Lio/netty/handler/codec/DecoderException;
    nop

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "callChannelInactive":Z
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    .end local v2    # "e":Lio/netty/handler/codec/DecoderException;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "callChannelInactive":Z
    :goto_0
    :try_start_3
    iget-object v3, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v3, :cond_3

    .line 376
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 377
    iput-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 379
    :cond_3
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v1

    .line 380
    .restart local v1    # "size":I
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;I)V

    .line 381
    if-lez v1, :cond_4

    .line 383
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 385
    :cond_4
    if-eqz p2, :cond_5

    .line 386
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 390
    .end local v1    # "size":I
    :cond_5
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 391
    nop

    .line 392
    throw v2

    .line 390
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 391
    throw v1
.end method

.method static expandCumulation(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "oldCumulation"    # Lio/netty/buffer/ByteBuf;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;

    .line 526
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 527
    .local v0, "oldBytes":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 528
    .local v1, "newBytes":I
    add-int v2, v0, v1

    .line 529
    .local v2, "totalBytes":I
    const v3, 0x7fffffff

    invoke-interface {p0, v2, v3}, Lio/netty/buffer/ByteBufAllocator;->calculateNewCapacity(II)I

    move-result v3

    invoke-interface {p0, v3}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 530
    .local v3, "newCumulation":Lio/netty/buffer/ByteBuf;
    move-object v4, v3

    .line 533
    .local v4, "toRelease":Lio/netty/buffer/ByteBuf;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v3, v5, p1, v6, v0}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 534
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v5, v0, p2, v6, v1}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 535
    invoke-virtual {v5, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 536
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    move-object v4, p1

    .line 538
    nop

    .line 540
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 538
    return-object v3

    .line 540
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 541
    throw v5
.end method

.method static fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;I)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "msgs"    # Lio/netty/handler/codec/CodecOutputList;
    .param p2, "numElements"    # I

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 321
    invoke-virtual {p1, v0}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;I)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "numElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 307
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p1, Lio/netty/handler/codec/CodecOutputList;

    if-eqz v0, :cond_0

    .line 308
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/CodecOutputList;

    invoke-static {p0, v0, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;I)V

    goto :goto_1

    .line 310
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 311
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected actualReadableBytes()I
    .locals 1

    .line 224
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->internalBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0
.end method

.method protected callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 5
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

    .line 418
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 421
    .local v0, "outSize":I
    if-lez v0, :cond_2

    .line 422
    invoke-static {p1, p3, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;I)V

    .line 423
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 430
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    goto :goto_1

    .line 433
    :cond_1
    const/4 v0, 0x0

    .line 436
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 437
    .local v1, "oldInputLength":I
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeRemovalReentryProtection(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 443
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 444
    goto :goto_1

    .line 447
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 448
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 449
    goto :goto_1

    .line 455
    :cond_4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 461
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->isSingleDecode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 462
    goto :goto_1

    .line 464
    .end local v0    # "outSize":I
    .end local v1    # "oldInputLength":I
    :cond_5
    goto :goto_0

    .line 456
    .restart local v0    # "outSize":I
    .restart local v1    # "oldInputLength":I
    :cond_6
    new-instance v2, Lio/netty/handler/codec/DecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".decode() did not read anything but decoded a message."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v2
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v0    # "outSize":I
    .end local v1    # "oldInputLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    :goto_1
    nop

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 465
    .end local v0    # "cause":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 466
    .local v0, "e":Lio/netty/handler/codec/DecoderException;
    throw v0
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInputClosed(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 352
    return-void
.end method

.method channelInputClosed(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
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

    .line 400
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 402
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    goto :goto_0

    .line 404
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 406
    :goto_0
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_7

    .line 271
    invoke-static {}, Lio/netty/handler/codec/CodecOutputList;->newInstance()Lio/netty/handler/codec/CodecOutputList;

    move-result-object v0

    .line 273
    .local v0, "out":Lio/netty/handler/codec/CodecOutputList;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->first:Z

    .line 274
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    iget-boolean v6, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->first:Z

    if-eqz v6, :cond_1

    sget-object v6, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    :goto_1
    move-object v7, p2

    check-cast v7, Lio/netty/buffer/ByteBuf;

    invoke-interface {v4, v5, v6, v7}, Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;->cumulate(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 276
    invoke-virtual {p0, p1, v4, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 283
    iput v3, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    .line 284
    iget-object v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 285
    iput-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    goto :goto_2

    .line 286
    :cond_2
    iget v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    iget v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->discardAfterReads:I

    if-lt v1, v2, :cond_3

    .line 289
    iput v3, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    .line 290
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->discardSomeReadBytes()V

    .line 293
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v1

    .line 294
    .local v1, "size":I
    iget-boolean v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->firedChannelRead:Z

    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->firedChannelRead:Z

    .line 295
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;I)V

    .line 296
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 297
    .end local v1    # "size":I
    nop

    .line 298
    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    goto :goto_6

    .line 282
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 279
    :catch_0
    move-exception v4

    .line 280
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v5, v4}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    throw v5

    .line 277
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 278
    .local v4, "e":Lio/netty/handler/codec/DecoderException;
    nop

    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v4    # "e":Lio/netty/handler/codec/DecoderException;
    .restart local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    :goto_3
    iget-object v5, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 283
    :cond_4
    iput v3, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    .line 284
    iget-object v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 285
    iput-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    goto :goto_5

    .line 286
    :cond_5
    :goto_4
    iget v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    iget v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->discardAfterReads:I

    if-lt v1, v2, :cond_6

    .line 289
    iput v3, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    .line 290
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->discardSomeReadBytes()V

    .line 293
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v1

    .line 294
    .restart local v1    # "size":I
    iget-boolean v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->firedChannelRead:Z

    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->insertSinceRecycled()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->firedChannelRead:Z

    .line 295
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;I)V

    .line 296
    invoke-virtual {v0}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    .line 297
    .end local v1    # "size":I
    throw v4

    .line 299
    .end local v0    # "out":Lio/netty/handler/codec/CodecOutputList;
    :cond_7
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 301
    :goto_6
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    .line 328
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->discardSomeReadBytes()V

    .line 329
    iget-boolean v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->firedChannelRead:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 332
    :cond_0
    iput-boolean v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->firedChannelRead:Z

    .line 333
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 334
    return-void
.end method

.method protected abstract decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
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
.end method

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
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

    .line 518
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeRemovalReentryProtection(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 523
    :cond_0
    return-void
.end method

.method final decodeRemovalReentryProtection(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 5
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

    .line 496
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    iput-byte v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    .line 498
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iget-byte v3, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 501
    .local v0, "removePending":Z
    :goto_0
    iput-byte v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    .line 502
    if-eqz v0, :cond_1

    .line 503
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p3, v1}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;I)V

    .line 504
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 505
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 507
    .end local v0    # "removePending":Z
    :cond_1
    nop

    .line 508
    return-void

    .line 500
    :catchall_0
    move-exception v3

    iget-byte v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 501
    .restart local v0    # "removePending":Z
    :goto_1
    iput-byte v2, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    .line 502
    if-eqz v0, :cond_3

    .line 503
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p3, v1}, Lio/netty/handler/codec/ByteToMessageDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;I)V

    .line 504
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 505
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 507
    .end local v0    # "removePending":Z
    :cond_3
    throw v3
.end method

.method protected final discardSomeReadBytes()V
    .locals 2

    .line 337
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->first:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->discardSomeReadBytes()Lio/netty/buffer/ByteBuf;

    .line 347
    :cond_0
    return-void
.end method

.method public final handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-byte v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v0, 0x2

    iput-byte v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeState:B

    .line 244
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 247
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_2

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 250
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->numReads:I

    .line 251
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 252
    .local v1, "readable":I
    if-lez v1, :cond_1

    .line 253
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 254
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 259
    .end local v1    # "readable":I
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 260
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    return-void
.end method

.method protected internalBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 234
    return-object v0

    .line 236
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public isSingleDecode()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->singleDecode:Z

    return v0
.end method

.method public setCumulator(Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;)V
    .locals 1
    .param p1, "cumulator"    # Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    .line 205
    const-string v0, "cumulator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulator:Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;

    .line 206
    return-void
.end method

.method public setDiscardAfterReads(I)V
    .locals 1
    .param p1, "discardAfterReads"    # I

    .line 213
    const-string v0, "discardAfterReads"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 214
    iput p1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->discardAfterReads:I

    .line 215
    return-void
.end method

.method public setSingleDecode(Z)V
    .locals 0
    .param p1, "singleDecode"    # Z

    .line 188
    iput-boolean p1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->singleDecode:Z

    .line 189
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    instance-of v0, p2, Lio/netty/channel/socket/ChannelInputShutdownEvent;

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInputClosed(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 362
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 363
    return-void
.end method
