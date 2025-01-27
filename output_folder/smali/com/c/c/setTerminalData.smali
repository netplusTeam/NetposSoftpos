.class public Lcom/c/c/setTerminalData;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final d:S


# instance fields
.field private b:[B

.field private c:[B

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method private $$a()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget v0, p0, Lcom/c/c/setTerminalData;->f:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/c/c/setTerminalData;->f:I

    .line 270
    :cond_0
    iget v0, p0, Lcom/c/c/setTerminalData;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 273
    iget-object v0, p0, Lcom/c/c/setTerminalData;->b:[B

    iget v2, p0, Lcom/c/c/setTerminalData;->f:I

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 277
    const-string/jumbo v0, "unexpected block size"

    if-ltz v2, :cond_5

    .line 284
    const/4 v2, 0x1

    .line 287
    :cond_1
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/c/c/setTerminalData;->b:[B

    rsub-int/lit8 v6, v2, 0x8

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 291
    if-lez v3, :cond_2

    .line 297
    add-int/2addr v2, v3

    .line 300
    if-lt v2, v1, :cond_1

    .line 304
    :cond_2
    if-lt v2, v1, :cond_4

    .line 310
    invoke-direct {p0}, Lcom/c/c/setTerminalData;->getTerminalData()V

    .line 313
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/c/c/setTerminalData;->f:I

    .line 316
    iput v4, p0, Lcom/c/c/setTerminalData;->j:I

    .line 320
    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/c/c/setTerminalData;->b:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/c/c/setTerminalData;->h:I

    goto :goto_0

    .line 306
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_6
    :goto_0
    iget v0, p0, Lcom/c/c/setTerminalData;->h:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 24
    nop

    .line 25
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    sput-short v0, Lcom/c/c/setTerminalData;->d:S

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[II[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    const p1, 0x7fffffff

    iput p1, p0, Lcom/c/c/setTerminalData;->f:I

    .line 62
    const/16 p1, 0x8

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/c/c/setTerminalData;->b:[B

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/c/c/setTerminalData;->c:[B

    .line 64
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/c/c/setTerminalData;->e:[B

    .line 66
    iput p1, p0, Lcom/c/c/setTerminalData;->j:I

    .line 67
    iput p1, p0, Lcom/c/c/setTerminalData;->h:I

    .line 70
    const/4 v0, 0x5

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    const/16 v0, 0x10

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p0, Lcom/c/c/setTerminalData;->i:I

    .line 71
    iput p6, p0, Lcom/c/c/setTerminalData;->g:I

    .line 72
    const/4 p5, 0x0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    .line 74
    iget-object p6, p0, Lcom/c/c/setTerminalData;->c:[B

    invoke-static {p4, p5, p6, p5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :cond_0
    aget p1, p2, p5

    int-to-long p4, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p4, v0

    const/16 p1, 0x20

    shl-long/2addr p4, p1

    const/4 p1, 0x1

    aget p1, p2, p1

    int-to-long p1, p1

    and-long/2addr p1, v0

    or-long/2addr p1, p4

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/c/c/setTerminalData;->getInstance(JI)V

    .line 82
    return-void
.end method

.method private BuildConfig()V
    .locals 4

    .line 251
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/c/c/setTerminalData;->b:[B

    aget-byte v2, v1, v0

    iget-object v3, p0, Lcom/c/c/setTerminalData;->c:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method private ContactlessConfiguration(J)V
    .locals 6

    .line 199
    long-to-int v0, p1

    iput v0, p0, Lcom/c/c/setTerminalData;->k:I

    .line 200
    const/4 v0, 0x3

    shr-long v0, p1, v0

    sget-short v2, Lcom/c/c/setTerminalData;->d:S

    int-to-long v3, v2

    mul-long/2addr v3, v0

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/c/c/setTerminalData;->n:I

    .line 201
    shr-long/2addr p1, v5

    long-to-int p1, p1

    iput p1, p0, Lcom/c/c/setTerminalData;->m:I

    .line 202
    int-to-long p1, v2

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/c/c/setTerminalData;->l:I

    .line 203
    return-void
.end method

.method private getInstance(JI)V
    .locals 2

    .line 185
    if-nez p3, :cond_0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/c/c/setTerminalData;->ContactlessConfiguration(J)V

    .line 188
    return-void

    .line 190
    :cond_0
    long-to-int v0, p1

    iput v0, p0, Lcom/c/c/setTerminalData;->k:I

    .line 191
    mul-int v1, v0, p3

    iput v1, p0, Lcom/c/c/setTerminalData;->n:I

    .line 192
    xor-int/2addr p3, v0

    iput p3, p0, Lcom/c/c/setTerminalData;->m:I

    .line 193
    const/16 p3, 0x20

    shr-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcom/c/c/setTerminalData;->l:I

    .line 194
    return-void
.end method

.method private getTerminalData()V
    .locals 16

    .line 212
    move-object/from16 v0, p0

    iget v1, v0, Lcom/c/c/setTerminalData;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 214
    iget-object v1, v0, Lcom/c/c/setTerminalData;->b:[B

    iget-object v4, v0, Lcom/c/c/setTerminalData;->e:[B

    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_0
    iget-object v1, v0, Lcom/c/c/setTerminalData;->b:[B

    aget-byte v4, v1, v3

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    add-int/2addr v4, v7

    const/4 v7, 0x2

    aget-byte v9, v1, v7

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    add-int/2addr v4, v9

    aget-byte v9, v1, v2

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v4, v9

    .line 220
    const/4 v9, 0x4

    aget-byte v11, v1, v9

    shl-int/lit8 v11, v11, 0x18

    and-int/2addr v5, v11

    const/4 v11, 0x5

    aget-byte v12, v1, v11

    shl-int/lit8 v12, v12, 0x10

    and-int/2addr v8, v12

    add-int/2addr v5, v8

    const/4 v8, 0x6

    aget-byte v12, v1, v8

    shl-int/lit8 v12, v12, 0x8

    and-int/2addr v10, v12

    add-int/2addr v5, v10

    const/4 v10, 0x7

    aget-byte v1, v1, v10

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    .line 224
    move v1, v3

    :goto_0
    iget v12, v0, Lcom/c/c/setTerminalData;->i:I

    if-ge v1, v12, :cond_1

    .line 226
    sget-short v13, Lcom/c/c/setTerminalData;->d:S

    sub-int v14, v12, v1

    mul-int/2addr v14, v13

    add-int/2addr v14, v4

    shl-int/lit8 v15, v4, 0x4

    iget v10, v0, Lcom/c/c/setTerminalData;->m:I

    add-int/2addr v15, v10

    xor-int v10, v14, v15

    ushr-int/lit8 v14, v4, 0x5

    iget v15, v0, Lcom/c/c/setTerminalData;->l:I

    add-int/2addr v14, v15

    xor-int/2addr v10, v14

    sub-int/2addr v5, v10

    .line 229
    sub-int/2addr v12, v1

    mul-int/2addr v13, v12

    add-int/2addr v13, v5

    shl-int/lit8 v10, v5, 0x4

    iget v12, v0, Lcom/c/c/setTerminalData;->k:I

    add-int/2addr v10, v12

    xor-int/2addr v10, v13

    ushr-int/lit8 v12, v5, 0x5

    iget v13, v0, Lcom/c/c/setTerminalData;->n:I

    add-int/2addr v12, v13

    xor-int/2addr v10, v12

    sub-int/2addr v4, v10

    .line 224
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x7

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, v0, Lcom/c/c/setTerminalData;->b:[B

    shr-int/lit8 v10, v4, 0x18

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    .line 234
    shr-int/lit8 v10, v4, 0x10

    int-to-byte v10, v10

    aput-byte v10, v1, v6

    .line 235
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    .line 236
    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 237
    shr-int/lit8 v4, v5, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    .line 238
    shr-int/lit8 v4, v5, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v11

    .line 239
    shr-int/lit8 v4, v5, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 240
    int-to-byte v4, v5

    const/4 v5, 0x7

    aput-byte v4, v1, v5

    .line 241
    iget v1, v0, Lcom/c/c/setTerminalData;->g:I

    if-ne v1, v2, :cond_2

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/c/c/setTerminalData;->BuildConfig()V

    .line 244
    iget-object v1, v0, Lcom/c/c/setTerminalData;->e:[B

    iget-object v2, v0, Lcom/c/c/setTerminalData;->c:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_2
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/c/c/setTerminalData;->$$a()I

    .line 166
    iget v0, p0, Lcom/c/c/setTerminalData;->h:I

    iget v1, p0, Lcom/c/c/setTerminalData;->j:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/c/c/setTerminalData;->$$a()I

    .line 114
    iget v0, p0, Lcom/c/c/setTerminalData;->j:I

    iget v1, p0, Lcom/c/c/setTerminalData;->h:I

    if-lt v0, v1, :cond_0

    .line 116
    const/4 v0, -0x1

    return v0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/c/c/setTerminalData;->b:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/c/c/setTerminalData;->j:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    nop

    .line 128
    add-int v0, p2, p3

    move v1, p2

    .line 132
    :goto_0
    if-ge v1, v0, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/c/c/setTerminalData;->$$a()I

    .line 137
    iget v2, p0, Lcom/c/c/setTerminalData;->j:I

    iget v3, p0, Lcom/c/c/setTerminalData;->h:I

    if-lt v2, v3, :cond_1

    .line 140
    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    .line 143
    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/c/c/setTerminalData;->b:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/c/c/setTerminalData;->j:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    .line 146
    :cond_2
    return p3
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const-wide/16 v0, 0x0

    .line 154
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 156
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 158
    :cond_0
    return-wide v0
.end method
