.class public Lcom/sleepycat/util/FastInputStream;
.super Ljava/io/InputStream;
.source "FastInputStream.java"


# instance fields
.field protected buf:[B

.field protected len:I

.field protected mark:I

.field protected off:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sleepycat/util/FastInputStream;->buf:[B

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/sleepycat/util/FastInputStream;->len:I

    .line 46
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sleepycat/util/FastInputStream;->buf:[B

    .line 60
    iput p2, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    .line 61
    add-int v0, p2, p3

    iput v0, p0, Lcom/sleepycat/util/FastInputStream;->len:I

    .line 62
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 69
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->len:I

    iget v1, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getBufferBytes()[B
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sleepycat/util/FastInputStream;->buf:[B

    return-object v0
.end method

.method public final getBufferLength()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->len:I

    return v0
.end method

.method public final getBufferOffset()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .line 81
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    iput v0, p0, Lcom/sleepycat/util/FastInputStream;->mark:I

    .line 82
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/sleepycat/util/FastInputStream;->readFast()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "toBuf"    # [B

    .line 109
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sleepycat/util/FastInputStream;->readFast([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "toBuf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/util/FastInputStream;->readFast([BII)I

    move-result v0

    return v0
.end method

.method public final readFast()I
    .locals 3

    .line 143
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    iget v1, p0, Lcom/sleepycat/util/FastInputStream;->len:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/util/FastInputStream;->buf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final readFast([B)I
    .locals 2
    .param p1, "toBuf"    # [B

    .line 158
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sleepycat/util/FastInputStream;->readFast([BII)I

    move-result v0

    return v0
.end method

.method public final readFast([BII)I
    .locals 3
    .param p1, "toBuf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 177
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->len:I

    iget v1, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    sub-int/2addr v0, v1

    .line 178
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 179
    const/4 v1, -0x1

    return v1

    .line 181
    :cond_0
    if-le p3, v0, :cond_1

    .line 182
    move p3, v0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/util/FastInputStream;->buf:[B

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget v1, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    .line 186
    return p3
.end method

.method public reset()V
    .locals 1

    .line 87
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->mark:I

    iput v0, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    .line 88
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "count"    # J

    .line 93
    long-to-int v0, p1

    .line 94
    .local v0, "myCount":I
    iget v1, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/sleepycat/util/FastInputStream;->len:I

    if-le v2, v3, :cond_0

    .line 95
    sub-int v0, v3, v1

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/util/FastInputStream;->skipFast(I)V

    .line 98
    int-to-long v1, v0

    return-wide v1
.end method

.method public final skipFast(I)V
    .locals 1
    .param p1, "count"    # I

    .line 130
    iget v0, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/util/FastInputStream;->off:I

    .line 131
    return-void
.end method
