.class public Lcom/itextpdf/io/source/RandomAccessFileOrArray;
.super Ljava/lang/Object;
.source "RandomAccessFileOrArray.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/Serializable;


# static fields
.field public static plainRandomAccess:Z = false

.field private static final serialVersionUID:J = -0x25986aec97d1a23L


# instance fields
.field private back:B

.field private byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

.field private byteSourcePosition:J

.field private isBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->plainRandomAccess:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 1
    .param p1, "byteSource"    # Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 91
    iput-object p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 92
    return-void
.end method

.method private ensureByteSourceIsThreadSafe()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    instance-of v1, v0, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;

    if-nez v1, :cond_0

    .line 608
    new-instance v1, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/ThreadSafeRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 610
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 255
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    .line 256
    return-void
.end method

.method public createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 2

    .line 112
    invoke-direct {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->ensureByteSourceIsThreadSafe()V

    .line 113
    new-instance v0, Lcom/itextpdf/io/source/IndependentRandomAccessSource;

    iget-object v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/IndependentRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0
.end method

.method public createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->ensureByteSourceIsThreadSafe()V

    .line 102
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/IndependentRandomAccessSource;

    iget-object v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/IndependentRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v0
.end method

.method public getPosition()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-wide v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    iget-boolean v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public pushBack(B)V
    .locals 1
    .param p1, "b"    # B

    .line 122
    iput-byte p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->back:B

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 124
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 135
    iget-byte v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->back:B

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J)I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 152
    return v0

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 154
    .local v1, "count":I
    iget-boolean v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    if-eqz v2, :cond_1

    if-lez p3, :cond_1

    .line 155
    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 156
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    iget-byte v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->back:B

    aput-byte v2, p1, p2

    .line 157
    add-int/lit8 p3, p3, -0x1

    .line 158
    add-int/lit8 v1, v1, 0x1

    move p2, v0

    .line 160
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_1
    if-lez p3, :cond_2

    .line 161
    iget-object v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSource:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v3, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v0

    .line 162
    .local v0, "byteSourceCount":I
    if-lez v0, :cond_2

    .line 163
    add-int/2addr v1, v0

    .line 164
    iget-wide v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    .line 167
    .end local v0    # "byteSourceCount":I
    :cond_2
    if-nez v1, :cond_3

    .line 168
    const/4 v0, -0x1

    return v0

    .line 169
    :cond_3
    return v1
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 295
    .local v0, "ch":I
    if-ltz v0, :cond_1

    .line 297
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 296
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 305
    .local v0, "ch":I
    if-ltz v0, :cond_0

    .line 307
    int-to-byte v1, v0

    return v1

    .line 306
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 404
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 405
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 407
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-char v2, v2

    return v2

    .line 406
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final readCharLE()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 431
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 432
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 434
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v1

    int-to-char v2, v2

    return v2

    .line 433
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleLE()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLongLE()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatLE()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    .line 188
    return-void
.end method

.method public readFully([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "n":I
    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v1

    .line 197
    .local v1, "count":I
    if-ltz v1, :cond_1

    .line 199
    add-int/2addr v0, v1

    .line 200
    .end local v1    # "count":I
    if-lt v0, p3, :cond_0

    .line 201
    return-void

    .line 198
    .restart local v1    # "count":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 442
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 443
    .local v1, "ch2":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 444
    .local v2, "ch3":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    .line 445
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    .line 447
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4

    .line 446
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method public final readIntLE()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 471
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 472
    .local v1, "ch2":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 473
    .local v2, "ch3":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    .line 474
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    .line 476
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4

    .line 475
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .local v0, "input":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 558
    .local v1, "c":I
    const/4 v2, 0x0

    .line 560
    .local v2, "eol":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v3

    move v1, v3

    sparse-switch v3, :sswitch_data_0

    .line 574
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    goto :goto_0

    .line 567
    :sswitch_0
    const/4 v2, 0x1

    .line 568
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v3

    .line 569
    .local v3, "cur":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 570
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    goto :goto_0

    .line 564
    .end local v3    # "cur":J
    :sswitch_1
    const/4 v2, 0x1

    .line 565
    goto :goto_0

    .line 579
    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 580
    const/4 v3, 0x0

    return-object v3

    .line 582
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readLongLE()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    .line 526
    .local v0, "i1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v1

    .line 527
    .local v1, "i2":I
    int-to-long v2, v1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 325
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 326
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 328
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2

    .line 327
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final readShortLE()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 354
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 355
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 357
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    int-to-short v2, v2

    return v2

    .line 356
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    new-array v0, p1, [B

    .line 602
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 603
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 315
    .local v0, "ch":I
    if-ltz v0, :cond_0

    .line 317
    return v0

    .line 316
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final readUnsignedInt()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-long v0, v0

    .line 499
    .local v0, "ch1":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    int-to-long v2, v2

    .line 500
    .local v2, "ch2":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v4

    int-to-long v4, v4

    .line 501
    .local v4, "ch3":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    int-to-long v6, v6

    .line 502
    .local v6, "ch4":J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 504
    const/16 v8, 0x18

    shl-long v8, v0, v8

    const/16 v10, 0x10

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    return-wide v8

    .line 503
    :cond_0
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8
.end method

.method public final readUnsignedIntLE()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-long v0, v0

    .line 509
    .local v0, "ch1":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    int-to-long v2, v2

    .line 510
    .local v2, "ch2":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v4

    int-to-long v4, v4

    .line 511
    .local v4, "ch3":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v6

    int-to-long v6, v6

    .line 512
    .local v6, "ch4":J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 514
    const/16 v8, 0x18

    shl-long v8, v6, v8

    const/16 v10, 0x10

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    add-long/2addr v8, v0

    return-wide v8

    .line 513
    :cond_0
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 365
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 366
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 368
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2

    .line 367
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final readUnsignedShortLE()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 393
    .local v0, "ch1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 394
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_0

    .line 396
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    return v2

    .line 395
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public seek(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iput-wide p1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->byteSourcePosition:J

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 277
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 213
    return-wide v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 216
    .local v0, "adj":I
    iget-boolean v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    if-eqz v1, :cond_2

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->isBack:Z

    .line 218
    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    .line 219
    return-wide v1

    .line 221
    :cond_1
    sub-long/2addr p1, v1

    .line 222
    const/4 v0, 0x1

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v1

    .line 230
    .local v1, "pos":J
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v3

    .line 231
    .local v3, "len":J
    add-long v5, v1, p1

    .line 232
    .local v5, "newpos":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    .line 233
    move-wide v5, v3

    .line 235
    :cond_3
    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 237
    sub-long v7, v5, v1

    int-to-long v9, v0

    add-long/2addr v7, v9

    return-wide v7
.end method

.method public skipBytes(I)I
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
