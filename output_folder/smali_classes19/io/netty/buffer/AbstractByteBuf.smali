.class public abstract Lio/netty/buffer/AbstractByteBuf;
.super Lio/netty/buffer/ByteBuf;
.source "AbstractByteBuf.java"


# static fields
.field private static final LEGACY_PROP_CHECK_ACCESSIBLE:Ljava/lang/String; = "io.netty.buffer.bytebuf.checkAccessible"

.field private static final PROP_CHECK_ACCESSIBLE:Ljava/lang/String; = "io.netty.buffer.checkAccessible"

.field private static final PROP_CHECK_BOUNDS:Ljava/lang/String; = "io.netty.buffer.checkBounds"

.field static final checkAccessible:Z

.field private static final checkBounds:Z

.field static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private markedReaderIndex:I

.field private markedWriterIndex:I

.field private maxCapacity:I

.field readerIndex:I

.field writerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    const-class v0, Lio/netty/buffer/AbstractByteBuf;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/AbstractByteBuf;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 56
    const-string v1, "io.netty.buffer.checkAccessible"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 57
    invoke-static {v1, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lio/netty/buffer/AbstractByteBuf;->checkAccessible:Z

    goto :goto_0

    .line 59
    :cond_0
    const-string v2, "io.netty.buffer.bytebuf.checkAccessible"

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lio/netty/buffer/AbstractByteBuf;->checkAccessible:Z

    .line 61
    :goto_0
    const-string v2, "io.netty.buffer.checkBounds"

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    .line 62
    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    sget-boolean v4, Lio/netty/buffer/AbstractByteBuf;->checkAccessible:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "-D{}: {}"

    invoke-interface {v0, v5, v1, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v5, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    :cond_1
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/AbstractByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    .line 68
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "maxCapacity"    # I

    .line 77
    invoke-direct {p0}, Lio/netty/buffer/ByteBuf;-><init>()V

    .line 78
    const-string v0, "maxCapacity"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 79
    iput p1, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    .line 80
    return-void
.end method

.method private static checkIndexBounds(III)V
    .locals 4
    .param p0, "readerIndex"    # I
    .param p1, "writerIndex"    # I
    .param p2, "capacity"    # I

    .line 111
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 116
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    const-string v2, "readerIndex: %d, writerIndex: %d (expected: 0 <= readerIndex <= writerIndex <= capacity(%d))"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkRangeBounds(Ljava/lang/String;III)V
    .locals 4
    .param p0, "indexName"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "fieldLength"    # I
    .param p3, "capacity"    # I

    .line 1424
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    return-void

    .line 1425
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 1426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1425
    const-string v2, "%s: %d, length: %d (expected: range(0, %d))"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkReadableBounds(Lio/netty/buffer/ByteBuf;I)V
    .locals 4
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "length"    # I

    .line 642
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 646
    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    .line 643
    const-string v2, "length(%d) exceeds src.readableBytes(%d) where src is: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkReadableBytes0(I)V
    .locals 4
    .param p1, "minimumReadableBytes"    # I

    .line 1475
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 1476
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 1477
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 1479
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 1477
    const-string v2, "readerIndex(%d) + length(%d) exceeds writerIndex(%d): %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_1
    :goto_0
    return-void
.end method

.method private firstIndexOf(IIB)I
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 1260
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1261
    const/4 v0, -0x1

    if-ge p1, p2, :cond_3

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1264
    :cond_0
    sub-int v1, p2, p1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 1266
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1267
    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v2

    if-ne v2, p3, :cond_1

    .line 1268
    return v1

    .line 1266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 1262
    :cond_3
    :goto_1
    return v0
.end method

.method private lastIndexOf(IIB)I
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 1276
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1277
    const/4 v0, -0x1

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1281
    :cond_0
    sub-int v1, p1, p2

    invoke-virtual {p0, p2, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 1283
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_2

    .line 1284
    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v2

    if-ne v2, p3, :cond_1

    .line 1285
    return v1

    .line 1283
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1289
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 1278
    :cond_3
    :goto_1
    return v0
.end method

.method private setCharSequence0(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;Z)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "sequence"    # Ljava/lang/CharSequence;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "expand"    # Z

    .line 700
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(Ljava/lang/CharSequence;)I

    move-result v0

    .line 702
    .local v0, "length":I
    if-eqz p4, :cond_0

    .line 703
    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 704
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex0(II)V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 708
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I

    move-result v1

    return v1

    .line 710
    .end local v0    # "length":I
    :cond_1
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 720
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 721
    .local v0, "bytes":[B
    if-eqz p4, :cond_3

    .line 722
    array-length v1, v0

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 725
    :cond_3
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->setBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 726
    array-length v1, v0

    return v1

    .line 711
    .end local v0    # "bytes":[B
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 712
    .local v0, "length":I
    if-eqz p4, :cond_5

    .line 713
    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 714
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex0(II)V

    goto :goto_2

    .line 716
    :cond_5
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 718
    :goto_2
    invoke-static {p0, p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract _getByte(I)B
.end method

.method protected abstract _getInt(I)I
.end method

.method protected abstract _getIntLE(I)I
.end method

.method protected abstract _getLong(I)J
.end method

.method protected abstract _getLongLE(I)J
.end method

.method protected abstract _getShort(I)S
.end method

.method protected abstract _getShortLE(I)S
.end method

.method protected abstract _getUnsignedMedium(I)I
.end method

.method protected abstract _getUnsignedMediumLE(I)I
.end method

.method protected abstract _setByte(II)V
.end method

.method protected abstract _setInt(II)V
.end method

.method protected abstract _setIntLE(II)V
.end method

.method protected abstract _setLong(IJ)V
.end method

.method protected abstract _setLongLE(IJ)V
.end method

.method protected abstract _setMedium(II)V
.end method

.method protected abstract _setMediumLE(II)V
.end method

.method protected abstract _setShort(II)V
.end method

.method protected abstract _setShortLE(II)V
.end method

.method protected final adjustMarkers(I)V
    .locals 3
    .param p1, "decrement"    # I

    .line 258
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->markedReaderIndex:I

    .line 259
    .local v0, "markedReaderIndex":I
    if-gt v0, p1, :cond_1

    .line 260
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->markedReaderIndex:I

    .line 261
    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    .line 262
    .local v2, "markedWriterIndex":I
    if-gt v2, p1, :cond_0

    .line 263
    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    goto :goto_0

    .line 265
    :cond_0
    sub-int v1, v2, p1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    .line 267
    .end local v2    # "markedWriterIndex":I
    :goto_0
    goto :goto_1

    .line 268
    :cond_1
    sub-int v1, v0, p1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->markedReaderIndex:I

    .line 269
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    sub-int/2addr v1, p1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    .line 271
    :goto_1
    return-void
.end method

.method public asReadOnly()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-object p0

    .line 93
    :cond_0
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->unmodifiableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bytesBefore(B)I
    .locals 2
    .param p1, "value"    # B

    .line 1294
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IB)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "value"    # B

    .line 1299
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 1300
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .line 1305
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0, p3}, Lio/netty/buffer/AbstractByteBuf;->indexOf(IIB)I

    move-result v0

    .line 1306
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 1307
    const/4 v1, -0x1

    return v1

    .line 1309
    :cond_0
    sub-int v1, v0, p1

    return v1
.end method

.method protected final checkDstIndex(III)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "dstIndex"    # I
    .param p3, "dstCapacity"    # I

    .line 1451
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 1452
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 1453
    const-string v0, "dstIndex"

    invoke-static {v0, p2, p1, p3}, Lio/netty/buffer/AbstractByteBuf;->checkRangeBounds(Ljava/lang/String;III)V

    .line 1455
    :cond_0
    return-void
.end method

.method protected final checkDstIndex(IIII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "dstIndex"    # I
    .param p4, "dstCapacity"    # I

    .line 1444
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 1445
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 1446
    const-string v0, "dstIndex"

    invoke-static {v0, p3, p2, p4}, Lio/netty/buffer/AbstractByteBuf;->checkRangeBounds(Ljava/lang/String;III)V

    .line 1448
    :cond_0
    return-void
.end method

.method protected final checkIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1414
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 1415
    return-void
.end method

.method protected final checkIndex(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "fieldLength"    # I

    .line 1418
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 1419
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex0(II)V

    .line 1420
    return-void
.end method

.method final checkIndex0(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "fieldLength"    # I

    .line 1431
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v0

    const-string v1, "index"

    invoke-static {v1, p1, p2, v0}, Lio/netty/buffer/AbstractByteBuf;->checkRangeBounds(Ljava/lang/String;III)V

    .line 1434
    :cond_0
    return-void
.end method

.method protected final checkNewCapacity(I)V
    .locals 3
    .param p1, "newCapacity"    # I

    .line 1467
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 1468
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 1469
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1470
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_1
    :goto_0
    return-void
.end method

.method protected final checkReadableBytes(I)V
    .locals 1
    .param p1, "minimumReadableBytes"    # I

    .line 1463
    const-string v0, "minimumReadableBytes"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 1464
    return-void
.end method

.method protected final checkSrcIndex(IIII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "srcIndex"    # I
    .param p4, "srcCapacity"    # I

    .line 1437
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 1438
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 1439
    const-string v0, "srcIndex"

    invoke-static {v0, p3, p2, p4}, Lio/netty/buffer/AbstractByteBuf;->checkRangeBounds(Ljava/lang/String;III)V

    .line 1441
    :cond_0
    return-void
.end method

.method public clear()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 153
    return-object p0
.end method

.method public compareTo(Lio/netty/buffer/ByteBuf;)I
    .locals 1
    .param p1, "that"    # Lio/netty/buffer/ByteBuf;

    .line 1387
    invoke-static {p0, p1}, Lio/netty/buffer/ByteBufUtil;->compare(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->compareTo(Lio/netty/buffer/ByteBuf;)I

    move-result p1

    return p1
.end method

.method public copy()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1195
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method final discardMarks()V
    .locals 1

    .line 1499
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->markedReaderIndex:I

    .line 1500
    return-void
.end method

.method public discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 217
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 219
    return-object p0

    .line 222
    :cond_0
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 223
    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 224
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 225
    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->adjustMarkers(I)V

    .line 226
    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 229
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->adjustMarkers(I)V

    .line 230
    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 232
    :goto_0
    return-object p0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 237
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    if-lez v0, :cond_1

    .line 238
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 240
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->adjustMarkers(I)V

    .line 241
    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 242
    return-object p0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1

    .line 246
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 247
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 248
    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->adjustMarkers(I)V

    .line 249
    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 250
    return-object p0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 254
    return-object p0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1200
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 1201
    new-instance v0, Lio/netty/buffer/UnpooledDuplicatedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnpooledDuplicatedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0
.end method

.method protected final ensureAccessible()V
    .locals 2

    .line 1488
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkAccessible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1489
    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0

    .line 1491
    :cond_1
    :goto_0
    return-void
.end method

.method public ensureWritable(IZ)I
    .locals 5
    .param p1, "minWritableBytes"    # I
    .param p2, "force"    # Z

    .line 311
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 312
    const-string v0, "minWritableBytes"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writableBytes()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 315
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity()I

    move-result v0

    .line 319
    .local v0, "maxCapacity":I
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v1

    .line 320
    .local v1, "writerIndex":I
    sub-int v2, v0, v1

    if-le p1, v2, :cond_3

    .line 321
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->capacity(I)Lio/netty/buffer/ByteBuf;

    .line 326
    const/4 v2, 0x3

    return v2

    .line 322
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 329
    :cond_3
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxFastWritableBytes()I

    move-result v2

    .line 330
    .local v2, "fastWritable":I
    if-lt v2, p1, :cond_4

    add-int v3, v1, v2

    goto :goto_1

    .line 331
    :cond_4
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    add-int v4, v1, p1

    invoke-interface {v3, v4, v0}, Lio/netty/buffer/ByteBufAllocator;->calculateNewCapacity(II)I

    move-result v3

    :goto_1
    nop

    .line 334
    .local v3, "newCapacity":I
    invoke-virtual {p0, v3}, Lio/netty/buffer/AbstractByteBuf;->capacity(I)Lio/netty/buffer/ByteBuf;

    .line 335
    const/4 v4, 0x2

    return v4
.end method

.method public ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "minWritableBytes"    # I

    .line 282
    const-string v0, "minWritableBytes"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 283
    return-object p0
.end method

.method final ensureWritable0(I)V
    .locals 6
    .param p1, "minWritableBytes"    # I

    .line 287
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v0

    .line 288
    .local v0, "writerIndex":I
    add-int v1, v0, p1

    .line 289
    .local v1, "targetCapacity":I
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 291
    return-void

    .line 293
    :cond_0
    sget-boolean v2, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 295
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p0, v3, v4

    .line 295
    const-string v4, "writerIndex(%d) + minWritableBytes(%d) exceeds maxCapacity(%d): %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxFastWritableBytes()I

    move-result v2

    .line 302
    .local v2, "fastWritable":I
    if-lt v2, p1, :cond_3

    add-int v3, v0, v2

    goto :goto_1

    .line 303
    :cond_3
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    iget v4, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    invoke-interface {v3, v1, v4}, Lio/netty/buffer/ByteBufAllocator;->calculateNewCapacity(II)I

    move-result v3

    :goto_1
    nop

    .line 306
    .local v3, "newCapacity":I
    invoke-virtual {p0, v3}, Lio/netty/buffer/AbstractByteBuf;->capacity(I)Lio/netty/buffer/ByteBuf;

    .line 307
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1382
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-static {p0, v0}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public forEachByte(IILio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 1325
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 1327
    add-int v0, p1, p2

    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteAsc0(IILio/netty/util/ByteProcessor;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 1330
    const/4 v1, -0x1

    return v1
.end method

.method public forEachByte(Lio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "processor"    # Lio/netty/util/ByteProcessor;

    .line 1314
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 1316
    :try_start_0
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->forEachByteAsc0(IILio/netty/util/ByteProcessor;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 1319
    const/4 v1, -0x1

    return v1
.end method

.method forEachByteAsc0(IILio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1335
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1336
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    invoke-interface {p3, v0}, Lio/netty/util/ByteProcessor;->process(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    return p1

    .line 1335
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1341
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 1357
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 1359
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteDesc0(IILio/netty/util/ByteProcessor;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 1362
    const/4 v1, -0x1

    return v1
.end method

.method public forEachByteDesc(Lio/netty/util/ByteProcessor;)I
    .locals 2
    .param p1, "processor"    # Lio/netty/util/ByteProcessor;

    .line 1346
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 1348
    :try_start_0
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->forEachByteDesc0(IILio/netty/util/ByteProcessor;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 1351
    const/4 v1, -0x1

    return v1
.end method

.method forEachByteDesc0(IILio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "rStart"    # I
    .param p2, "rEnd"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1367
    :goto_0
    if-lt p1, p2, :cond_1

    .line 1368
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    invoke-interface {p3, v0}, Lio/netty/util/ByteProcessor;->process(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    return p1

    .line 1367
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1372
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 364
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getByte(I)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 356
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(I)V

    .line 357
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 497
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 498
    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 503
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 504
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 505
    return-object p0
.end method

.method public getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 491
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/netty/buffer/AbstractByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 492
    return-object p0
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .line 476
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 510
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 512
    :cond_1
    :goto_0
    new-instance v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 486
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 481
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 434
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 435
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 442
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 443
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getIntLE(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 460
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 461
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 468
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 469
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 416
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getUnsignedMedium(I)I

    move-result v0

    .line 417
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 418
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 420
    :cond_0
    return v0
.end method

.method public getMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 425
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getUnsignedMediumLE(I)I

    move-result v0

    .line 426
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 427
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 429
    :cond_0
    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 374
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 375
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getShort(I)S

    move-result v0

    return v0
.end method

.method public getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 382
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 383
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getShortLE(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1
    .param p1, "index"    # I

    .line 369
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 4
    .param p1, "index"    # I

    .line 450
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedIntLE(I)J
    .locals 4
    .param p1, "index"    # I

    .line 455
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getIntLE(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 400
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 401
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 408
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 409
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 2
    .param p1, "index"    # I

    .line 390
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedShortLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 395
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->getShortLE(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1377
    invoke-static {p0}, Lio/netty/buffer/ByteBufUtil;->hashCode(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 1252
    if-gt p1, p2, :cond_0

    .line 1253
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->firstIndexOf(IIB)I

    move-result v0

    return v0

    .line 1255
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->lastIndexOf(IIB)I

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isReadable()Z
    .locals 2

    .line 158
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadable(I)Z
    .locals 2
    .param p1, "numBytes"    # I

    .line 163
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritable()Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritable(I)Z
    .locals 2
    .param p1, "numBytes"    # I

    .line 173
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 193
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->markedReaderIndex:I

    .line 194
    return-object p0
.end method

.method public markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 205
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    .line 206
    return-object p0
.end method

.method public maxCapacity()I
    .locals 1

    .line 98
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    return v0
.end method

.method protected final maxCapacity(I)V
    .locals 0
    .param p1, "maxCapacity"    # I

    .line 102
    iput p1, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    .line 103
    return-void
.end method

.method public maxWritableBytes()I
    .locals 2

    .line 188
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->maxCapacity()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;
    .locals 1

    .line 351
    new-instance v0, Lio/netty/buffer/SwappedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1232
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1237
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .line 340
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 341
    return-object p0

    .line 343
    :cond_0
    const-string v0, "endianness"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1

    .line 740
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 3

    .line 731
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 732
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 733
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v1

    .line 734
    .local v1, "b":B
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 735
    return v1
.end method

.method public readBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 6
    .param p1, "out"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    invoke-virtual {p0, p4}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 957
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    .line 958
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 959
    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    invoke-virtual {p0, p2}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 948
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    .line 949
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 950
    return v0
.end method

.method public readBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "length"    # I

    .line 867
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 868
    if-nez p1, :cond_0

    .line 869
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 872
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    invoke-interface {v0, p1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 873
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {v0, p0, v1, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 874
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 875
    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 910
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 911
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 916
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 919
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 918
    const-string v2, "length(%d) exceeds dst.writableBytes(%d) where dst is: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/buffer/AbstractByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 923
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 924
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 929
    invoke-virtual {p0, p3}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 930
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 931
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 932
    return-object p0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 964
    invoke-virtual {p0, p2}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 965
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 966
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 967
    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 937
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 938
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 939
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 940
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 941
    return-object p0
.end method

.method public readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "dst"    # [B

    .line 904
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/buffer/AbstractByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 905
    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 896
    invoke-virtual {p0, p3}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 897
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 898
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 899
    return-object p0
.end method

.method public readChar()C
    .locals 1

    .line 852
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readCharSequence(ILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 519
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 520
    .local v0, "sequence":Ljava/lang/CharSequence;
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 521
    return-object v0
.end method

.method public readDouble()D
    .locals 2

    .line 862
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 857
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 3

    .line 810
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 811
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getInt(I)I

    move-result v1

    .line 812
    .local v1, "v":I
    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 813
    return v1
.end method

.method public readIntLE()I
    .locals 3

    .line 818
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 819
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getIntLE(I)I

    move-result v1

    .line 820
    .local v1, "v":I
    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 821
    return v1
.end method

.method public readLong()J
    .locals 4

    .line 836
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 837
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getLong(I)J

    move-result-wide v1

    .line 838
    .local v1, "v":J
    iget v3, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 839
    return-wide v1
.end method

.method public readLongLE()J
    .locals 4

    .line 844
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 845
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getLongLE(I)J

    move-result-wide v1

    .line 846
    .local v1, "v":J
    iget v3, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 847
    return-wide v1
.end method

.method public readMedium()I
    .locals 2

    .line 776
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readUnsignedMedium()I

    move-result v0

    .line 777
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 778
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 780
    :cond_0
    return v0
.end method

.method public readMediumLE()I
    .locals 2

    .line 785
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readUnsignedMediumLE()I

    move-result v0

    .line 786
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 787
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 789
    :cond_0
    return v0
.end method

.method public readRetainedSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "length"    # I

    .line 888
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 889
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 890
    .local v0, "slice":Lio/netty/buffer/ByteBuf;
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 891
    return-object v0
.end method

.method public readShort()S
    .locals 3

    .line 750
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 751
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getShort(I)S

    move-result v1

    .line 752
    .local v1, "v":S
    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 753
    return v1
.end method

.method public readShortLE()S
    .locals 3

    .line 758
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 759
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getShortLE(I)S

    move-result v1

    .line 760
    .local v1, "v":S
    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 761
    return v1
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "length"    # I

    .line 880
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 881
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 882
    .local v0, "slice":Lio/netty/buffer/ByteBuf;
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 883
    return-object v0
.end method

.method public readUnsignedByte()S
    .locals 1

    .line 745
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4

    .line 826
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedIntLE()J
    .locals 4

    .line 831
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readIntLE()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 3

    .line 794
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 795
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMedium(I)I

    move-result v1

    .line 796
    .local v1, "v":I
    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 797
    return v1
.end method

.method public readUnsignedMediumLE()I
    .locals 3

    .line 802
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes0(I)V

    .line 803
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMediumLE(I)I

    move-result v1

    .line 804
    .local v1, "v":I
    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 805
    return v1
.end method

.method public readUnsignedShort()I
    .locals 2

    .line 766
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedShortLE()I
    .locals 2

    .line 771
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readShortLE()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .line 178
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readerIndex()I
    .locals 1

    .line 107
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    return v0
.end method

.method public readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "readerIndex"    # I

    .line 120
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndexBounds(III)V

    .line 123
    :cond_0
    iput p1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 124
    return-object p0
.end method

.method public resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 199
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->markedReaderIndex:I

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 200
    return-object p0
.end method

.method public resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 211
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->markedWriterIndex:I

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 212
    return-object p0
.end method

.method public retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1206
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1227
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 535
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 536
    return-object p0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 526
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(I)V

    .line 527
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 528
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .line 637
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 638
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 650
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 651
    const-string v0, "src"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 652
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 653
    invoke-static {p2, p3}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBounds(Lio/netty/buffer/ByteBuf;I)V

    .line 656
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 657
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 658
    return-object p0
.end method

.method public setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 631
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/netty/buffer/AbstractByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 632
    return-object p0
.end method

.method public setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 559
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 560
    return-object p0
.end method

.method public setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "sequence"    # Ljava/lang/CharSequence;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/AbstractByteBuf;->setCharSequence0(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;Z)I

    move-result v0

    return v0
.end method

.method public setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 625
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 626
    return-object p0
.end method

.method public setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 601
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 602
    return-object p0
.end method

.method public setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .line 143
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v0

    invoke-static {p1, p2, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndexBounds(III)V

    .line 146
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->setIndex0(II)V

    .line 147
    return-object p0
.end method

.method final setIndex0(II)V
    .locals 0
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .line 1494
    iput p1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 1495
    iput p2, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1496
    return-void
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 583
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 584
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    .line 585
    return-object p0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 592
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 593
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setIntLE(II)V

    .line 594
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 607
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 608
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->_setLong(IJ)V

    .line 609
    return-object p0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 616
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 617
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->_setLongLE(IJ)V

    .line 618
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 565
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setMedium(II)V

    .line 567
    return-object p0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 574
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 575
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setMediumLE(II)V

    .line 576
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 541
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 542
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setShort(II)V

    .line 543
    return-object p0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 550
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 551
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setShortLE(II)V

    .line 552
    return-object p0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 663
    if-nez p2, :cond_0

    .line 664
    return-object p0

    .line 667
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 669
    ushr-int/lit8 v0, p2, 0x3

    .line 670
    .local v0, "nLong":I
    and-int/lit8 v1, p2, 0x7

    .line 671
    .local v1, "nBytes":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 672
    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lio/netty/buffer/AbstractByteBuf;->_setLong(IJ)V

    .line 673
    add-int/lit8 p1, p1, 0x8

    .line 671
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 675
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 676
    invoke-virtual {p0, p1, v2}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    goto :goto_3

    .line 678
    :cond_2
    if-ge v1, v3, :cond_4

    .line 679
    move v3, v1

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 680
    invoke-virtual {p0, p1, v2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 681
    add-int/lit8 p1, p1, 0x1

    .line 679
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_3
    goto :goto_3

    .line 684
    :cond_4
    invoke-virtual {p0, p1, v2}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    .line 685
    add-int/lit8 p1, p1, 0x4

    .line 686
    add-int/lit8 v3, v1, -0x4

    .restart local v3    # "i":I
    :goto_2
    if-lez v3, :cond_5

    .line 687
    invoke-virtual {p0, p1, v2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 688
    add-int/lit8 p1, p1, 0x1

    .line 686
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 691
    .end local v3    # "i":I
    :cond_5
    :goto_3
    return-object p0
.end method

.method public skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 972
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBytes(I)V

    .line 973
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    .line 974
    return-object p0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1211
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1221
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->ensureAccessible()V

    .line 1222
    new-instance v0, Lio/netty/buffer/UnpooledSlicedByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledSlicedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1392
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->refCnt()I

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(freed)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1398
    const-string v1, "(ridx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1399
    const-string v1, ", widx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1400
    const-string v1, ", cap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1401
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1402
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/AbstractByteBuf;->maxCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1405
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 1406
    .local v1, "unwrapped":Lio/netty/buffer/ByteBuf;
    if-eqz v1, :cond_2

    .line 1407
    const-string v2, ", unwrapped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1409
    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 1247
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->decodeString(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1242
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final trimIndicesToCapacity(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 275
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 276
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->readerIndex()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractByteBuf;->setIndex0(II)V

    .line 278
    :cond_0
    return-void
.end method

.method public writableBytes()I
    .locals 2

    .line 183
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # Z

    .line 979
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 980
    return-object p0
.end method

.method public writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 985
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 986
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 987
    return-object p0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    invoke-virtual {p0, p2}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1123
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    .line 1124
    .local v0, "writtenBytes":I
    if-lez v0, :cond_0

    .line 1125
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1127
    :cond_0
    return v0
.end method

.method public writeBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 6
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    invoke-virtual {p0, p4}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1143
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    .line 1144
    .local v0, "writtenBytes":I
    if-lez v0, :cond_0

    .line 1145
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1147
    :cond_0
    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    invoke-virtual {p0, p2}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1133
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    .line 1134
    .local v0, "writtenBytes":I
    if-lez v0, :cond_0

    .line 1135
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1137
    :cond_0
    return v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .line 1088
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 1089
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 1094
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 1095
    invoke-static {p1, p2}, Lio/netty/buffer/AbstractByteBuf;->checkReadableBounds(Lio/netty/buffer/ByteBuf;I)V

    .line 1097
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/buffer/AbstractByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1098
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1099
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 1104
    invoke-virtual {p0, p3}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1105
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1106
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1107
    return-object p0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1113
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1114
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 1115
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1116
    return-object p0
.end method

.method public writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "src"    # [B

    .line 1082
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/buffer/AbstractByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 1083
    return-object p0
.end method

.method public writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 1074
    invoke-virtual {p0, p3}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1075
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 1076
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1077
    return-object p0
.end method

.method public writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 1056
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 1057
    return-object p0
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 1188
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lio/netty/buffer/AbstractByteBuf;->setCharSequence0(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;Z)I

    move-result v0

    .line 1189
    .local v0, "written":I
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1190
    return v0
.end method

.method public writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # D

    .line 1068
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 1069
    return-object p0
.end method

.method public writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # F

    .line 1062
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 1063
    return-object p0
.end method

.method public writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 1024
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1025
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    .line 1026
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1027
    return-object p0
.end method

.method public writeIntLE(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 1032
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1033
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->_setIntLE(II)V

    .line 1034
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1035
    return-object p0
.end method

.method public writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # J

    .line 1040
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1041
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setLong(IJ)V

    .line 1042
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1043
    return-object p0
.end method

.method public writeLongLE(J)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # J

    .line 1048
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1049
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setLongLE(IJ)V

    .line 1050
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1051
    return-object p0
.end method

.method public writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 1008
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1009
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->_setMedium(II)V

    .line 1010
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1011
    return-object p0
.end method

.method public writeMediumLE(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 1016
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1017
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->_setMediumLE(II)V

    .line 1018
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1019
    return-object p0
.end method

.method public writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 992
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 993
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->_setShort(II)V

    .line 994
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 995
    return-object p0
.end method

.method public writeShortLE(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 1000
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1001
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lio/netty/buffer/AbstractByteBuf;->_setShortLE(II)V

    .line 1002
    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1003
    return-object p0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "length"    # I

    .line 1152
    if-nez p1, :cond_0

    .line 1153
    return-object p0

    .line 1156
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1157
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1158
    .local v0, "wIndex":I
    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex0(II)V

    .line 1160
    ushr-int/lit8 v1, p1, 0x3

    .line 1161
    .local v1, "nLong":I
    and-int/lit8 v2, p1, 0x7

    .line 1162
    .local v2, "nBytes":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 1163
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lio/netty/buffer/AbstractByteBuf;->_setLong(IJ)V

    .line 1164
    add-int/lit8 v0, v0, 0x8

    .line 1162
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1166
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 1167
    invoke-virtual {p0, v0, v3}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    .line 1168
    add-int/2addr v0, v4

    goto :goto_3

    .line 1169
    :cond_2
    if-ge v2, v4, :cond_4

    .line 1170
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-lez v4, :cond_3

    .line 1171
    invoke-virtual {p0, v0, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 1172
    add-int/lit8 v0, v0, 0x1

    .line 1170
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_3
    goto :goto_3

    .line 1175
    :cond_4
    invoke-virtual {p0, v0, v3}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    .line 1176
    add-int/2addr v0, v4

    .line 1177
    add-int/lit8 v4, v2, -0x4

    .restart local v4    # "i":I
    :goto_2
    if-lez v4, :cond_5

    .line 1178
    invoke-virtual {p0, v0, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 1179
    add-int/lit8 v0, v0, 0x1

    .line 1177
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1182
    .end local v4    # "i":I
    :cond_5
    :goto_3
    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1183
    return-object p0
.end method

.method public writerIndex()I
    .locals 1

    .line 129
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return v0
.end method

.method public writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "writerIndex"    # I

    .line 134
    sget-boolean v0, Lio/netty/buffer/AbstractByteBuf;->checkBounds:Z

    if-eqz v0, :cond_0

    .line 135
    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->readerIndex:I

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v1

    invoke-static {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndexBounds(III)V

    .line 137
    :cond_0
    iput p1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 138
    return-object p0
.end method
