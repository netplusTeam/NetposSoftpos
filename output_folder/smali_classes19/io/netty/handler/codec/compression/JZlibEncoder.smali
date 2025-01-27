.class public Lio/netty/handler/codec/compression/JZlibEncoder;
.super Lio/netty/handler/codec/compression/ZlibEncoder;
.source "JZlibEncoder.java"


# instance fields
.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private volatile finished:Z

.field private final wrapperOverhead:I

.field private final z:Lcom/jcraft/jzlib/Deflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "compressionLevel"    # I

    .line 67
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I
    .param p4, "dictionary"    # [B

    .line 210
    invoke-direct {p0}, Lio/netty/handler/codec/compression/ZlibEncoder;-><init>()V

    .line 39
    new-instance v0, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Deflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    .line 211
    if-ltz p1, :cond_4

    const/16 v1, 0x9

    if-gt p1, v1, :cond_4

    .line 214
    if-lt p2, v1, :cond_3

    const/16 v2, 0xf

    if-gt p2, v2, :cond_3

    .line 218
    const/4 v2, 0x1

    if-lt p3, v2, :cond_2

    if-gt p3, v1, :cond_2

    .line 222
    const-string v1, "dictionary"

    invoke-static {p4, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    sget-object v1, Lcom/jcraft/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/jcraft/jzlib/Deflater;->deflateInit(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result v1

    .line 228
    .local v1, "resultCode":I
    if-eqz v1, :cond_0

    .line 229
    const-string v2, "initialization failure"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V

    goto :goto_0

    .line 231
    :cond_0
    array-length v2, p4

    invoke-virtual {v0, p4, v2}, Lcom/jcraft/jzlib/Deflater;->deflateSetDictionary([BI)I

    move-result v1

    .line 232
    if-eqz v1, :cond_1

    .line 233
    const-string v2, "failed to set the dictionary"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V

    .line 237
    :cond_1
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-static {v0}, Lio/netty/handler/codec/compression/ZlibUtil;->wrapperOverhead(Lio/netty/handler/codec/compression/ZlibWrapper;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->wrapperOverhead:I

    .line 238
    return-void

    .line 219
    .end local v1    # "resultCode":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "compressionLevel"    # I
    .param p2, "dictionary"    # [B

    .line 182
    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(III[B)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 1
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 78
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 2
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "compressionLevel"    # I

    .line 94
    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;III)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;III)V
    .locals 3
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "compressionLevel"    # I
    .param p3, "windowBits"    # I
    .param p4, "memLevel"    # I

    .line 119
    invoke-direct {p0}, Lio/netty/handler/codec/compression/ZlibEncoder;-><init>()V

    .line 39
    new-instance v0, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Deflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    .line 121
    if-ltz p2, :cond_4

    const/16 v1, 0x9

    if-gt p2, v1, :cond_4

    .line 126
    if-lt p3, v1, :cond_3

    const/16 v2, 0xf

    if-gt p3, v2, :cond_3

    .line 130
    const/4 v2, 0x1

    if-lt p4, v2, :cond_2

    if-gt p4, v1, :cond_2

    .line 134
    const-string v1, "wrapper"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v1, :cond_1

    .line 141
    nop

    .line 143
    invoke-static {p1}, Lio/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lio/netty/handler/codec/compression/ZlibWrapper;)Lcom/jcraft/jzlib/JZlib$WrapperType;

    move-result-object v1

    .line 141
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/jcraft/jzlib/Deflater;->init(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result v1

    .line 144
    .local v1, "resultCode":I
    if-eqz v1, :cond_0

    .line 145
    const-string v2, "initialization failure"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V

    .line 148
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/compression/ZlibUtil;->wrapperOverhead(Lio/netty/handler/codec/compression/ZlibWrapper;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->wrapperOverhead:I

    .line 149
    return-void

    .line 136
    .end local v1    # "resultCode":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrapper \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not allowed for compression."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "dictionary"    # [B

    .line 163
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(I[B)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/compression/JZlibEncoder;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/JZlibEncoder;

    .line 36
    invoke-direct {p0}, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/JZlibEncoder;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 36
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 265
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 266
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 269
    return-object v0

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not added to a pipeline"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 362
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 364
    return-object p2

    .line 366
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    .line 371
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    sget-object v3, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    iput-object v3, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 372
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v3, 0x0

    iput v3, v2, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    .line 373
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v3, v2, Lcom/jcraft/jzlib/Deflater;->avail_in:I

    .line 376
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 377
    .local v2, "out":[B
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v2, v4, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 378
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v3, v4, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    .line 379
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    array-length v5, v2

    iput v5, v4, Lcom/jcraft/jzlib/Deflater;->avail_out:I

    .line 382
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    move-result v4

    .line 383
    .local v4, "resultCode":I
    if-eqz v4, :cond_1

    if-eq v4, v0, :cond_1

    .line 384
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const-string v3, "compression failure"

    invoke-static {v0, v3, v4}, Lio/netty/handler/codec/compression/ZlibUtil;->deflaterException(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)Lio/netty/handler/codec/compression/CompressionException;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    nop

    .line 392
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    .line 398
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v0, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 399
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v0, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 385
    return-object p2

    .line 386
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v0, v0, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v0, v0, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    invoke-static {v2, v3, v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .local v0, "footer":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 389
    .end local v0    # "footer":Lio/netty/buffer/ByteBuf;
    :cond_2
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    .end local v2    # "out":[B
    .end local v4    # "resultCode":I
    .restart local v0    # "footer":Lio/netty/buffer/ByteBuf;
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    .line 398
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 399
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 400
    nop

    .line 401
    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 392
    .end local v0    # "footer":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    .line 398
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 399
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 400
    throw v0
.end method


# virtual methods
.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 242
    invoke-direct {p0}, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 247
    invoke-direct {p0}, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 248
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 249
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    return-object v2

    .line 252
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    .line 253
    .local v2, "p":Lio/netty/channel/ChannelPromise;
    new-instance v3, Lio/netty/handler/codec/compression/JZlibEncoder$1;

    invoke-direct {v3, p0, v2, p1}, Lio/netty/handler/codec/compression/JZlibEncoder$1;-><init>(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 260
    return-object v2
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 342
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 343
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    new-instance v1, Lio/netty/handler/codec/compression/JZlibEncoder$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder$2;-><init>(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 350
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/compression/JZlibEncoder$3;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder$3;-><init>(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 359
    :cond_0
    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p3, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 281
    return-void

    .line 284
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 285
    .local v0, "inputLength":I
    if-nez v0, :cond_1

    .line 286
    return-void

    .line 291
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v2

    .line 292
    .local v2, "inHasArray":Z
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v0, v3, Lcom/jcraft/jzlib/Deflater;->avail_in:I

    .line 293
    if-eqz v2, :cond_2

    .line 294
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v4

    iput-object v4, v3, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 295
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    goto :goto_0

    .line 297
    :cond_2
    new-array v3, v0, [B

    .line 298
    .local v3, "array":[B
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2, v4, v3}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 299
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v3, v4, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 300
    iget-object v4, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v5, 0x0

    iput v5, v4, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    .line 302
    .end local v3    # "array":[B
    :goto_0
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v3, v3, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    .line 305
    .local v3, "oldNextInIndex":I
    int-to-double v4, v0

    const-wide v6, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0xc

    iget v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->wrapperOverhead:I

    add-int/2addr v4, v5

    .line 306
    .local v4, "maxOutputLength":I
    invoke-virtual {p3, v4}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 307
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v4, v5, Lcom/jcraft/jzlib/Deflater;->avail_out:I

    .line 308
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v6

    iput-object v6, v5, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 309
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v6

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    .line 310
    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v5, v5, Lcom/jcraft/jzlib/Deflater;->next_out_index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    .local v5, "oldNextOutIndex":I
    :try_start_1
    iget-object v6, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .local v6, "resultCode":I
    :try_start_2
    iget-object v7, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v7, v7, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr v7, v3

    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 318
    nop

    .line 320
    if-eqz v6, :cond_3

    .line 321
    iget-object v7, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const-string v8, "compression failure"

    invoke-static {v7, v8, v6}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V

    .line 324
    :cond_3
    iget-object v7, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v7, v7, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    sub-int/2addr v7, v5

    .line 325
    .local v7, "outputLength":I
    if-lez v7, :cond_4

    .line 326
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p3, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    .end local v2    # "inHasArray":Z
    .end local v3    # "oldNextInIndex":I
    .end local v4    # "maxOutputLength":I
    .end local v5    # "oldNextOutIndex":I
    .end local v6    # "resultCode":I
    .end local v7    # "outputLength":I
    :cond_4
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 334
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 335
    nop

    .line 336
    return-void

    .line 317
    .restart local v2    # "inHasArray":Z
    .restart local v3    # "oldNextInIndex":I
    .restart local v4    # "maxOutputLength":I
    .restart local v5    # "oldNextOutIndex":I
    :catchall_0
    move-exception v6

    :try_start_3
    iget-object v7, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v7, v7, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr v7, v3

    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 318
    nop

    .end local v0    # "inputLength":I
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Lio/netty/buffer/ByteBuf;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 333
    .end local v2    # "inHasArray":Z
    .end local v3    # "oldNextInIndex":I
    .end local v4    # "maxOutputLength":I
    .end local v5    # "oldNextOutIndex":I
    .restart local v0    # "inputLength":I
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v3, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    .line 334
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v3, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    .line 335
    throw v2
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/JZlibEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

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

    .line 406
    iput-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 407
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    return v0
.end method
