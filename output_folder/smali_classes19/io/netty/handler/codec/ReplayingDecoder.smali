.class public abstract Lio/netty/handler/codec/ReplayingDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "ReplayingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/ByteToMessageDecoder;"
    }
.end annotation


# static fields
.field static final REPLAY:Lio/netty/util/Signal;


# instance fields
.field private checkpoint:I

.field private final replayable:Lio/netty/handler/codec/ReplayingDecoderByteBuf;

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 270
    const-class v0, Lio/netty/handler/codec/ReplayingDecoder;

    const-string v1, "REPLAY"

    invoke-static {v0, v1}, Lio/netty/util/Signal;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Signal;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 280
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 286
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p1, "initialState":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 272
    new-instance v0, Lio/netty/handler/codec/ReplayingDecoderByteBuf;

    invoke-direct {v0}, Lio/netty/handler/codec/ReplayingDecoderByteBuf;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderByteBuf;

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 287
    iput-object p1, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 288
    return-void
.end method


# virtual methods
.method protected callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 7
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

    .line 342
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderByteBuf;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/ReplayingDecoderByteBuf;->setCumulation(Lio/netty/buffer/ByteBuf;)V

    .line 344
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 345
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 346
    .local v0, "oldReaderIndex":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 348
    .local v1, "outSize":I
    if-lez v1, :cond_1

    .line 349
    invoke-static {p1, p3, v1}, Lio/netty/handler/codec/ReplayingDecoder;->fireChannelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;I)V

    .line 350
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 357
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    goto/16 :goto_3

    .line 360
    :cond_0
    const/4 v1, 0x0

    .line 363
    :cond_1
    iget-object v2, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 364
    .local v2, "oldState":Ljava/lang/Object;, "TS;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    .local v3, "oldInputLength":I
    :try_start_1
    iget-object v4, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderByteBuf;

    invoke-virtual {p0, p1, v4, p3}, Lio/netty/handler/codec/ReplayingDecoder;->decodeRemovalReentryProtection(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 372
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 373
    goto/16 :goto_3

    .line 376
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 377
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    if-eq v2, v4, :cond_3

    goto :goto_1

    .line 378
    :cond_3
    new-instance v4, Lio/netty/handler/codec/DecoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".decode() must consume the inbound data or change its state if it did not decode anything."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldReaderIndex":I
    .end local v1    # "outSize":I
    .end local v2    # "oldState":Ljava/lang/Object;, "TS;"
    .end local v3    # "oldInputLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4
    :try_end_1
    .catch Lio/netty/util/Signal; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    .restart local v0    # "oldReaderIndex":I
    .restart local v1    # "outSize":I
    .restart local v2    # "oldState":Ljava/lang/Object;, "TS;"
    .restart local v3    # "oldInputLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    :goto_1
    goto :goto_0

    .line 407
    :cond_5
    nop

    .line 409
    :try_start_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    if-ne v0, v4, :cond_7

    iget-object v4, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    if-eq v2, v4, :cond_6

    goto :goto_2

    .line 410
    :cond_6
    new-instance v4, Lio/netty/handler/codec/DecoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".decode() method must consume the inbound data or change its state if it decoded something."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v4

    .line 414
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->isSingleDecode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 415
    goto :goto_3

    .line 417
    .end local v0    # "oldReaderIndex":I
    .end local v1    # "outSize":I
    .end local v2    # "oldState":Ljava/lang/Object;, "TS;"
    .end local v3    # "oldInputLength":I
    :cond_8
    goto/16 :goto_0

    .line 387
    .restart local v0    # "oldReaderIndex":I
    .restart local v1    # "outSize":I
    .restart local v2    # "oldState":Ljava/lang/Object;, "TS;"
    .restart local v3    # "oldInputLength":I
    :catch_0
    move-exception v4

    .line 388
    .local v4, "replay":Lio/netty/util/Signal;
    sget-object v5, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    invoke-virtual {v4, v5}, Lio/netty/util/Signal;->expect(Lio/netty/util/Signal;)V

    .line 394
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 395
    goto :goto_3

    .line 399
    :cond_9
    iget v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 400
    .local v5, "checkpoint":I
    if-ltz v5, :cond_a

    .line 401
    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 422
    .end local v0    # "oldReaderIndex":I
    .end local v1    # "outSize":I
    .end local v2    # "oldState":Ljava/lang/Object;, "TS;"
    .end local v3    # "oldInputLength":I
    .end local v4    # "replay":Lio/netty/util/Signal;
    .end local v5    # "checkpoint":I
    :cond_a
    :goto_3
    nop

    .line 423
    return-void

    .line 420
    :catch_1
    move-exception v0

    .line 421
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 418
    .end local v0    # "cause":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 419
    .local v0, "e":Lio/netty/handler/codec/DecoderException;
    throw v0
.end method

.method final channelInputClosed(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;)V
    .locals 2
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

    .line 327
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderByteBuf;

    invoke-virtual {v0}, Lio/netty/handler/codec/ReplayingDecoderByteBuf;->terminate()V

    .line 328
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->internalBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/ReplayingDecoder;->callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/ReplayingDecoderByteBuf;->setCumulation(Lio/netty/buffer/ByteBuf;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderByteBuf;

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/ReplayingDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_0
    .catch Lio/netty/util/Signal; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "replay":Lio/netty/util/Signal;
    sget-object v1, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    invoke-virtual {v0, v1}, Lio/netty/util/Signal;->expect(Lio/netty/util/Signal;)V

    .line 338
    .end local v0    # "replay":Lio/netty/util/Signal;
    :goto_1
    return-void
.end method

.method protected checkpoint()V
    .locals 1

    .line 294
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->internalBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 295
    return-void
.end method

.method protected checkpoint(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 302
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint()V

    .line 303
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->state(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method protected state()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    return-object v0
.end method

.method protected state(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p1, "newState":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 320
    .local v0, "oldState":Ljava/lang/Object;, "TS;"
    iput-object p1, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 321
    return-object v0
.end method
