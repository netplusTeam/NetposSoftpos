.class public Lcom/sleepycat/bind/tuple/TupleInput;
.super Lcom/sleepycat/util/FastInputStream;
.source "TupleInput.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 80
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferOffset()I

    move-result v1

    .line 81
    invoke-virtual {p1}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v2

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/util/FastInputStream;-><init>([BII)V

    .line 82
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .line 49
    invoke-direct {p0, p1}, Lcom/sleepycat/util/FastInputStream;-><init>([B)V

    .line 50
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/FastInputStream;-><init>([BII)V

    .line 68
    return-void
.end method

.method private readSortedNormalizedBigDecimal()Ljava/math/BigDecimal;
    .locals 9

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    .local v0, "valStr":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedPackedInt()I

    move-result v1

    .line 792
    .local v1, "subVal":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 795
    .local v4, "sign":I
    :goto_0
    if-eq v1, v2, :cond_3

    .line 798
    if-gez v1, :cond_1

    add-int/lit8 v5, v1, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    move v1, v5

    .line 799
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 805
    .local v5, "groupDigits":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-ge v6, v7, :cond_2

    .line 806
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v7, v6

    .line 807
    .local v7, "insertLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v7, :cond_2

    .line 808
    const-string v8, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 811
    .end local v6    # "i":I
    .end local v7    # "insertLen":I
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedPackedInt()I

    move-result v1

    .line 813
    .end local v5    # "groupDigits":Ljava/lang/String;
    goto :goto_0

    .line 815
    :cond_3
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 816
    .local v2, "digitsVal":Ljava/math/BigInteger;
    if-gez v4, :cond_4

    .line 817
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    .line 820
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v3

    .line 826
    .local v5, "scale":I
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {v3}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method private final readUnsignedLong()J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v0

    int-to-long v0, v0

    .line 383
    .local v0, "c1":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v2

    int-to-long v2, v2

    .line 384
    .local v2, "c2":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v4

    int-to-long v4, v4

    .line 385
    .local v4, "c3":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v6

    int-to-long v6, v6

    .line 386
    .local v6, "c4":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v8

    int-to-long v8, v8

    .line 387
    .local v8, "c5":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v10

    int-to-long v10, v10

    .line 388
    .local v10, "c6":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v12

    int-to-long v12, v12

    .line 389
    .local v12, "c7":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v14

    int-to-long v14, v14

    .line 390
    .local v14, "c8":J
    or-long v16, v0, v2

    or-long v16, v16, v4

    or-long v16, v16, v6

    or-long v16, v16, v8

    or-long v16, v16, v10

    or-long v16, v16, v12

    or-long v16, v16, v14

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    .line 393
    const/16 v16, 0x38

    shl-long v16, v0, v16

    const/16 v18, 0x30

    shl-long v18, v2, v18

    or-long v16, v16, v18

    const/16 v18, 0x28

    shl-long v18, v4, v18

    or-long v16, v16, v18

    const/16 v18, 0x20

    shl-long v18, v6, v18

    or-long v16, v16, v18

    const/16 v18, 0x18

    shl-long v18, v8, v18

    or-long v16, v16, v18

    const/16 v18, 0x10

    shl-long v18, v10, v18

    or-long v16, v16, v18

    const/16 v18, 0x8

    shl-long v18, v12, v18

    or-long v16, v16, v18

    or-long v16, v16, v14

    return-wide v16

    .line 391
    :cond_0
    new-instance v16, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v16
.end method


# virtual methods
.method public final getBigDecimalByteLength()I
    .locals 5

    .line 742
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->getPackedIntByteLength()I

    move-result v0

    .line 743
    .local v0, "scaleLen":I
    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 744
    .local v1, "saveOff":I
    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 750
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->getPackedIntByteLength()I

    move-result v2

    .line 753
    .local v2, "lenOfUnscaleValLen":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v3

    .line 754
    .local v3, "unscaledValLen":I
    iput v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 755
    add-int v4, v0, v2

    add-int/2addr v4, v3

    return v4
.end method

.method public final getBigIntegerByteLength()I
    .locals 3

    .line 704
    iget v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 705
    .local v0, "saveOff":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readShort()S

    move-result v1

    .line 706
    .local v1, "len":I
    iput v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 707
    if-gez v1, :cond_0

    .line 708
    neg-int v1, v1

    .line 710
    :cond_0
    add-int/lit8 v2, v1, 0x2

    return v2
.end method

.method public final getPackedIntByteLength()I
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v0

    return v0
.end method

.method public final getPackedLongByteLength()I
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadLongLength([BI)I

    move-result v0

    return v0
.end method

.method public final getSortedBigDecimalByteLength()I
    .locals 4

    .line 840
    iget v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 843
    .local v0, "saveOff":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->getSortedPackedIntByteLength()I

    move-result v1

    .line 846
    .local v1, "len":I
    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 852
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedPackedInt()I

    move-result v2

    .line 853
    .local v2, "subVal":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedPackedInt()I

    move-result v2

    goto :goto_0

    .line 861
    :cond_0
    iget v3, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    sub-int/2addr v3, v0

    .line 862
    .end local v1    # "len":I
    .local v3, "len":I
    iput v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 863
    return v3
.end method

.method public final getSortedPackedIntByteLength()I
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadSortedIntLength([BI)I

    move-result v0

    return v0
.end method

.method public final getSortedPackedLongByteLength()I
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadSortedLongLength([BI)I

    move-result v0

    return v0
.end method

.method public final getStringByteLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->available()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    aget-byte v0, v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    .line 562
    return v1

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/UtfOps;->getZeroTerminatedByteLength([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final readBigDecimal()Ljava/math/BigDecimal;
    .locals 5

    .line 723
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v0

    .line 724
    .local v0, "scale":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v1

    .line 725
    .local v1, "len":I
    new-array v2, v1, [B

    .line 726
    .local v2, "a":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast([BII)I

    .line 727
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 728
    .local v3, "unscaledVal":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v4
.end method

.method public final readBigInteger()Ljava/math/BigInteger;
    .locals 4

    .line 685
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readShort()S

    move-result v0

    .line 686
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 687
    neg-int v0, v0

    .line 689
    :cond_0
    new-array v1, v0, [B

    .line 690
    .local v1, "a":[B
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readByte()B

    move-result v3

    aput-byte v3, v1, v2

    .line 691
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast([BII)I

    .line 692
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v2
.end method

.method public final readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v0

    .line 151
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 154
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 152
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedByte()I

    move-result v0

    xor-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    return v0
.end method

.method public final readBytes(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v2

    .line 417
    .local v2, "c":I
    if-ltz v2, :cond_0

    .line 420
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .restart local v2    # "c":I
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 422
    .end local v1    # "i":I
    .end local v2    # "c":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final readBytes([C)V
    .locals 3
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v1

    .line 467
    .local v1, "c":I
    if-ltz v1, :cond_0

    .line 470
    int-to-char v2, v1

    aput-char v2, p1, v0

    .line 465
    .end local v1    # "c":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    .restart local v1    # "c":I
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 472
    .end local v0    # "i":I
    .end local v1    # "c":I
    :cond_1
    return-void
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedShort()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readChars(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 443
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final readChars([C)V
    .locals 2
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readChar()C

    move-result v1

    aput-char v1, p1, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedInt()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final readPackedInt()I
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v0

    .line 578
    .local v0, "len":I
    iget-object v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v1, v2}, Lcom/sleepycat/util/PackedInteger;->readInt([BI)I

    move-result v1

    .line 580
    .local v1, "val":I
    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 581
    return v1
.end method

.method public final readPackedLong()J
    .locals 4

    .line 604
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadLongLength([BI)I

    move-result v0

    .line 605
    .local v0, "len":I
    iget-object v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v1, v2}, Lcom/sleepycat/util/PackedInteger;->readLong([BI)J

    move-result-wide v1

    .line 607
    .local v1, "val":J
    iget v3, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 608
    return-wide v1
.end method

.method public final readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedShort()I

    move-result v0

    const v1, 0x8000

    xor-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final readSortedBigDecimal()Ljava/math/BigDecimal;
    .locals 4

    .line 769
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readByte()B

    move-result v0

    .line 772
    .local v0, "sign":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedPackedInt()I

    move-result v1

    .line 775
    .local v1, "exponent":I
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readSortedNormalizedBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    .line 781
    .local v2, "normalizedVal":Ljava/math/BigDecimal;
    mul-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public final readSortedDouble()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedLong()J

    move-result-wide v0

    .line 299
    .local v0, "val":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    xor-long/2addr v0, v2

    .line 300
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public final readSortedFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readUnsignedInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 278
    .local v0, "val":I
    if-gez v0, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    xor-int/2addr v0, v1

    .line 279
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public final readSortedPackedInt()I
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadSortedIntLength([BI)I

    move-result v0

    .line 632
    .local v0, "len":I
    iget-object v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v1, v2}, Lcom/sleepycat/util/PackedInteger;->readSortedInt([BI)I

    move-result v1

    .line 634
    .local v1, "val":I
    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 635
    return v1
.end method

.method public final readSortedPackedLong()J
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadSortedLongLength([BI)I

    move-result v0

    .line 659
    .local v0, "len":I
    iget-object v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v2, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    invoke-static {v1, v2}, Lcom/sleepycat/util/PackedInteger;->readSortedLong([BI)J

    move-result-wide v1

    .line 661
    .local v1, "val":J
    iget v3, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 662
    return-wide v1
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    .line 105
    .local v0, "myBuf":[B
    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 106
    .local v1, "myOff":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->available()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    .line 109
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/bind/tuple/TupleInput;->skip(J)J

    .line 110
    const/4 v2, 0x0

    return-object v2

    .line 112
    :cond_0
    invoke-static {v0, v1}, Lcom/sleepycat/util/UtfOps;->getZeroTerminatedByteLength([BI)I

    move-result v2

    .line 113
    .local v2, "byteLen":I
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/sleepycat/bind/tuple/TupleInput;->skip(J)J

    .line 114
    invoke-static {v0, v1, v2}, Lcom/sleepycat/util/UtfOps;->bytesToString([BII)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final readString(I)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 515
    new-array v0, p1, [C

    .line 516
    .local v0, "chars":[C
    invoke-virtual {p0, v0}, Lcom/sleepycat/bind/tuple/TupleInput;->readString([C)V

    .line 517
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final readString([C)V
    .locals 6
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->buf:[B

    iget v1, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    array-length v4, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/util/UtfOps;->bytesToChars([BI[CIIZ)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/bind/tuple/TupleInput;->off:I

    .line 540
    return-void
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v0

    .line 319
    .local v0, "c":I
    if-ltz v0, :cond_0

    .line 322
    return v0

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final readUnsignedInt()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v0

    int-to-long v0, v0

    .line 366
    .local v0, "c1":J
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v2

    int-to-long v2, v2

    .line 367
    .local v2, "c2":J
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v4

    int-to-long v4, v4

    .line 368
    .local v4, "c3":J
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v6

    int-to-long v6, v6

    .line 369
    .local v6, "c4":J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 372
    const/16 v8, 0x18

    shl-long v8, v0, v8

    const/16 v10, 0x10

    shl-long v10, v2, v10

    or-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v4, v10

    or-long/2addr v8, v10

    or-long/2addr v8, v6

    return-wide v8

    .line 370
    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8
.end method

.method public final readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v0

    .line 341
    .local v0, "c1":I
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleInput;->readFast()I

    move-result v1

    .line 342
    .local v1, "c2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 345
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2

    .line 343
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method
