.class public Lcom/sleepycat/bind/tuple/TupleOutput;
.super Lcom/sleepycat/util/FastOutputStream;
.source "TupleOutput.java"


# static fields
.field static final NULL_STRING_UTF_VALUE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sleepycat/util/FastOutputStream;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .line 63
    invoke-direct {p0, p1}, Lcom/sleepycat/util/FastOutputStream;-><init>([B)V

    .line 64
    return-void
.end method

.method public static getBigDecimalMaxByteLength(Ljava/math/BigDecimal;)I
    .locals 2
    .param p0, "val"    # Ljava/math/BigDecimal;

    .line 623
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 624
    .local v0, "unscaledVal":Ljava/math/BigInteger;
    nop

    .line 625
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    .line 624
    return v1
.end method

.method public static getBigIntegerByteLength(Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "val"    # Ljava/math/BigInteger;

    .line 566
    nop

    .line 567
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    .line 566
    return v0
.end method

.method public static getSortedBigDecimalMaxByteLength(Ljava/math/BigDecimal;)I
    .locals 3
    .param p0, "val"    # Ljava/math/BigDecimal;

    .line 769
    invoke-virtual {p0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "digitsStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x9

    .line 774
    .local v1, "numOfGroups":I
    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private final writeSortedNormalizedBigDecimal(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 11
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 702
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    .line 703
    .local v0, "precision":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 704
    .local v1, "scale":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    .line 707
    .local v2, "sign":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "digitsStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .local v4, "groupDigits":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 715
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 718
    .local v5, "digit":C
    const/16 v7, 0x2e

    if-eq v5, v7, :cond_0

    .line 719
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x9

    if-ne v6, v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v7, v8, :cond_1

    .line 727
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x9

    .line 728
    .local v7, "insertLen":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v7, :cond_1

    .line 729
    const-string v10, "0"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 734
    .end local v7    # "insertLen":I
    .end local v9    # "k":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v7, v8, :cond_4

    .line 735
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 736
    .local v7, "subVal":I
    if-gez v2, :cond_2

    .line 737
    neg-int v7, v7

    .line 744
    :cond_2
    if-gez v7, :cond_3

    add-int/lit8 v8, v7, -0x1

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    move v7, v8

    .line 745
    invoke-virtual {p0, v7}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedPackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 746
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 748
    .end local v5    # "digit":C
    .end local v7    # "subVal":I
    :cond_4
    move v5, v6

    goto :goto_0

    .line 751
    .end local v6    # "i":I
    :cond_5
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedPackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 752
    return-object p0
.end method

.method private final writeUnsignedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "val"    # J

    .line 435
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 436
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 437
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 438
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 439
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 440
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 441
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 442
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 443
    return-object p0
.end method


# virtual methods
.method public final writeBigDecimal(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 5
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 594
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 595
    .local v0, "scale":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 598
    .local v1, "unscaledVal":Ljava/math/BigInteger;
    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 599
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 600
    .local v2, "a":[B
    array-length v3, v2

    .line 603
    .local v3, "len":I
    invoke-virtual {p0, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 606
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast([BII)V

    .line 607
    return-object p0
.end method

.method public final writeBigInteger(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 542
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 543
    .local v0, "a":[B
    array-length v1, v0

    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_1

    .line 547
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 548
    .local v1, "firstByte":I
    array-length v2, v0

    if-gez v1, :cond_0

    neg-int v2, v2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 549
    invoke-virtual {p0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 550
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v3, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast([BII)V

    .line 551
    return-object p0

    .line 544
    .end local v1    # "firstByte":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "BigInteger byte array is larger than 0x7fff bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final writeBoolean(Z)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0
    .param p1, "val"    # Z

    .line 160
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 161
    return-object p0
.end method

.method public final writeByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "val"    # I

    .line 176
    xor-int/lit16 v0, p1, 0x80

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 177
    return-object p0
.end method

.method public final writeBytes(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeBytes([C)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 86
    return-object p0
.end method

.method public final writeBytes([C)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "chars"    # [C

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 320
    aget-char v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public final writeChar(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "val"    # I

    .line 142
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 143
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 144
    return-object p0
.end method

.method public final writeChars(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeChars([C)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 105
    return-object p0
.end method

.method public final writeChars([C)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "chars"    # [C

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 341
    aget-char v1, p1, v0

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 342
    aget-char v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public final writeDouble(D)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "val"    # D

    .line 258
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 259
    return-object p0
.end method

.method public final writeFloat(F)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "val"    # F

    .line 241
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedInt(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 242
    return-object p0
.end method

.method public final writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "val"    # I

    .line 208
    const/high16 v0, -0x80000000

    xor-int/2addr v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedInt(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 209
    return-object p0
.end method

.method public final writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "val"    # J

    .line 224
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 225
    return-object p0
.end method

.method public final writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p1, "val"    # I

    .line 457
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->makeSpace(I)V

    .line 459
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v0

    .line 460
    .local v0, "oldLen":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/sleepycat/util/PackedInteger;->writeInt([BII)I

    move-result v1

    .line 462
    .local v1, "newLen":I
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->addSize(I)V

    .line 463
    return-object p0
.end method

.method public final writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p1, "val"    # J

    .line 477
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->makeSpace(I)V

    .line 479
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v0

    .line 480
    .local v0, "oldLen":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/sleepycat/util/PackedInteger;->writeLong([BIJ)I

    move-result v1

    .line 482
    .local v1, "newLen":I
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->addSize(I)V

    .line 483
    return-object p0
.end method

.method public final writeShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "val"    # I

    .line 192
    const v0, 0x8000

    xor-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 193
    return-object p0
.end method

.method public final writeSortedBigDecimal(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 8
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 662
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 663
    .local v0, "valNoTrailZeros":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 664
    .local v1, "scale":I
    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 665
    .local v2, "unscaledVal":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    .line 668
    .local v3, "sign":I
    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "unscaledValStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 670
    .local v5, "normalizedScale":I
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v2, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 672
    .local v6, "normalizedVal":Ljava/math/BigDecimal;
    sub-int v7, v5, v1

    mul-int/2addr v7, v3

    .line 675
    .local v7, "exponent":I
    invoke-virtual {p0, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 676
    invoke-virtual {p0, v7}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedPackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 677
    invoke-direct {p0, v6}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeSortedNormalizedBigDecimal(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 678
    return-object p0
.end method

.method public final writeSortedDouble(D)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 4
    .param p1, "val"    # D

    .line 294
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 295
    .local v0, "longVal":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    xor-long/2addr v0, v2

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 297
    return-object p0
.end method

.method public final writeSortedFloat(F)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p1, "val"    # F

    .line 275
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 276
    .local v0, "intVal":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    :goto_0
    xor-int/2addr v0, v1

    .line 277
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeUnsignedInt(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 278
    return-object p0
.end method

.method public final writeSortedPackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p1, "val"    # I

    .line 497
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->makeSpace(I)V

    .line 498
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v0

    .line 499
    .local v0, "oldLen":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/sleepycat/util/PackedInteger;->writeSortedInt([BII)I

    move-result v1

    .line 501
    .local v1, "newLen":I
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->addSize(I)V

    .line 502
    return-object p0
.end method

.method public final writeSortedPackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 3
    .param p1, "val"    # J

    .line 516
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->makeSpace(I)V

    .line 518
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v0

    .line 519
    .local v0, "oldLen":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v1

    invoke-static {v1, v0, p1, p2}, Lcom/sleepycat/util/PackedInteger;->writeSortedLong([BIJ)I

    move-result v1

    .line 522
    .local v1, "newLen":I
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;->addSize(I)V

    .line 523
    return-object p0
.end method

.method public final writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString([C)Lcom/sleepycat/bind/tuple/TupleOutput;

    goto :goto_0

    .line 124
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 126
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 127
    return-object p0
.end method

.method public final writeString([C)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 5
    .param p1, "chars"    # [C

    .line 363
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 365
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/util/UtfOps;->getByteLength([C)I

    move-result v0

    .line 367
    .local v0, "utfLength":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->makeSpace(I)V

    .line 368
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v3

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/sleepycat/util/UtfOps;->charsToBytes([CI[BII)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->addSize(I)V

    .line 371
    return-object p0
.end method

.method public final writeUnsignedByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 0
    .param p1, "val"    # I

    .line 387
    invoke-virtual {p0, p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 388
    return-object p0
.end method

.method public final writeUnsignedInt(J)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 2
    .param p1, "val"    # J

    .line 422
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 423
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 424
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 425
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 426
    return-object p0
.end method

.method public final writeUnsignedShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;
    .locals 1
    .param p1, "val"    # I

    .line 404
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 405
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeFast(I)V

    .line 406
    return-object p0
.end method
