.class public abstract Lio/netty/handler/codec/MessageAggregator;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "MessageAggregator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "C::",
        "Lio/netty/buffer/ByteBufHolder;",
        "O::",
        "Lio/netty/buffer/ByteBufHolder;",
        ">",
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "TI;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private aggregating:Z

.field private continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private currentMessage:Lio/netty/buffer/ByteBufHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private handlingOversizedMessage:Z

.field private final maxContentLength:I

.field private maxCumulationBufferComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "maxContentLength"    # I

    .line 75
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    .line 61
    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    .line 76
    invoke-static {p1}, Lio/netty/handler/codec/MessageAggregator;->validateMaxContentLength(I)V

    .line 77
    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    .line 78
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "maxContentLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+TI;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "inboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0, p2}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>(Ljava/lang/Class;)V

    .line 61
    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    .line 82
    invoke-static {p1}, Lio/netty/handler/codec/MessageAggregator;->validateMaxContentLength(I)V

    .line 83
    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    .line 84
    return-void
.end method

.method private static appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "content"    # Lio/netty/buffer/CompositeByteBuf;
    .param p1, "partialContent"    # Lio/netty/buffer/ByteBuf;

    .line 332
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 335
    :cond_0
    return-void
.end method

.method private finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p1, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    .line 392
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation(Lio/netty/buffer/ByteBufHolder;)V

    .line 393
    return-void
.end method

.method private invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "oversized":Ljava/lang/Object;, "TS;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 404
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/MessageAggregator;->handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 408
    nop

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 408
    throw v0
.end method

.method private releaseCurrentMessage()V
    .locals 1

    .line 461
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->release()Z

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 465
    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    .line 467
    :cond_0
    return-void
.end method

.method private static validateMaxContentLength(I)V
    .locals 1
    .param p0, "maxContentLength"    # I

    .line 87
    const-string v0, "maxContentLength"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 88
    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->acceptInboundMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    return v1

    .line 98
    :cond_0
    move-object v0, p1

    .line 100
    .local v0, "in":Ljava/lang/Object;, "TI;"
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->isAggregated(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    return v1

    .line 106
    :cond_1
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->isStartMessage(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 107
    iput-boolean v3, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    .line 108
    return v3

    .line 109
    :cond_2
    iget-boolean v2, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->isContentMessage(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    return v3

    .line 113
    :cond_3
    return v1
.end method

.method protected aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p1, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    .local p2, "content":Lio/netty/buffer/ByteBufHolder;, "TC;"
    return-void
.end method

.method protected abstract beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/netty/buffer/ByteBuf;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 438
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    :try_start_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 441
    throw v0
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 428
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 431
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 432
    return-void
.end method

.method protected abstract closeAfterContinueResponse(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 2

    .line 201
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    .line 204
    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
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

    .line 209
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "msg":Ljava/lang/Object;, "TI;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    if-eqz v0, :cond_11

    .line 211
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageAggregator;->isStartMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-nez v0, :cond_8

    .line 220
    move-object v0, p2

    .line 224
    .local v0, "m":Ljava/lang/Object;, "TS;"
    iget v1, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/handler/codec/MessageAggregator;->newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "continueResponse":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 227
    iget-object v2, p0, Lio/netty/handler/codec/MessageAggregator;->continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

    .line 228
    .local v2, "listener":Lio/netty/channel/ChannelFutureListener;
    if-nez v2, :cond_0

    .line 229
    new-instance v3, Lio/netty/handler/codec/MessageAggregator$1;

    invoke-direct {v3, p0, p1}, Lio/netty/handler/codec/MessageAggregator$1;-><init>(Lio/netty/handler/codec/MessageAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    move-object v2, v3

    iput-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

    .line 240
    :cond_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/MessageAggregator;->closeAfterContinueResponse(Ljava/lang/Object;)Z

    move-result v3

    .line 241
    .local v3, "closeAfterWrite":Z
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/MessageAggregator;->ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    .line 243
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-interface {v4, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    .line 245
    .local v4, "future":Lio/netty/channel/ChannelFuture;
    if-eqz v3, :cond_1

    .line 246
    sget-object v5, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v4, v5}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 247
    return-void

    .line 249
    :cond_1
    iget-boolean v5, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    if-eqz v5, :cond_2

    .line 250
    return-void

    .line 249
    .end local v2    # "listener":Lio/netty/channel/ChannelFutureListener;
    .end local v3    # "closeAfterWrite":Z
    .end local v4    # "future":Lio/netty/channel/ChannelFuture;
    :cond_2
    goto :goto_0

    .line 252
    :cond_3
    iget v2, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-virtual {p0, v0, v2}, Lio/netty/handler/codec/MessageAggregator;->isContentLengthInvalid(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/MessageAggregator;->invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 255
    return-void

    .line 252
    :cond_4
    :goto_0
    nop

    .line 258
    instance-of v2, v0, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lio/netty/handler/codec/DecoderResultProvider;

    invoke-interface {v2}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_6

    .line 260
    instance-of v2, v0, Lio/netty/buffer/ByteBufHolder;

    if-eqz v2, :cond_5

    .line 261
    move-object v2, v0

    check-cast v2, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object v2

    .local v2, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    goto :goto_1

    .line 263
    .end local v2    # "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    :cond_5
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, v0, v2}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object v2

    .line 265
    .restart local v2    # "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    :goto_1
    invoke-direct {p0, v2}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V

    .line 266
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    return-void

    .line 271
    .end local v2    # "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    :cond_6
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    iget v3, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    invoke-interface {v2, v3}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v2

    .line 272
    .local v2, "content":Lio/netty/buffer/CompositeByteBuf;
    instance-of v3, v0, Lio/netty/buffer/ByteBufHolder;

    if-eqz v3, :cond_7

    .line 273
    move-object v3, v0

    check-cast v3, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v3}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-static {v2, v3}, Lio/netty/handler/codec/MessageAggregator;->appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 275
    :cond_7
    invoke-virtual {p0, v0, v2}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object v3

    iput-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 276
    .end local v0    # "m":Ljava/lang/Object;, "TS;"
    .end local v1    # "continueResponse":Ljava/lang/Object;
    .end local v2    # "content":Lio/netty/buffer/CompositeByteBuf;
    goto/16 :goto_4

    .line 214
    :cond_8
    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->release()Z

    .line 215
    iput-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 216
    new-instance v0, Lio/netty/handler/codec/MessageAggregationException;

    invoke-direct {v0}, Lio/netty/handler/codec/MessageAggregationException;-><init>()V

    throw v0

    .line 276
    :cond_9
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageAggregator;->isContentMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 277
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-nez v0, :cond_a

    .line 280
    return-void

    .line 284
    :cond_a
    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    .line 287
    .local v0, "content":Lio/netty/buffer/CompositeByteBuf;
    move-object v2, p2

    check-cast v2, Lio/netty/buffer/ByteBufHolder;

    .line 289
    .local v2, "m":Lio/netty/buffer/ByteBufHolder;, "TC;"
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v3

    iget v4, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-interface {v2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_b

    .line 292
    iget-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 293
    .local v1, "s":Ljava/lang/Object;, "TS;"
    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/MessageAggregator;->invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 294
    return-void

    .line 298
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :cond_b
    invoke-interface {v2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-static {v0, v3}, Lio/netty/handler/codec/MessageAggregator;->appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 301
    iget-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-virtual {p0, v3, v2}, Lio/netty/handler/codec/MessageAggregator;->aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V

    .line 304
    instance-of v3, v2, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v3, :cond_e

    .line 305
    move-object v3, v2

    check-cast v3, Lio/netty/handler/codec/DecoderResultProvider;

    invoke-interface {v3}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v3

    .line 306
    .local v3, "decoderResult":Lio/netty/handler/codec/DecoderResult;
    invoke-virtual {v3}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_d

    .line 307
    iget-object v4, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    instance-of v5, v4, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v5, :cond_c

    .line 308
    check-cast v4, Lio/netty/handler/codec/DecoderResultProvider;

    .line 309
    invoke-virtual {v3}, Lio/netty/handler/codec/DecoderResult;->cause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v5

    .line 308
    invoke-interface {v4, v5}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 311
    :cond_c
    const/4 v4, 0x1

    .local v4, "last":Z
    goto :goto_2

    .line 313
    .end local v4    # "last":Z
    :cond_d
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/MessageAggregator;->isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z

    move-result v4

    .line 315
    .end local v3    # "decoderResult":Lio/netty/handler/codec/DecoderResult;
    .restart local v4    # "last":Z
    :goto_2
    goto :goto_3

    .line 316
    .end local v4    # "last":Z
    :cond_e
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/MessageAggregator;->isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z

    move-result v4

    .line 319
    .restart local v4    # "last":Z
    :goto_3
    if-eqz v4, :cond_f

    .line 320
    iget-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-direct {p0, v3}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V

    .line 323
    iget-object v3, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iput-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    .line 326
    .end local v0    # "content":Lio/netty/buffer/CompositeByteBuf;
    .end local v2    # "m":Lio/netty/buffer/ByteBufHolder;, "TC;"
    .end local v4    # "last":Z
    :cond_f
    nop

    .line 329
    :goto_4
    return-void

    .line 327
    :cond_10
    new-instance v0, Lio/netty/handler/codec/MessageAggregationException;

    invoke-direct {v0}, Lio/netty/handler/codec/MessageAggregationException;-><init>()V

    throw v0

    .line 209
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected finishAggregation(Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 398
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p1, "aggregated":Lio/netty/buffer/ByteBufHolder;, "TO;"
    return-void
.end method

.method protected handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    .local p2, "oversized":Ljava/lang/Object;, "TS;"
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content length exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 420
    invoke-virtual {p0}, Lio/netty/handler/codec/MessageAggregator;->maxContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 421
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iput-object p1, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 447
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    :try_start_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 457
    nop

    .line 458
    return-void

    .line 456
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    .line 457
    throw v0
.end method

.method protected abstract ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isAggregated(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isContentLengthInvalid(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isContentMessage(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final isHandlingOversizedMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    return v0
.end method

.method protected abstract isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isStartMessage(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final maxContentLength()I
    .locals 1

    .line 157
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    return v0
.end method

.method public final maxCumulationBufferComponents()I
    .locals 1

    .line 167
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    return v0
.end method

.method protected abstract newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I",
            "Lio/netty/channel/ChannelPipeline;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3
    .param p1, "maxCumulationBufferComponents"    # I

    .line 178
    .local p0, "this":Lio/netty/handler/codec/MessageAggregator;, "Lio/netty/handler/codec/MessageAggregator<TI;TS;TC;TO;>;"
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 184
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 185
    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    .line 190
    return-void

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCumulationBufferComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
