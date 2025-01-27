.class public final Lio/netty/buffer/ByteBufUtil;
.super Ljava/lang/Object;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;,
        Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;,
        Lio/netty/buffer/ByteBufUtil$HexUtil;
    }
.end annotation


# static fields
.field private static final BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field static final DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

.field private static final FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

.field private static final MAX_BYTES_PER_CHAR_UTF8:I

.field private static final MAX_CHAR_BUFFER_SIZE:I

.field static final MAX_TL_ARRAY_LEN:I = 0x400

.field private static final THREAD_LOCAL_BUFFER_SIZE:I

.field static final WRITE_CHUNK_SIZE:I = 0x2000

.field private static final WRITE_UTF_UNKNOWN:B = 0x3ft

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    const-class v0, Lio/netty/buffer/ByteBufUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 59
    new-instance v1, Lio/netty/buffer/ByteBufUtil$1;

    invoke-direct {v1}, Lio/netty/buffer/ByteBufUtil$1;-><init>()V

    sput-object v1, Lio/netty/buffer/ByteBufUtil;->BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;

    .line 69
    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    invoke-static {v1}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lio/netty/buffer/ByteBufUtil;->MAX_BYTES_PER_CHAR_UTF8:I

    .line 76
    nop

    .line 77
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v1

    const-string v2, "unpooled"

    const-string v3, "pooled"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 76
    :goto_0
    const-string v4, "io.netty.allocator.type"

    invoke-static {v4, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "allocType":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "-Dio.netty.allocator.type: {}"

    if-eqz v2, :cond_1

    .line 82
    sget-object v2, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 83
    .local v2, "alloc":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v0, v4, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    .end local v2    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    sget-object v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 86
    .restart local v2    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v0, v4, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    .end local v2    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :cond_2
    sget-object v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 89
    .restart local v2    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    const-string v3, "-Dio.netty.allocator.type: pooled (unknown: {})"

    invoke-interface {v0, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :goto_1
    sput-object v2, Lio/netty/buffer/ByteBufUtil;->DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

    .line 94
    const/4 v3, 0x0

    const-string v4, "io.netty.threadLocalDirectBufferSize"

    invoke-static {v4, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.threadLocalDirectBufferSize: {}"

    invoke-interface {v0, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const/16 v3, 0x4000

    const-string v4, "io.netty.maxThreadLocalCharBufferSize"

    invoke-static {v4, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lio/netty/buffer/ByteBufUtil;->MAX_CHAR_BUFFER_SIZE:I

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.maxThreadLocalCharBufferSize: {}"

    invoke-interface {v0, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1298
    .end local v1    # "allocType":Ljava/lang/String;
    .end local v2    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    new-instance v0, Lio/netty/buffer/ByteBufUtil$2;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufUtil$2;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufUtil;->FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .line 56
    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    return v0
.end method

.method public static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 970
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/netty/buffer/ByteBufUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    .line 971
    return-void
.end method

.method public static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V
    .locals 0
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 979
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$300(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    .line 980
    return-void
.end method

.method private static checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 478
    sub-int v0, p2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    return-object p0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= end ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= seq.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 17
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 292
    .local v2, "aLen":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 293
    .local v3, "bLen":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 294
    .local v4, "minLength":I
    ushr-int/lit8 v5, v4, 0x2

    .line 295
    .local v5, "uintCount":I
    and-int/lit8 v6, v4, 0x3

    .line 296
    .local v6, "byteCount":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v7

    .line 297
    .local v7, "aIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    .line 299
    .local v8, "bIndex":I
    if-lez v5, :cond_5

    .line 300
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 302
    .local v9, "bufferAIsBigEndian":Z
    :goto_0
    shl-int/lit8 v10, v5, 0x2

    .line 304
    .local v10, "uintCountIncrement":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v12

    if-ne v11, v12, :cond_2

    .line 305
    if-eqz v9, :cond_1

    invoke-static {v0, v1, v7, v8, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    goto :goto_1

    .line 306
    :cond_1
    invoke-static {v0, v1, v7, v8, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintLittleEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    :goto_1
    nop

    .local v11, "res":J
    goto :goto_3

    .line 308
    .end local v11    # "res":J
    :cond_2
    if-eqz v9, :cond_3

    invoke-static {v0, v1, v7, v8, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndianA(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    goto :goto_2

    .line 309
    :cond_3
    invoke-static {v0, v1, v7, v8, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndianB(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    :goto_2
    nop

    .line 311
    .restart local v11    # "res":J
    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-eqz v13, :cond_4

    .line 313
    const-wide/32 v13, 0x7fffffff

    move v15, v4

    move/from16 v16, v5

    .end local v4    # "minLength":I
    .end local v5    # "uintCount":I
    .local v15, "minLength":I
    .local v16, "uintCount":I
    const-wide/32 v4, -0x80000000

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4

    .line 315
    .end local v15    # "minLength":I
    .end local v16    # "uintCount":I
    .restart local v4    # "minLength":I
    .restart local v5    # "uintCount":I
    :cond_4
    move v15, v4

    move/from16 v16, v5

    .end local v4    # "minLength":I
    .end local v5    # "uintCount":I
    .restart local v15    # "minLength":I
    .restart local v16    # "uintCount":I
    add-int/2addr v7, v10

    .line 316
    add-int/2addr v8, v10

    goto :goto_4

    .line 299
    .end local v9    # "bufferAIsBigEndian":Z
    .end local v10    # "uintCountIncrement":I
    .end local v11    # "res":J
    .end local v15    # "minLength":I
    .end local v16    # "uintCount":I
    .restart local v4    # "minLength":I
    .restart local v5    # "uintCount":I
    :cond_5
    move v15, v4

    move/from16 v16, v5

    .line 319
    .end local v4    # "minLength":I
    .end local v5    # "uintCount":I
    .restart local v15    # "minLength":I
    .restart local v16    # "uintCount":I
    :goto_4
    add-int v4, v7, v6

    .local v4, "aEnd":I
    :goto_5
    if-ge v7, v4, :cond_7

    .line 320
    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    invoke-virtual {v1, v8}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    sub-int/2addr v5, v9

    .line 321
    .local v5, "comp":I
    if-eqz v5, :cond_6

    .line 322
    return v5

    .line 319
    .end local v5    # "comp":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 326
    .end local v4    # "aEnd":I
    :cond_7
    sub-int v4, v2, v3

    return v4
.end method

.method private static compareUintBigEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 7
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 331
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 332
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 333
    .local v3, "comp":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 334
    return-wide v3

    .line 331
    .end local v3    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 337
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method private static compareUintBigEndianA(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 7
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 353
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 354
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 355
    .local v3, "comp":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 356
    return-wide v3

    .line 353
    .end local v3    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 359
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method private static compareUintBigEndianB(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 7
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 364
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 365
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 366
    .local v3, "comp":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 367
    return-wide v3

    .line 364
    .end local v3    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 370
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method private static compareUintLittleEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 7
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 342
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 343
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 344
    .local v3, "comp":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 345
    return-wide v3

    .line 342
    .end local v3    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 348
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method public static copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;I)V
    .locals 3
    .param p0, "src"    # Lio/netty/util/AsciiString;
    .param p1, "srcIdx"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 942
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 948
    return-void

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= srcIdx("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcIdx + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcLen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 944
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;II)V
    .locals 3
    .param p0, "src"    # Lio/netty/util/AsciiString;
    .param p1, "srcIdx"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIdx"    # I
    .param p4, "length"    # I

    .line 925
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p4, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, v1, v2, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 931
    return-void

    .line 926
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= srcIdx("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcIdx + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcLen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 927
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Lio/netty/util/AsciiString;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "src"    # Lio/netty/util/AsciiString;
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 910
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;I)V

    .line 911
    return-void
.end method

.method public static decodeHexByte(Ljava/lang/CharSequence;I)B
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 147
    invoke-static {p0, p1}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v0

    return v0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p0, "hexDump"    # Ljava/lang/CharSequence;

    .line 154
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;II)[B
    .locals 1
    .param p0, "hexDump"    # Ljava/lang/CharSequence;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 161
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method static decodeString(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "readerIndex"    # I
    .param p2, "len"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 822
    if-nez p2, :cond_0

    .line 823
    const-string v0, ""

    return-object v0

    .line 828
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 830
    .local v0, "array":[B
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    .local v2, "offset":I
    goto :goto_0

    .line 832
    .end local v0    # "array":[B
    .end local v2    # "offset":I
    :cond_1
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v0

    .line 833
    .restart local v0    # "array":[B
    const/4 v2, 0x0

    .line 834
    .restart local v2    # "offset":I
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 836
    :goto_0
    sget-object v3, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 838
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object v3

    .line 840
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 770
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "extraCapacity"    # I

    .line 783
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method static encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;
    .locals 9
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "enforceHeap"    # Z
    .param p2, "src"    # Ljava/nio/CharBuffer;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "extraCapacity"    # I

    .line 788
    invoke-static {p3}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 789
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v1, p4

    .line 790
    .local v1, "length":I
    const/4 v2, 0x1

    .line 792
    .local v2, "release":Z
    if-eqz p1, :cond_0

    .line 793
    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .local v3, "dst":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 795
    .end local v3    # "dst":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 798
    .restart local v3    # "dst":Lio/netty/buffer/ByteBuf;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 799
    .local v4, "dstBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 800
    .local v5, "pos":I
    const/4 v6, 0x1

    invoke-virtual {v0, p2, v4, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 801
    .local v6, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_1

    .line 802
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 804
    :cond_1
    invoke-virtual {v0, v4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v7

    move-object v6, v7

    .line 805
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_2

    .line 806
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 808
    :cond_2
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    const/4 v2, 0x0

    .line 810
    nop

    .line 814
    if-eqz v2, :cond_3

    .line 815
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 810
    :cond_3
    return-object v3

    .line 814
    .end local v4    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v5    # "pos":I
    .end local v6    # "cr":Ljava/nio/charset/CoderResult;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 811
    :catch_0
    move-exception v4

    .line 812
    .local v4, "x":Ljava/nio/charset/CharacterCodingException;
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v1    # "length":I
    .end local v2    # "release":Z
    .end local v3    # "dst":Lio/netty/buffer/ByteBuf;
    .end local p0    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "enforceHeap":Z
    .end local p2    # "src":Ljava/nio/CharBuffer;
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    .end local p4    # "extraCapacity":I
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    .end local v4    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v1    # "length":I
    .restart local v2    # "release":Z
    .restart local v3    # "dst":Lio/netty/buffer/ByteBuf;
    .restart local p0    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "enforceHeap":Z
    .restart local p2    # "src":Ljava/nio/CharBuffer;
    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    .restart local p4    # "extraCapacity":I
    :goto_1
    if-eqz v2, :cond_4

    .line 815
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 817
    :cond_4
    throw v4
.end method

.method public static ensureWritableSuccess(I)Z
    .locals 1
    .param p0, "ensureWritableResult"    # I

    .line 172
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z
    .locals 8
    .param p0, "a"    # Lio/netty/buffer/ByteBuf;
    .param p1, "aStartIndex"    # I
    .param p2, "b"    # Lio/netty/buffer/ByteBuf;
    .param p3, "bStartIndex"    # I
    .param p4, "length"    # I

    .line 234
    if-ltz p1, :cond_9

    if-ltz p3, :cond_9

    if-ltz p4, :cond_9

    .line 237
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-lt v0, p1, :cond_8

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_0

    goto :goto_4

    .line 241
    :cond_0
    ushr-int/lit8 v0, p4, 0x3

    .line 242
    .local v0, "longCount":I
    and-int/lit8 v2, p4, 0x7

    .line 244
    .local v2, "byteCount":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 245
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_2

    .line 246
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 247
    return v1

    .line 249
    :cond_1
    add-int/lit8 p1, p1, 0x8

    .line 250
    add-int/lit8 p3, p3, 0x8

    .line 245
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 253
    :cond_3
    move v3, v0

    .restart local v3    # "i":I
    :goto_1
    if-lez v3, :cond_5

    .line 254
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/netty/buffer/ByteBufUtil;->swapLong(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 255
    return v1

    .line 257
    :cond_4
    add-int/lit8 p1, p1, 0x8

    .line 258
    add-int/lit8 p3, p3, 0x8

    .line 253
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 262
    .end local v3    # "i":I
    :cond_5
    :goto_2
    move v3, v2

    .restart local v3    # "i":I
    :goto_3
    if-lez v3, :cond_7

    .line 263
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_6

    .line 264
    return v1

    .line 266
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 267
    add-int/lit8 p3, p3, 0x1

    .line 262
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 270
    .end local v3    # "i":I
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 238
    .end local v0    # "longCount":I
    .end local v2    # "byteCount":I
    :cond_8
    :goto_4
    return v1

    .line 235
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All indexes and lengths must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static equals(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Z
    .locals 3
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;

    .line 279
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 280
    .local v0, "aLen":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 281
    const/4 v1, 0x0

    return v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-static {p0, v1, p1, v2, v0}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result v1

    return v1
.end method

.method private static firstIndexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 459
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 460
    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    sub-int v0, p2, p1

    new-instance v1, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    invoke-direct {v1, p3}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0

    .line 461
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    .locals 1
    .param p0, "inBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "outLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1469
    :goto_0
    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1470
    .local v0, "len":I
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1471
    invoke-virtual {p4, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1472
    sub-int/2addr p5, v0

    .line 1473
    .end local v0    # "len":I
    if-gtz p5, :cond_0

    .line 1474
    return-void

    .line 1473
    :cond_0
    goto :goto_0
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;)[B
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 865
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;II)[B
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 873
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B
    .locals 4
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "copy"    # Z

    .line 883
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    .line 884
    .local v0, "capacity":I
    invoke-static {p1, p2, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v1

    if-nez v1, :cond_3

    .line 889
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 890
    if-nez p3, :cond_1

    if-nez p1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v1

    return-object v1

    .line 891
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p1

    .line 892
    .local v1, "baseOffset":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    add-int v3, v1, p2

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2

    .line 898
    .end local v1    # "baseOffset":I
    :cond_2
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v1

    .line 899
    .local v1, "v":[B
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 900
    return-object v1

    .line 885
    .end local v1    # "v":[B
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: 0 <= start("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= start + length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= buf.capacity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hashCode(Lio/netty/buffer/ByteBuf;)I
    .locals 8
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 180
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 181
    .local v0, "aLen":I
    ushr-int/lit8 v1, v0, 0x2

    .line 182
    .local v1, "intCount":I
    and-int/lit8 v2, v0, 0x3

    .line 184
    .local v2, "byteCount":I
    const/4 v3, 0x1

    .line 185
    .local v3, "hashCode":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 186
    .local v4, "arrayIndex":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_1

    .line 187
    move v5, v1

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_0

    .line 188
    mul-int/lit8 v6, v3, 0x1f

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    add-int v3, v6, v7

    .line 189
    add-int/lit8 v4, v4, 0x4

    .line 187
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 192
    :cond_1
    move v5, v1

    .restart local v5    # "i":I
    :goto_1
    if-lez v5, :cond_2

    .line 193
    mul-int/lit8 v6, v3, 0x1f

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v7

    add-int v3, v6, v7

    .line 194
    add-int/lit8 v4, v4, 0x4

    .line 192
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 198
    .end local v5    # "i":I
    :cond_2
    :goto_2
    move v5, v2

    .restart local v5    # "i":I
    :goto_3
    if-lez v5, :cond_3

    .line 199
    mul-int/lit8 v6, v3, 0x1f

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v7, "arrayIndex":I
    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    add-int v3, v6, v4

    .line 198
    add-int/lit8 v5, v5, -0x1

    move v4, v7

    goto :goto_3

    .line 202
    .end local v5    # "i":I
    .end local v7    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    :cond_3
    if-nez v3, :cond_4

    .line 203
    const/4 v3, 0x1

    .line 206
    :cond_4
    return v3
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 116
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 124
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$000(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    .line 132
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/buffer/ByteBufUtil;->hexDump([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump([BII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 140
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$100([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 378
    if-gt p1, p2, :cond_0

    .line 379
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->firstIndexOf(Lio/netty/buffer/ByteBuf;IIB)I

    move-result v0

    return v0

    .line 381
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->lastIndexOf(Lio/netty/buffer/ByteBuf;IIB)I

    move-result v0

    return v0
.end method

.method public static indexOf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p0, "needle"    # Lio/netty/buffer/ByteBuf;
    .param p1, "haystack"    # Lio/netty/buffer/ByteBuf;

    .line 214
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 215
    .local v0, "attempts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    .line 217
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    add-int/2addr v3, v1

    .line 218
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 216
    invoke-static {p0, v2, p1, v3, v4}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static isAscii(Lio/netty/buffer/ByteBuf;II)Z
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1314
    sget-object v0, Lio/netty/buffer/ByteBufUtil;->FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isText(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Z
    .locals 5
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 1264
    const-string v0, "buf"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1265
    const-string v0, "charset"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1266
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 1267
    .local v0, "maxIndex":I
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    sub-int v1, v0, p2

    if-gt p1, v1, :cond_3

    .line 1270
    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->isUtf8(Lio/netty/buffer/ByteBuf;II)Z

    move-result v1

    return v1

    .line 1272
    :cond_0
    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1273
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->isAscii(Lio/netty/buffer/ByteBuf;II)Z

    move-result v1

    return v1

    .line 1275
    :cond_1
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-static {p3, v1, v2}, Lio/netty/util/CharsetUtil;->decoder(Ljava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 1277
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1278
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 1280
    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    .local v2, "heapBuffer":Lio/netty/buffer/ByteBuf;
    :try_start_1
    invoke-virtual {v2, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1283
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v2, v4, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1285
    :try_start_2
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1286
    nop

    .line 1288
    .end local v2    # "heapBuffer":Lio/netty/buffer/ByteBuf;
    :goto_0
    return v3

    .line 1285
    .restart local v2    # "heapBuffer":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1286
    nop

    .end local v0    # "maxIndex":I
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local p0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "index":I
    .end local p2    # "length":I
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    throw v3
    :try_end_2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1289
    .end local v2    # "heapBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "maxIndex":I
    .restart local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local p0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "index":I
    .restart local p2    # "length":I
    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v2

    .line 1290
    .local v2, "ignore":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    return v3

    .line 1268
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v2    # "ignore":Ljava/nio/charset/CharacterCodingException;
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isText(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Z
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1249
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lio/netty/buffer/ByteBufUtil;->isText(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Z

    move-result v0

    return v0
.end method

.method private static isUtf8(Lio/netty/buffer/ByteBuf;II)Z
    .locals 9
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1361
    add-int v0, p1, p2

    .line 1362
    .local v0, "endIndex":I
    :goto_0
    if-ge p1, v0, :cond_12

    .line 1363
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    .line 1365
    .local p1, "b1":B
    and-int/lit16 v2, p1, 0x80

    if-nez v2, :cond_0

    .line 1367
    move p1, v1

    goto :goto_0

    .line 1369
    :cond_0
    and-int/lit16 v2, p1, 0xe0

    const/16 v3, 0xc0

    const/16 v4, 0x80

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4

    .line 1375
    if-lt v1, v0, :cond_1

    .line 1376
    return v5

    .line 1378
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 1379
    .local v1, "b2":B
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v4, :cond_2

    .line 1380
    return v5

    .line 1382
    :cond_2
    and-int/lit16 v3, p1, 0xff

    const/16 v4, 0xc2

    if-ge v3, v4, :cond_3

    .line 1383
    return v5

    .line 1382
    :cond_3
    move p1, v2

    goto/16 :goto_2

    .line 1385
    .end local v2    # "index":I
    .local v1, "index":I
    :cond_4
    and-int/lit16 v2, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_a

    .line 1394
    add-int/lit8 v2, v0, -0x2

    if-le v1, v2, :cond_5

    .line 1395
    return v5

    .line 1397
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 1398
    .local v1, "b2":B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    .line 1399
    .local v2, "b3":B
    and-int/lit16 v6, v1, 0xc0

    if-ne v6, v4, :cond_9

    and-int/lit16 v6, v2, 0xc0

    if-eq v6, v4, :cond_6

    goto :goto_1

    .line 1402
    :cond_6
    and-int/lit8 v4, p1, 0xf

    if-nez v4, :cond_7

    and-int/lit16 v4, v1, 0xff

    const/16 v6, 0xa0

    if-ge v4, v6, :cond_7

    .line 1403
    return v5

    .line 1405
    :cond_7
    and-int/lit8 v4, p1, 0xf

    const/16 v6, 0xd

    if-ne v4, v6, :cond_8

    and-int/lit16 v4, v1, 0xff

    const/16 v6, 0x9f

    if-le v4, v6, :cond_8

    .line 1406
    return v5

    .line 1434
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local p1    # "b1":B
    :cond_8
    move p1, v3

    goto :goto_2

    .line 1400
    .restart local v1    # "b2":B
    .restart local v2    # "b3":B
    .restart local p1    # "b1":B
    :cond_9
    :goto_1
    return v5

    .line 1408
    .end local v2    # "b3":B
    .end local v3    # "index":I
    .local v1, "index":I
    :cond_a
    and-int/lit16 v2, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_11

    .line 1416
    add-int/lit8 v2, v0, -0x3

    if-le v1, v2, :cond_b

    .line 1417
    return v5

    .line 1419
    :cond_b
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 1420
    .local v1, "b2":B
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    .line 1421
    .local v2, "b3":B
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    .line 1422
    .local v6, "b4":B
    and-int/lit16 v8, v1, 0xc0

    if-ne v8, v4, :cond_10

    and-int/lit16 v8, v2, 0xc0

    if-ne v8, v4, :cond_10

    and-int/lit16 v8, v6, 0xc0

    if-eq v8, v4, :cond_c

    goto :goto_4

    .line 1426
    :cond_c
    and-int/lit16 v4, p1, 0xff

    const/16 v8, 0xf4

    if-gt v4, v8, :cond_f

    and-int/lit16 v4, p1, 0xff

    if-ne v4, v3, :cond_d

    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x90

    if-lt v3, v4, :cond_f

    :cond_d
    and-int/lit16 v3, p1, 0xff

    if-ne v3, v8, :cond_e

    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8f

    if-le v3, v4, :cond_e

    goto :goto_3

    .line 1434
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v6    # "b4":B
    .end local p1    # "b1":B
    :cond_e
    move p1, v7

    .end local v7    # "index":I
    .local p1, "index":I
    :goto_2
    goto/16 :goto_0

    .line 1429
    .restart local v1    # "b2":B
    .restart local v2    # "b3":B
    .restart local v6    # "b4":B
    .restart local v7    # "index":I
    .local p1, "b1":B
    :cond_f
    :goto_3
    return v5

    .line 1424
    :cond_10
    :goto_4
    return v5

    .line 1432
    .end local v2    # "b3":B
    .end local v6    # "b4":B
    .end local v7    # "index":I
    .local v1, "index":I
    :cond_11
    return v5

    .line 1435
    .end local v1    # "index":I
    .local p1, "index":I
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method private static lastIndexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 468
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    .line 469
    .local v0, "capacity":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 470
    if-ltz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    sub-int v1, p1, p2

    new-instance v2, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    invoke-direct {v2, p3}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    invoke-virtual {p0, p2, v1, v2}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v1

    return v1

    .line 471
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public static prettyHexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 954
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 962
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$200(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 445
    const/4 v0, 0x1

    .line 446
    .local v0, "release":Z
    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 448
    .local v1, "dst":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    const/4 v0, 0x0

    .line 450
    nop

    .line 452
    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 450
    :cond_0
    return-object v1

    .line 452
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 455
    :cond_1
    throw v2
.end method

.method static readBytes(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IILjava/io/OutputStream;)V
    .locals 8
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p4, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 1447
    :cond_0
    const/16 v0, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1448
    .local v0, "chunkLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1450
    const/16 v1, 0x400

    if-le p3, v1, :cond_2

    invoke-interface {p0}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1454
    :cond_1
    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 1456
    .local v7, "tmpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    .line 1457
    .local v2, "tmp":[B
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    .line 1458
    .local v3, "offset":I
    move-object v1, p1

    move v4, v0

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v6}, Lio/netty/buffer/ByteBufUtil;->getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    .end local v2    # "tmp":[B
    .end local v3    # "offset":I
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1461
    goto :goto_1

    .line 1460
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1461
    throw v1

    .line 1451
    .end local v7    # "tmpBuf":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_0
    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p1

    move v4, v0

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v6}, Lio/netty/buffer/ByteBufUtil;->getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V

    .line 1464
    .end local v0    # "chunkLen":I
    :goto_1
    return-void
.end method

.method public static reserveAndWriteUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "reserveBytes"    # I

    .line 532
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method public static reserveAndWriteUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "reserveBytes"    # I

    .line 543
    invoke-static {p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method private static reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I
    .locals 3
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "reserveBytes"    # I

    .line 548
    :goto_0
    instance-of v0, p0, Lio/netty/buffer/WrappedCompositeByteBuf;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 551
    :cond_0
    instance-of v0, p0, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v0, :cond_1

    .line 552
    move-object v0, p0

    check-cast v0, Lio/netty/buffer/AbstractByteBuf;

    .line 553
    .local v0, "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    invoke-virtual {v0, p4}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 554
    iget v1, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I

    move-result v1

    .line 555
    .local v1, "written":I
    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 556
    return v1

    .line 557
    .end local v0    # "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    .end local v1    # "written":I
    :cond_1
    instance-of v0, p0, Lio/netty/buffer/WrappedByteBuf;

    if-eqz v0, :cond_2

    .line 559
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 561
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 562
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 563
    array-length v1, v0

    return v1
.end method

.method public static setShortBE(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "shortValue"    # I

    .line 430
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static swapInt(I)I
    .locals 1
    .param p0, "value"    # I

    .line 407
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static swapLong(J)J
    .locals 2
    .param p0, "value"    # J

    .line 414
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static swapMedium(I)I
    .locals 2
    .param p0, "value"    # I

    .line 396
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 397
    .local v0, "swapped":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 398
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 400
    :cond_0
    return v0
.end method

.method public static swapShort(S)S
    .locals 1
    .param p0, "value"    # S

    .line 389
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public static threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 849
    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    if-gtz v0, :cond_0

    .line 850
    const/4 v0, 0x0

    return-object v0

    .line 853
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;

    move-result-object v0

    return-object v0

    .line 856
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;

    move-result-object v0

    return-object v0
.end method

.method static threadLocalTempArray(I)[B
    .locals 1
    .param p0, "minLength"    # I

    .line 107
    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    sget-object v0, Lio/netty/buffer/ByteBufUtil;->BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    .line 107
    :goto_0
    return-object v0
.end method

.method private static utf8ByteCount(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 657
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 658
    sub-int v0, p2, p1

    return v0

    .line 660
    :cond_0
    move v0, p1

    .line 662
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_1
    sub-int v1, v0, p1

    if-ge v0, p2, :cond_2

    invoke-static {p0, v0, p2}, Lio/netty/buffer/ByteBufUtil;->utf8BytesNonAscii(Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    return v1
.end method

.method public static utf8Bytes(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 643
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/buffer/ByteBufUtil;->utf8ByteCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static utf8Bytes(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 653
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->utf8ByteCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static utf8BytesNonAscii(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "encodedLength":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_5

    .line 672
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 674
    .local v2, "c":C
    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    .line 676
    rsub-int/lit8 v3, v2, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_1

    .line 677
    :cond_0
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 678
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 679
    add-int/lit8 v0, v0, 0x1

    .line 681
    goto :goto_1

    .line 684
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_2

    .line 685
    add-int/lit8 v0, v0, 0x1

    .line 687
    goto :goto_2

    .line 689
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 691
    add-int/lit8 v0, v0, 0x2

    .line 692
    goto :goto_1

    .line 695
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 697
    :cond_4
    add-int/lit8 v0, v0, 0x3

    .line 671
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    :cond_5
    :goto_2
    return v0
.end method

.method public static utf8MaxBytes(I)I
    .locals 1
    .param p0, "seqLength"    # I

    .line 625
    sget v0, Lio/netty/buffer/ByteBufUtil;->MAX_BYTES_PER_CHAR_UTF8:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public static utf8MaxBytes(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 634
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v0

    return v0
.end method

.method static writeAscii(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "len"    # I

    .line 759
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 760
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v1, "writerIndex":I
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v2

    invoke-virtual {p0, p1, v2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 759
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    .line 762
    .end local v0    # "i":I
    .end local v1    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_0
    return p3
.end method

.method public static writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 726
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 727
    .local v0, "len":I
    instance-of v1, p1, Lio/netty/util/AsciiString;

    if-eqz v1, :cond_0

    .line 728
    move-object v1, p1

    check-cast v1, Lio/netty/util/AsciiString;

    .line 729
    .local v1, "asciiString":Lio/netty/util/AsciiString;
    invoke-virtual {v1}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 730
    .end local v1    # "asciiString":Lio/netty/util/AsciiString;
    nop

    .line 751
    return v0

    .line 732
    :cond_0
    :goto_0
    instance-of v1, p0, Lio/netty/buffer/WrappedCompositeByteBuf;

    if-eqz v1, :cond_1

    .line 734
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 735
    :cond_1
    instance-of v1, p0, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v1, :cond_2

    .line 736
    move-object v1, p0

    check-cast v1, Lio/netty/buffer/AbstractByteBuf;

    .line 737
    .local v1, "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    invoke-virtual {v1, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 738
    iget v2, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-static {v1, v2, p1, v0}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I

    move-result v2

    .line 739
    .local v2, "written":I
    iget v3, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v3, v2

    iput v3, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 740
    return v2

    .line 741
    .end local v1    # "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    .end local v2    # "written":I
    :cond_2
    instance-of v1, p0, Lio/netty/buffer/WrappedByteBuf;

    if-eqz v1, :cond_3

    .line 743
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 745
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 746
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 747
    array-length v2, v1

    return v2
.end method

.method public static writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 713
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 714
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0, p1}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 715
    return-object v0
.end method

.method public static writeMediumBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "mediumValue"    # I

    .line 438
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeMediumLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "shortValue"    # I

    .line 422
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeShortLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "len"    # I

    .line 569
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I
    .locals 7
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 574
    move v0, p1

    .line 578
    .local v0, "oldWriterIndex":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_5

    .line 579
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 580
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 581
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v3, "writerIndex":I
    int-to-byte v4, v2

    invoke-virtual {p0, p1, v4}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    move p1, v3

    goto :goto_1

    .line 582
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 583
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v4, "writerIndex":I
    shr-int/lit8 v5, v2, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 584
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, v4, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    goto :goto_1

    .line 585
    :cond_1
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v4

    const/16 v5, 0x3f

    if-eqz v4, :cond_4

    .line 586
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 587
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 588
    move p1, v3

    goto :goto_1

    .line 591
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p4, :cond_3

    .line 592
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 593
    move p1, v3

    goto :goto_2

    .line 596
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v2, v3}, Lio/netty/buffer/ByteBufUtil;->writeUtf8Surrogate(Lio/netty/buffer/AbstractByteBuf;ICC)I

    move-result p1

    goto :goto_1

    .line 598
    :cond_4
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v4    # "writerIndex":I
    shr-int/lit8 v6, v2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    invoke-virtual {p0, p1, v6}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 599
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p0, v4, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 600
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v4    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, p1, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    move p1, v4

    .line 578
    .end local v2    # "c":C
    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v1    # "i":I
    :cond_5
    :goto_2
    sub-int v1, p1, v0

    return v1
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I
    .locals 3
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 509
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 510
    .local v0, "seqLength":I
    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v1

    return v1
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 518
    invoke-static {p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    .line 519
    sub-int v0, p3, p2

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 495
    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 496
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0, p1}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 497
    return-object v0
.end method

.method private static writeUtf8Surrogate(Lio/netty/buffer/AbstractByteBuf;ICC)I
    .locals 4
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "c"    # C
    .param p3, "c2"    # C

    .line 607
    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    const/16 v1, 0x3f

    if-nez v0, :cond_1

    .line 608
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v0, "writerIndex":I
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 609
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 610
    return p1

    .line 612
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 614
    .local v0, "codePoint":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v2, "writerIndex":I
    shr-int/lit8 v3, v0, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-virtual {p0, p1, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 615
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v3, v0, 0xc

    and-int/2addr v3, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p0, v2, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 616
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v2    # "writerIndex":I
    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 617
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v1, v0, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v2, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 618
    return p1
.end method
