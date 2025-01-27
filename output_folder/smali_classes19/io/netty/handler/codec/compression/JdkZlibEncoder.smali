.class public Lio/netty/handler/codec/compression/JdkZlibEncoder;
.super Lio/netty/handler/codec/compression/ZlibEncoder;
.source "JdkZlibEncoder.java"


# static fields
.field private static final gzipHeader:[B


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final deflater:Ljava/util/zip/Deflater;

.field private volatile finished:Z

.field private final wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

.field private writeHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "compressionLevel"    # I

    .line 72
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "dictionary"    # [B

    .line 140
    invoke-direct {p0}, Lio/netty/handler/codec/compression/ZlibEncoder;-><init>()V

    .line 46
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    .line 141
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 145
    const-string v0, "dictionary"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 148
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    .line 149
    invoke-virtual {v0, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 150
    return-void

    .line 142
    :cond_0
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

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 1
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 82
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 3
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "compressionLevel"    # I

    .line 96
    invoke-direct {p0}, Lio/netty/handler/codec/compression/ZlibEncoder;-><init>()V

    .line 46
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    .line 97
    if-ltz p2, :cond_2

    const/16 v1, 0x9

    if-gt p2, v1, :cond_2

    .line 101
    const-string v1, "wrapper"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v1, :cond_1

    .line 108
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 109
    new-instance v1, Ljava/util/zip/Deflater;

    sget-object v2, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    .line 110
    return-void

    .line 103
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

    .line 98
    :cond_2
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

    .line 123
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JdkZlibEncoder;-><init>(I[B)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/compression/JdkZlibEncoder;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/JdkZlibEncoder;

    .line 36
    invoke-direct {p0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/compression/JdkZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/compression/JdkZlibEncoder;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 36
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .line 177
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 178
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 181
    return-object v0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not added to a pipeline"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private deflate(Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 324
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflateJdk6(Lio/netty/buffer/ByteBuf;)V

    .line 329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 330
    .local v0, "writerIndex":I
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    .line 331
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    const/4 v5, 0x2

    .line 330
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v1

    .line 332
    .local v1, "numBytes":I
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 333
    .end local v0    # "writerIndex":I
    if-gtz v1, :cond_1

    .line 334
    return-void

    .line 333
    :cond_1
    goto :goto_0
.end method

.method private deflateJdk6(Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 339
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 340
    .local v0, "writerIndex":I
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    .line 341
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    .line 340
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    .line 342
    .local v1, "numBytes":I
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 343
    .end local v0    # "writerIndex":I
    if-gtz v1, :cond_0

    .line 344
    return-void

    .line 343
    :cond_0
    goto :goto_0
.end method

.method private finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 283
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 285
    return-object p2

    .line 288
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->finished:Z

    .line 289
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 290
    .local v0, "footer":Lio/netty/buffer/ByteBuf;
    iget-boolean v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

    sget-object v2, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne v1, v2, :cond_1

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    .line 293
    sget-object v1, Lio/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 296
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 298
    :cond_2
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 299
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflate(Lio/netty/buffer/ByteBuf;)V

    .line 300
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 303
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_3
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

    sget-object v2, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne v1, v2, :cond_4

    .line 307
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    .line 308
    .local v1, "crcValue":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v2

    .line 309
    .local v2, "uncBytes":I
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 310
    ushr-int/lit8 v3, v1, 0x8

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 311
    ushr-int/lit8 v3, v1, 0x10

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 312
    ushr-int/lit8 v3, v1, 0x18

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 313
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 314
    ushr-int/lit8 v3, v2, 0x8

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 315
    ushr-int/lit8 v3, v2, 0x10

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 316
    ushr-int/lit8 v3, v2, 0x18

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 318
    .end local v1    # "crcValue":I
    .end local v2    # "uncBytes":I
    :cond_4
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 319
    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected final allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p3, "preferDirect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xc

    .line 246
    .local v0, "sizeEstimate":I
    iget-boolean v1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    if-eqz v1, :cond_0

    .line 247
    sget-object v1, Lio/netty/handler/codec/compression/JdkZlibEncoder$4;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    add-int/lit8 v0, v0, 0x2

    .line 253
    goto :goto_0

    .line 249
    :pswitch_1
    sget-object v1, Lio/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 258
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 154
    invoke-direct {p0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 159
    invoke-direct {p0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 160
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 161
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    return-object v2

    .line 164
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    .line 165
    .local v2, "p":Lio/netty/channel/ChannelPromise;
    new-instance v3, Lio/netty/handler/codec/compression/JdkZlibEncoder$1;

    invoke-direct {v3, p0, v2, p1}, Lio/netty/handler/codec/compression/JdkZlibEncoder$1;-><init>(Lio/netty/handler/codec/compression/JdkZlibEncoder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-object v2
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

    .line 263
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 264
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    new-instance v1, Lio/netty/handler/codec/compression/JdkZlibEncoder$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/JdkZlibEncoder$2;-><init>(Lio/netty/handler/codec/compression/JdkZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 271
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/compression/JdkZlibEncoder$3;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/handler/codec/compression/JdkZlibEncoder$3;-><init>(Lio/netty/handler/codec/compression/JdkZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 280
    :cond_0
    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "uncompressed"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p3, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 193
    return-void

    .line 196
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 197
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 198
    return-void

    .line 203
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v1

    .line 206
    .local v1, "inAry":[B
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    add-int/2addr v2, v3

    .line 208
    .local v2, "offset":I
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 210
    .end local v1    # "inAry":[B
    .end local v2    # "offset":I
    :cond_2
    new-array v1, v0, [B

    .line 211
    .restart local v1    # "inAry":[B
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 212
    const/4 v2, 0x0

    .line 215
    .restart local v2    # "offset":I
    :goto_0
    iget-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    if-eqz v3, :cond_3

    .line 216
    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    .line 217
    iget-object v3, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

    sget-object v4, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne v3, v4, :cond_3

    .line 218
    sget-object v3, Lio/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    invoke-virtual {p3, v3}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 222
    :cond_3
    iget-object v3, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->wrapper:Lio/netty/handler/codec/compression/ZlibWrapper;

    sget-object v4, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-ne v3, v4, :cond_4

    .line 223
    iget-object v3, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 226
    :cond_4
    iget-object v3, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 228
    :goto_1
    invoke-direct {p0, p3}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflate(Lio/netty/buffer/ByteBuf;)V

    .line 229
    iget-object v3, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    nop

    .line 240
    return-void

    .line 233
    :cond_5
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v3

    if-nez v3, :cond_6

    .line 236
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 233
    :cond_6
    goto :goto_1
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

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/JdkZlibEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

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

    .line 348
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 349
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibEncoder;->finished:Z

    return v0
.end method
