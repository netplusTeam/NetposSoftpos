.class public Lio/netty/handler/codec/compression/Bzip2Encoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "Bzip2Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Bzip2Encoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private blockCompressor:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private currentState:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

.field private volatile finished:Z

.field private final streamBlockSize:I

.field private streamCRC:I

.field private final writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Bzip2Encoder;-><init>(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "blockSizeMultiplier"    # I

    .line 94
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    .line 48
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->INIT:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 53
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2BitWriter;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Bzip2BitWriter;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 95
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 99
    const v0, 0x186a0

    mul-int/2addr v0, p1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->streamBlockSize:I

    .line 100
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSizeMultiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/netty/handler/codec/compression/Bzip2Encoder;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/Bzip2Encoder;

    .line 37
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2Encoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/compression/Bzip2Encoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/Bzip2Encoder;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 37
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/Bzip2Encoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private closeBlock(Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->blockCompressor:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    .line 153
    .local v0, "blockCompressor":Lio/netty/handler/codec/compression/Bzip2BlockCompressor;
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->close(Lio/netty/buffer/ByteBuf;)V

    .line 155
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->crc()I

    move-result v1

    .line 156
    .local v1, "blockCRC":I
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->streamCRC:I

    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    xor-int/2addr v2, v1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->streamCRC:I

    .line 158
    .end local v1    # "blockCRC":I
    :cond_0
    return-void
.end method

.method private ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 243
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 244
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 247
    return-object v0

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not added to a pipeline"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 220
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->finished:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 222
    return-object p2

    .line 224
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->finished:Z

    .line 226
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 227
    .local v0, "footer":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Bzip2Encoder;->closeBlock(Lio/netty/buffer/ByteBuf;)V

    .line 229
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->streamCRC:I

    .line 230
    .local v1, "streamCRC":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 232
    .local v2, "writer":Lio/netty/handler/codec/compression/Bzip2BitWriter;
    const-wide/32 v3, 0x177245

    const/4 v5, 0x0

    const/16 v6, 0x18

    :try_start_0
    invoke-virtual {v2, v0, v6, v3, v4}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 233
    const-wide/32 v3, 0x385090

    invoke-virtual {v2, v0, v6, v3, v4}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 234
    invoke-virtual {v2, v0, v1}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeInt(Lio/netty/buffer/ByteBuf;I)V

    .line 235
    invoke-virtual {v2, v0}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->flush(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iput-object v5, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->blockCompressor:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    .line 238
    nop

    .line 239
    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    return-object v3

    .line 237
    :catchall_0
    move-exception v3

    iput-object v5, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->blockCompressor:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    .line 238
    throw v3
.end method


# virtual methods
.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 173
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2Encoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Bzip2Encoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 182
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2Encoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 183
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 184
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/Bzip2Encoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    return-object v2

    .line 187
    :cond_0
    new-instance v2, Lio/netty/handler/codec/compression/Bzip2Encoder$1;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/codec/compression/Bzip2Encoder$1;-><init>(Lio/netty/handler/codec/compression/Bzip2Encoder;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-object p1
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/Bzip2Encoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 201
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2Encoder$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/Bzip2Encoder$2;-><init>(Lio/netty/handler/codec/compression/Bzip2Encoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 208
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/compression/Bzip2Encoder$3;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/handler/codec/compression/Bzip2Encoder$3;-><init>(Lio/netty/handler/codec/compression/Bzip2Encoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 217
    :cond_0
    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->finished:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p3, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 106
    return-void

    .line 110
    :cond_0
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$4;->$SwitchMap$io$netty$handler$codec$compression$Bzip2Encoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 112
    :pswitch_0
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 113
    const v0, 0x425a68

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 114
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->streamBlockSize:I

    const v1, 0x186a0

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x30

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 115
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 118
    :pswitch_1
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->streamBlockSize:I

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;-><init>(Lio/netty/handler/codec/compression/Bzip2BitWriter;I)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->blockCompressor:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    .line 119
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->WRITE_DATA:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 122
    :pswitch_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->blockCompressor:Lio/netty/handler/codec/compression/Bzip2BlockCompressor;

    .line 126
    .local v0, "blockCompressor":Lio/netty/handler/codec/compression/Bzip2BlockCompressor;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->availableSize()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 127
    .local v1, "length":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v0, p2, v2, v1}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->write(Lio/netty/buffer/ByteBuf;II)I

    move-result v2

    .line 128
    .local v2, "bytesWritten":I
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 129
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Bzip2BlockCompressor;->isFull()Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    return-void

    .line 136
    :cond_3
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->CLOSE_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    iput-object v3, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 139
    .end local v0    # "blockCompressor":Lio/netty/handler/codec/compression/Bzip2BlockCompressor;
    .end local v1    # "length":I
    .end local v2    # "bytesWritten":I
    :pswitch_3
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/Bzip2Encoder;->closeBlock(Lio/netty/buffer/ByteBuf;)V

    .line 140
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Encoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Encoder$State;

    .line 141
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/Bzip2Encoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

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

    .line 252
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 253
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Bzip2Encoder;->finished:Z

    return v0
.end method
