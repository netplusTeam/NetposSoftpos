.class public Lcom/mastercard/terminalsdk/internal/g;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[B


# instance fields
.field private final f:[I

.field private final g:[I

.field private final h:[[B

.field private final i:I

.field private final j:[B

.field private l:I

.field private m:I

.field private final n:[B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/internal/h;->b:[B

    sput-object v0, Lcom/mastercard/terminalsdk/internal/g;->e:[B

    sget-object v0, Lcom/mastercard/terminalsdk/internal/h;->a:[I

    sput-object v0, Lcom/mastercard/terminalsdk/internal/g;->d:[I

    sget-object v0, Lcom/mastercard/terminalsdk/internal/h;->c:[I

    sput-object v0, Lcom/mastercard/terminalsdk/internal/g;->b:[I

    sget-object v0, Lcom/mastercard/terminalsdk/internal/h;->e:[I

    sput-object v0, Lcom/mastercard/terminalsdk/internal/g;->c:[I

    sget-object v0, Lcom/mastercard/terminalsdk/internal/h;->i:[I

    sput-object v0, Lcom/mastercard/terminalsdk/internal/g;->a:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B[[B)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/g;->f:[I

    const/16 p1, 0x10

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/g;->j:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/g;->n:[B

    const v0, 0x7fffffff

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/g;->o:I

    iput p1, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

    iput p1, p0, Lcom/mastercard/terminalsdk/internal/g;->m:I

    iput p2, p0, Lcom/mastercard/terminalsdk/internal/g;->i:I

    invoke-static {p3, p2}, Lcom/mastercard/terminalsdk/internal/h;->a([BI)[I

    move-result-object p1

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/g;->g:[I

    invoke-direct {p0, p4}, Lcom/mastercard/terminalsdk/internal/g;->a([[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/g;->h:[[B

    return-void
.end method

.method private a()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/mastercard/terminalsdk/internal/g;->o:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/g;->o:I

    :cond_0
    iget v0, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/g;->j:[B

    iget v2, p0, Lcom/mastercard/terminalsdk/internal/g;->o:I

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const-string/jumbo v0, "unexpected block size"

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    :cond_1
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/mastercard/terminalsdk/internal/g;->j:[B

    rsub-int/lit8 v6, v2, 0x10

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    :cond_2
    if-lt v2, v1, :cond_4

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/g;->j:[B

    iget-object v2, p0, Lcom/mastercard/terminalsdk/internal/g;->n:[B

    invoke-direct {p0, v0, v4, v2, v4}, Lcom/mastercard/terminalsdk/internal/g;->c([BI[BI)V

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/g;->o:I

    iput v4, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/g;->n:[B

    const/16 v2, 0xf

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/mastercard/terminalsdk/internal/g;->m:I

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_0
    iget v0, p0, Lcom/mastercard/terminalsdk/internal/g;->m:I

    return v0
.end method

.method private a([[B)[[B
    .locals 7

    array-length v0, p1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v0, v2

    move v3, v1

    :goto_1
    aget-object v4, p1, v2

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v5, v0, v2

    aget-byte v4, v4, v3

    int-to-byte v6, v3

    aput-byte v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private c([BI[BI)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mastercard/terminalsdk/internal/g;->f:[I

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

    iget-object v3, v0, Lcom/mastercard/terminalsdk/internal/g;->g:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    xor-int/2addr v2, v6

    aput v2, v1, v5

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

    const/4 v1, 0x4

    move v2, v4

    :goto_0
    iget v3, v0, Lcom/mastercard/terminalsdk/internal/g;->i:I

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/mastercard/terminalsdk/internal/g;->d:[I

    iget-object v8, v0, Lcom/mastercard/terminalsdk/internal/g;->f:[I

    iget-object v9, v0, Lcom/mastercard/terminalsdk/internal/g;->h:[[B

    aget-object v10, v9, v5

    aget-byte v11, v10, v5

    aget v11, v8, v11

    ushr-int/lit8 v11, v11, 0x18

    aget v11, v3, v11

    sget-object v12, Lcom/mastercard/terminalsdk/internal/g;->b:[I

    aget-object v13, v9, v4

    aget-byte v14, v13, v5

    aget v14, v8, v14

    ushr-int/lit8 v14, v14, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v14, v12, v14

    xor-int/2addr v11, v14

    sget-object v14, Lcom/mastercard/terminalsdk/internal/g;->c:[I

    aget-object v15, v9, v6

    aget-byte v16, v15, v5

    aget v16, v8, v16

    ushr-int/lit8 v6, v16, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v6, v14, v6

    xor-int/2addr v6, v11

    sget-object v11, Lcom/mastercard/terminalsdk/internal/g;->a:[I

    aget-object v9, v9, v7

    aget-byte v16, v9, v5

    aget v5, v8, v16

    and-int/lit16 v5, v5, 0xff

    aget v5, v11, v5

    xor-int/2addr v5, v6

    iget-object v6, v0, Lcom/mastercard/terminalsdk/internal/g;->g:[I

    aget v16, v6, v1

    xor-int v5, v5, v16

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

    const/4 v6, 0x0

    aput v5, v8, v6

    const/4 v5, 0x1

    aput v4, v8, v5

    const/4 v4, 0x2

    aput v0, v8, v4

    const/4 v0, 0x3

    aput v3, v8, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    goto/16 :goto_0

    :cond_0
    iget-object v2, v0, Lcom/mastercard/terminalsdk/internal/g;->g:[I

    aget v3, v2, v1

    add-int/lit8 v4, p4, 0x1

    sget-object v5, Lcom/mastercard/terminalsdk/internal/g;->e:[B

    iget-object v6, v0, Lcom/mastercard/terminalsdk/internal/g;->f:[I

    iget-object v7, v0, Lcom/mastercard/terminalsdk/internal/g;->h:[[B

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

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    add-int/lit8 v4, v8, 0x1

    const/4 v10, 0x1

    aget-byte v13, v9, v10

    aget v13, v6, v13

    ushr-int/lit8 v13, v13, 0x18

    aget-byte v13, v5, v13

    ushr-int/lit8 v14, v3, 0x18

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, p3, v8

    add-int/lit8 v8, v4, 0x1

    aget-byte v13, v11, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x10

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v4

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

    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x1

    aget-byte v10, v7, v10

    aget v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    add-int/lit8 v3, v1, 0x2

    aget v3, v2, v3

    add-int/lit8 v4, v8, 0x1

    const/4 v10, 0x2

    aget-byte v13, v9, v10

    aget v13, v6, v13

    ushr-int/lit8 v13, v13, 0x18

    aget-byte v13, v5, v13

    ushr-int/lit8 v14, v3, 0x18

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, p3, v8

    add-int/lit8 v8, v4, 0x1

    aget-byte v13, v11, v10

    aget v10, v6, v13

    ushr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    ushr-int/lit8 v13, v3, 0x10

    xor-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, p3, v4

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

    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x2

    aget-byte v10, v7, v10

    aget v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, p3, v4

    const/4 v3, 0x3

    add-int/2addr v1, v3

    aget v1, v2, v1

    add-int/lit8 v2, v8, 0x1

    aget-byte v4, v9, v3

    aget v4, v6, v4

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v4, v5, v4

    ushr-int/lit8 v9, v1, 0x18

    xor-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, p3, v8

    add-int/lit8 v4, v2, 0x1

    aget-byte v8, v11, v3

    aget v3, v6, v8

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v5, v3

    ushr-int/lit8 v8, v1, 0x10

    xor-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, v4, 0x1

    const/4 v3, 0x3

    aget-byte v8, v12, v3

    aget v8, v6, v8

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v5, v8

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v4

    aget-byte v3, v7, v3

    aget v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v5, v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v2

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

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/internal/g;->a()I

    iget v0, p0, Lcom/mastercard/terminalsdk/internal/g;->m:I

    iget v1, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

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

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

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

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/internal/g;->a()I

    iget v0, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

    iget v1, p0, Lcom/mastercard/terminalsdk/internal/g;->m:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/internal/g;->n:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

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

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/internal/g;->a()I

    iget v2, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

    iget v3, p0, Lcom/mastercard/terminalsdk/internal/g;->m:I

    if-lt v2, v3, :cond_1

    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/mastercard/terminalsdk/internal/g;->n:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/mastercard/terminalsdk/internal/g;->l:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

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

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method
