.class public Lcom/c/c/ContactlessConfiguration;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[B

.field private static final d:[I

.field private static final f:[I

.field private static final j:[I


# instance fields
.field private final g:[[B

.field private final h:I

.field private final i:[I

.field private final k:[I

.field private l:I

.field private final m:[B

.field private n:I

.field private final o:[B

.field private p:I


# direct methods
.method private $$a([[B)[[B
    .locals 7

    .line 170
    array-length v0, p1

    new-array v0, v0, [[B

    .line 171
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 173
    aget-object v3, p1, v2

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v0, v2

    .line 174
    move v3, v1

    :goto_1
    aget-object v4, p1, v2

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 176
    aget-object v5, v0, v2

    aget-byte v4, v4, v3

    int-to-byte v6, v3

    aput-byte v6, v5, v4

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/c/c/ContactlessKernel;->d:[B

    sput-object v0, Lcom/c/c/ContactlessConfiguration;->b:[B

    .line 24
    sget-object v0, Lcom/c/c/ContactlessKernel;->b:[I

    sput-object v0, Lcom/c/c/ContactlessConfiguration;->a:[I

    .line 25
    sget-object v0, Lcom/c/c/ContactlessKernel;->g:[I

    sput-object v0, Lcom/c/c/ContactlessConfiguration;->d:[I

    .line 26
    sget-object v0, Lcom/c/c/ContactlessKernel;->h:[I

    sput-object v0, Lcom/c/c/ContactlessConfiguration;->f:[I

    .line 27
    sget-object v0, Lcom/c/c/ContactlessKernel;->i:[I

    sput-object v0, Lcom/c/c/ContactlessConfiguration;->j:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B[[B)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/c/c/ContactlessConfiguration;->k:[I

    .line 38
    const/16 p1, 0x10

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/c/c/ContactlessConfiguration;->m:[B

    .line 39
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/c/c/ContactlessConfiguration;->o:[B

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lcom/c/c/ContactlessConfiguration;->l:I

    .line 42
    iput p1, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    .line 43
    iput p1, p0, Lcom/c/c/ContactlessConfiguration;->p:I

    .line 62
    iput p2, p0, Lcom/c/c/ContactlessConfiguration;->h:I

    .line 63
    invoke-static {p3, p2}, Lcom/c/c/ContactlessKernel;->BuildConfig([BI)[I

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/ContactlessConfiguration;->i:[I

    .line 64
    invoke-direct {p0, p4}, Lcom/c/c/ContactlessConfiguration;->$$a([[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/ContactlessConfiguration;->g:[[B

    .line 65
    return-void
.end method

.method private getTerminalData()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget v0, p0, Lcom/c/c/ContactlessConfiguration;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/c/c/ContactlessConfiguration;->l:I

    .line 195
    :cond_0
    iget v0, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 198
    iget-object v0, p0, Lcom/c/c/ContactlessConfiguration;->m:[B

    iget v2, p0, Lcom/c/c/ContactlessConfiguration;->l:I

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 202
    const-string/jumbo v0, "unexpected block size"

    if-ltz v2, :cond_5

    .line 209
    const/4 v2, 0x1

    .line 212
    :cond_1
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/c/c/ContactlessConfiguration;->m:[B

    rsub-int/lit8 v6, v2, 0x10

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 216
    if-lez v3, :cond_2

    .line 222
    add-int/2addr v2, v3

    .line 225
    if-lt v2, v1, :cond_1

    .line 229
    :cond_2
    if-lt v2, v1, :cond_4

    .line 235
    iget-object v0, p0, Lcom/c/c/ContactlessConfiguration;->m:[B

    iget-object v2, p0, Lcom/c/c/ContactlessConfiguration;->o:[B

    invoke-direct {p0, v0, v4, v2, v4}, Lcom/c/c/ContactlessConfiguration;->getTerminalData([BI[BI)V

    .line 238
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/c/c/ContactlessConfiguration;->l:I

    .line 241
    iput v4, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    .line 245
    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/c/c/ContactlessConfiguration;->o:[B

    const/16 v2, 0xf

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/c/c/ContactlessConfiguration;->p:I

    goto :goto_0

    .line 231
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_6
    :goto_0
    iget v0, p0, Lcom/c/c/ContactlessConfiguration;->p:I

    return v0
.end method

.method private getTerminalData([BI[BI)V
    .locals 19

    .line 269
    move-object/from16 v0, p0

    .line 270
    iget-object v1, v0, Lcom/c/c/ContactlessConfiguration;->k:[I

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iget-object v3, v0, Lcom/c/c/ContactlessConfiguration;->i:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    xor-int/2addr v2, v6

    aput v2, v1, v5

    .line 274
    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    const/4 v4, 0x1

    aget v7, v3, v4

    xor-int/2addr v2, v7

    aput v2, v1, v4

    .line 278
    add-int/lit8 v2, v6, 0x1

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    const/4 v6, 0x2

    aget v8, v3, v6

    xor-int/2addr v2, v8

    aput v2, v1, v6

    .line 282
    add-int/lit8 v2, v7, 0x1

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v7

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v2, v8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    const/4 v7, 0x3

    aget v3, v3, v7

    xor-int/2addr v2, v3

    aput v2, v1, v7

    .line 290
    nop

    .line 291
    const/4 v1, 0x4

    move v2, v4

    :goto_0
    iget v3, v0, Lcom/c/c/ContactlessConfiguration;->h:I

    if-ge v2, v3, :cond_0

    .line 293
    sget-object v3, Lcom/c/c/ContactlessConfiguration;->a:[I

    iget-object v8, v0, Lcom/c/c/ContactlessConfiguration;->k:[I

    iget-object v9, v0, Lcom/c/c/ContactlessConfiguration;->g:[[B

    aget-object v10, v9, v5

    aget-byte v11, v10, v5

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x18

    aget v11, v3, v11

    sget-object v12, Lcom/c/c/ContactlessConfiguration;->d:[I

    aget-object v13, v9, v4

    aget-byte v14, v13, v5

    aget v14, v8, v14

    ushr-int/lit8 v14, v14, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v14, v12, v14

    xor-int/2addr v11, v14

    sget-object v14, Lcom/c/c/ContactlessConfiguration;->f:[I

    aget-object v15, v9, v6

    aget-byte v16, v15, v5

    aget v16, v8, v16

    ushr-int/lit8 v6, v16, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v6, v14, v6

    xor-int/2addr v6, v11

    sget-object v11, Lcom/c/c/ContactlessConfiguration;->j:[I

    aget-object v9, v9, v7

    aget-byte v16, v9, v5

    aget v5, v8, v16

    and-int/lit16 v5, v5, 0xff

    aget v5, v11, v5

    xor-int/2addr v5, v6

    iget-object v6, v0, Lcom/c/c/ContactlessConfiguration;->i:[I

    aget v16, v6, v1

    xor-int v5, v5, v16

    .line 297
    aget-byte v16, v10, v4

    aget v16, v8, v16

    ushr-int/lit8 v16, v16, 0x18

    aget v16, v3, v16

    aget-byte v17, v13, v4

    aget v17, v8, v17

    ushr-int/lit8 v7, v17, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int v7, v16, v7

    aget-byte v16, v15, v4

    aget v16, v8, v16

    ushr-int/lit8 v4, v16, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v4, v14, v4

    xor-int/2addr v4, v7

    const/4 v7, 0x1

    aget-byte v16, v9, v7

    aget v7, v8, v16

    and-int/lit16 v7, v7, 0xff

    aget v7, v11, v7

    xor-int/2addr v4, v7

    add-int/lit8 v7, v1, 0x1

    aget v7, v6, v7

    xor-int/2addr v4, v7

    .line 301
    const/4 v7, 0x2

    aget-byte v16, v10, v7

    aget v16, v8, v16

    ushr-int/lit8 v16, v16, 0x18

    aget v16, v3, v16

    aget-byte v18, v13, v7

    aget v18, v8, v18

    ushr-int/lit8 v7, v18, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v7, v12, v7

    xor-int v7, v16, v7

    const/16 v16, 0x2

    aget-byte v18, v15, v16

    aget v18, v8, v18

    ushr-int/lit8 v0, v18, 0x8

    and-int/lit16 v0, v0, 0xff

    aget v0, v14, v0

    xor-int/2addr v0, v7

    aget-byte v7, v9, v16

    aget v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v11, v7

    xor-int/2addr v0, v7

    add-int/lit8 v7, v1, 0x2

    aget v7, v6, v7

    xor-int/2addr v0, v7

    .line 305
    const/4 v7, 0x3

    aget-byte v10, v10, v7

    aget v10, v8, v10

    ushr-int/lit8 v10, v10, 0x18

    aget v3, v3, v10

    aget-byte v10, v13, v7

    aget v10, v8, v10

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v12, v10

    xor-int/2addr v3, v10

    aget-byte v10, v15, v7

    aget v10, v8, v10

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    aget-byte v9, v9, v7

    aget v7, v8, v9

    and-int/lit16 v7, v7, 0xff

    aget v7, v11, v7

    xor-int/2addr v3, v7

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    xor-int/2addr v3, v6

    .line 309
    const/4 v6, 0x0

    aput v5, v8, v6

    .line 310
    const/4 v5, 0x1

    aput v4, v8, v5

    .line 311
    const/4 v4, 0x2

    aput v0, v8, v4

    .line 312
    const/4 v0, 0x3

    aput v3, v8, v0

    .line 291
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    goto/16 :goto_0

    .line 318
    :cond_0
    nop

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/c/c/ContactlessConfiguration;->i:[I

    aget v3, v2, v1

    .line 321
    add-int/lit8 v4, p4, 0x1

    sget-object v5, Lcom/c/c/ContactlessConfiguration;->b:[B

    iget-object v6, v0, Lcom/c/c/ContactlessConfiguration;->k:[I

    iget-object v7, v0, Lcom/c/c/ContactlessConfiguration;->g:[[B

    const/4 v8, 0x0

    aget-object v9, v7, v8

    aget-byte v10, v9, v8

    aget v8, v6, v10

    ushr-int/lit8 v8, v8, 0x18

    aget-byte v8, v5, v8

    ushr-int/lit8 v10, v3, 0x18

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, p3, p4

    .line 322
    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x1

    aget-object v11, v7, v10

    const/4 v10, 0x0

    aget-byte v12, v11, v10

    aget v10, v6, v12

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v12, v3, 0x10

    xor-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 323
    add-int/lit8 v4, v8, 0x1

    const/4 v10, 0x2

    aget-object v12, v7, v10

    const/4 v10, 0x0

    aget-byte v13, v12, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x8

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v8

    .line 324
    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x3

    aget-object v7, v7, v10

    const/4 v10, 0x0

    aget-byte v10, v7, v10

    aget v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    .line 326
    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    .line 327
    add-int/lit8 v4, v8, 0x1

    const/4 v10, 0x1

    aget-byte v13, v9, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x18

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x18

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v8

    .line 328
    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x1

    aget-byte v13, v11, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x10

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 329
    add-int/lit8 v4, v8, 0x1

    const/4 v10, 0x1

    aget-byte v13, v12, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x8

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v8

    .line 330
    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x1

    aget-byte v10, v7, v10

    aget v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    .line 332
    add-int/lit8 v3, v1, 0x2

    aget v3, v2, v3

    .line 333
    add-int/lit8 v4, v8, 0x1

    const/4 v10, 0x2

    aget-byte v13, v9, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x18

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x18

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v8

    .line 334
    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x2

    aget-byte v13, v11, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x10

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 335
    add-int/lit8 v4, v8, 0x1

    const/4 v10, 0x2

    aget-byte v13, v12, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x8

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v8

    .line 336
    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x2

    aget-byte v10, v7, v10

    aget v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    .line 338
    const/4 v3, 0x3

    add-int/2addr v1, v3

    aget v1, v2, v1

    .line 339
    add-int/lit8 v2, v8, 0x1

    aget-byte v4, v9, v3

    aget v3, v6, v4

    ushr-int/lit8 v3, v3, 0x18

    aget-byte v3, v5, v3

    ushr-int/lit8 v4, v1, 0x18

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v8

    .line 340
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    aget-byte v8, v11, v4

    aget v4, v6, v8

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v5, v4

    ushr-int/lit8 v8, v1, 0x10

    xor-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 341
    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x3

    aget-byte v8, v12, v4

    aget v8, v6, v8

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v5, v8

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v3

    .line 342
    aget-byte v3, v7, v4

    aget v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v5, v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    .line 343
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

    .line 130
    invoke-direct {p0}, Lcom/c/c/ContactlessConfiguration;->getTerminalData()I

    .line 131
    iget v0, p0, Lcom/c/c/ContactlessConfiguration;->p:I

    iget v1, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 139
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 151
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 144
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

    .line 72
    invoke-direct {p0}, Lcom/c/c/ContactlessConfiguration;->getTerminalData()I

    .line 75
    iget v0, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    iget v1, p0, Lcom/c/c/ContactlessConfiguration;->p:I

    if-lt v0, v1, :cond_0

    .line 77
    const/4 v0, -0x1

    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/c/c/ContactlessConfiguration;->o:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    nop

    .line 93
    add-int v0, p2, p3

    move v1, p2

    .line 97
    :goto_0
    if-ge v1, v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/c/c/ContactlessConfiguration;->getTerminalData()I

    .line 102
    iget v2, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    iget v3, p0, Lcom/c/c/ContactlessConfiguration;->p:I

    if-lt v2, v3, :cond_1

    .line 105
    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    .line 108
    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/c/c/ContactlessConfiguration;->o:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/c/c/ContactlessConfiguration;->n:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    .line 111
    :cond_2
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 157
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const-wide/16 v0, 0x0

    .line 119
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 121
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 124
    :cond_0
    return-wide v0
.end method
