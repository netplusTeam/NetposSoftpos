.class public abstract Lorg/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# static fields
.field static final CHUNK_SEPARATOR:[B

.field protected static final DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field private static final MAX_BUFFER_SIZE:I = 0x7ffffff7

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final chunkSeparatorLength:I

.field private final decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field protected final pad:B

.field private final unencodedBlockSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    sget-object v0, Lorg/apache/commons/codec/CodecPolicy;->LENIENT:Lorg/apache/commons/codec/CodecPolicy;

    sput-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->CHUNK_SEPARATOR:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method protected constructor <init>(IIII)V
    .locals 6
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .line 350
    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    .line 351
    return-void
.end method

.method protected constructor <init>(IIIIB)V
    .locals 7
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I
    .param p5, "pad"    # B

    .line 364
    sget-object v6, Lorg/apache/commons/codec/binary/BaseNCodec;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V

    .line 365
    return-void
.end method

.method protected constructor <init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V
    .locals 2
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I
    .param p5, "pad"    # B
    .param p6, "decodingPolicy"    # Lorg/apache/commons/codec/CodecPolicy;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 380
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 381
    iput p2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    .line 382
    const/4 v0, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 383
    .local v1, "useChunking":Z
    :goto_0
    if-eqz v1, :cond_1

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :cond_1
    iput v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 384
    iput p4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 385
    iput-byte p5, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    .line 386
    const-string v0, "codecPolicy"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/CodecPolicy;

    iput-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

    .line 387
    return-void
.end method

.method private static compareUnsigned(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 210
    const/high16 v0, -0x80000000

    add-int v1, p0, v0

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static createPositiveCapacity(I)I
    .locals 6
    .param p0, "minCapacity"    # I

    .line 223
    if-ltz p0, :cond_1

    .line 235
    const v0, 0x7ffffff7

    if-le p0, v0, :cond_0

    move v0, p0

    :cond_0
    return v0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allocate array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getChunkSeparator()[B
    .locals 1

    .line 248
    sget-object v0, Lorg/apache/commons/codec/binary/BaseNCodec;->CHUNK_SEPARATOR:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1
    .param p0, "byteToCheck"    # B

    .line 259
    sparse-switch p0, :sswitch_data_0

    .line 266
    const/4 v0, 0x0

    return v0

    .line 264
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;I)[B
    .locals 6
    .param p0, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    .param p1, "minCapacity"    # I

    .line 279
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    .line 280
    .local v0, "oldCapacity":I
    mul-int/lit8 v1, v0, 0x2

    .line 281
    .local v1, "newCapacity":I
    invoke-static {v1, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->compareUnsigned(II)I

    move-result v2

    if-gez v2, :cond_0

    .line 282
    move v1, p1

    .line 284
    :cond_0
    const v2, 0x7ffffff7

    invoke-static {v1, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->compareUnsigned(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 285
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->createPositiveCapacity(I)I

    move-result v1

    .line 288
    :cond_1
    new-array v2, v1, [B

    .line 289
    .local v2, "b":[B
    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget-object v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iput-object v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 291
    return-object v2
.end method


# virtual methods
.method available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 2
    .param p1, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 396
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 5
    .param p1, "arrayOctet"    # [B

    .line 409
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 410
    return v0

    .line 412
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    .line 413
    .local v3, "element":B
    iget-byte v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 412
    .end local v3    # "element":B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .restart local v3    # "element":B
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 417
    .end local v3    # "element":B
    :cond_3
    return v0
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 456
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 457
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 459
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 461
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pArray"    # Ljava/lang/String;

    .line 473
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .line 429
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 433
    .local v0, "context":Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 434
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 435
    iget v1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array v1, v1, [B

    .line 436
    .local v1, "result":[B
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    .line 437
    return-object v1

    .line 430
    .end local v0    # "context":Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    .end local v1    # "result":[B
    :cond_1
    :goto_0
    return-object p1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 531
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 534
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0

    .line 532
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "pArray"    # [B

    .line 485
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BII)[B

    move-result-object v0

    return-object v0

    .line 486
    :cond_1
    :goto_0
    return-object p1
.end method

.method public encode([BII)[B
    .locals 4
    .param p1, "pArray"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 505
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 509
    .local v0, "context":Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 510
    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 511
    iget v1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 512
    .local v1, "buf":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    .line 513
    return-object v1

    .line 506
    .end local v0    # "context":Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    .end local v1    # "buf":[B
    :cond_1
    :goto_0
    return-object p1
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .line 547
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .line 559
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 570
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 572
    const/4 v0, 0x0

    iput v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 573
    iput v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    goto :goto_0

    .line 577
    :cond_0
    iget v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v0, p1

    iget-object v1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 578
    iget v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v0, p1

    invoke-static {p2, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;I)[B

    move-result-object v0

    return-object v0

    .line 580
    :cond_1
    :goto_0
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object v0
.end method

.method public getCodecPolicy()Lorg/apache/commons/codec/CodecPolicy;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

    return-object v0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    .line 605
    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 7
    .param p1, "pArray"    # [B

    .line 619
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 620
    .local v0, "len":J
    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_0

    .line 622
    int-to-long v3, v2

    add-long/2addr v3, v0

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    int-to-long v5, v2

    div-long/2addr v3, v5

    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v5, v2

    mul-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 624
    :cond_0
    return-wide v0
.end method

.method hasData(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .locals 1
    .param p1, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 634
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "basen"    # Ljava/lang/String;

    .line 677
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .locals 5
    .param p1, "arrayOctet"    # [B
    .param p2, "allowWSPad"    # Z

    .line 658
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p1, v2

    .line 659
    .local v3, "octet":B
    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    iget-byte v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v3, v4, :cond_1

    .line 660
    invoke-static {v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 661
    :cond_0
    return v1

    .line 658
    .end local v3    # "octet":B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isStrictDecoding()Z
    .locals 2

    .line 693
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->decodingPolicy:Lorg/apache/commons/codec/CodecPolicy;

    sget-object v1, Lorg/apache/commons/codec/CodecPolicy;->STRICT:Lorg/apache/commons/codec/CodecPolicy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 713
    iget-object v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 715
    .local v0, "len":I
    iget-object v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 717
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt v1, v2, :cond_0

    .line 718
    const/4 v1, 0x0

    iput-object v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 720
    :cond_0
    return v0

    .line 722
    .end local v0    # "len":I
    :cond_1
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
