.class public Lcom/mastercard/terminalsdk/internal/a;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:[B

.field private final b:I

.field private c:[B

.field private d:Lcom/mastercard/terminalsdk/internal/e;

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:[I

.field private j:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[I[BIZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/mastercard/terminalsdk/internal/a;->g:I

    const/4 p1, 0x3

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 p4, 0x10

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/mastercard/terminalsdk/internal/a;->b:I

    const/16 p4, 0x8

    new-array v0, p4, [B

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    new-array v0, p4, [B

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/a;->a:[B

    new-array v1, p4, [B

    iput-object v1, p0, Lcom/mastercard/terminalsdk/internal/a;->e:[B

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mastercard/terminalsdk/internal/a;->i:[I

    iput p4, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

    iput p4, p0, Lcom/mastercard/terminalsdk/internal/a;->h:I

    iput p6, p0, Lcom/mastercard/terminalsdk/internal/a;->f:I

    if-ne p6, v1, :cond_0

    const/4 p6, 0x0

    invoke-static {p3, p6, v0, p6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance p3, Lcom/mastercard/terminalsdk/internal/e;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p1, p4, p5}, Lcom/mastercard/terminalsdk/internal/e;-><init>([IIZZ)V

    iput-object p3, p0, Lcom/mastercard/terminalsdk/internal/a;->d:Lcom/mastercard/terminalsdk/internal/e;

    return-void
.end method

.method private a()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/mastercard/terminalsdk/internal/a;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/a;->g:I

    :cond_0
    iget v0, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    iget v2, p0, Lcom/mastercard/terminalsdk/internal/a;->g:I

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const-string/jumbo v0, "unexpected block size"

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    :cond_1
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    rsub-int/lit8 v6, v2, 0x8

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    :cond_2
    if-lt v2, v1, :cond_4

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/internal/a;->d()V

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/a;->g:I

    iput v4, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/mastercard/terminalsdk/internal/a;->h:I

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
    iget v0, p0, Lcom/mastercard/terminalsdk/internal/a;->h:I

    return v0
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    aget-byte v2, v1, v0

    iget-object v3, p0, Lcom/mastercard/terminalsdk/internal/a;->a:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mastercard/terminalsdk/internal/a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    iget-object v4, v0, Lcom/mastercard/terminalsdk/internal/a;->e:[B

    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, v0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

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

    aget-byte v7, v1, v2

    shl-int/lit8 v7, v7, 0x8

    const v9, 0xff00

    and-int/2addr v7, v9

    add-int/2addr v4, v7

    const/4 v7, 0x3

    aget-byte v10, v1, v7

    and-int/lit16 v10, v10, 0xff

    add-int v11, v4, v10

    const/4 v4, 0x4

    aget-byte v10, v1, v4

    shl-int/lit8 v10, v10, 0x18

    and-int/2addr v5, v10

    const/4 v10, 0x5

    aget-byte v12, v1, v10

    shl-int/lit8 v12, v12, 0x10

    and-int/2addr v8, v12

    add-int/2addr v5, v8

    const/4 v8, 0x6

    aget-byte v12, v1, v8

    shl-int/lit8 v12, v12, 0x8

    and-int/2addr v9, v12

    add-int/2addr v5, v9

    const/4 v9, 0x7

    aget-byte v1, v1, v9

    and-int/lit16 v1, v1, 0xff

    add-int v12, v5, v1

    const/4 v13, 0x0

    iget v14, v0, Lcom/mastercard/terminalsdk/internal/a;->b:I

    iget-object v1, v0, Lcom/mastercard/terminalsdk/internal/a;->d:Lcom/mastercard/terminalsdk/internal/e;

    iget-object v15, v1, Lcom/mastercard/terminalsdk/internal/e;->b:[I

    iget-object v1, v0, Lcom/mastercard/terminalsdk/internal/a;->d:Lcom/mastercard/terminalsdk/internal/e;

    iget-object v1, v1, Lcom/mastercard/terminalsdk/internal/e;->e:[[I

    iget-object v5, v0, Lcom/mastercard/terminalsdk/internal/a;->i:[I

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    invoke-static/range {v11 .. v17}, Lcom/mastercard/terminalsdk/internal/b;->b(IIZI[I[[I[I)V

    iget-object v1, v0, Lcom/mastercard/terminalsdk/internal/a;->i:[I

    aget v5, v1, v3

    aget v1, v1, v6

    iget-object v11, v0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    shr-int/lit8 v12, v5, 0x18

    int-to-byte v12, v12

    aput-byte v12, v11, v3

    shr-int/lit8 v12, v5, 0x10

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    shr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    aput-byte v6, v11, v2

    int-to-byte v5, v5

    aput-byte v5, v11, v7

    shr-int/lit8 v5, v1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v11, v4

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v11, v10

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v11, v8

    int-to-byte v1, v1

    aput-byte v1, v11, v9

    iget v1, v0, Lcom/mastercard/terminalsdk/internal/a;->f:I

    if-ne v1, v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/mastercard/terminalsdk/internal/a;->b()V

    iget-object v1, v0, Lcom/mastercard/terminalsdk/internal/a;->e:[B

    iget-object v2, v0, Lcom/mastercard/terminalsdk/internal/a;->a:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
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

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/internal/a;->a()I

    iget v0, p0, Lcom/mastercard/terminalsdk/internal/a;->h:I

    iget v1, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

    sub-int/2addr v0, v1

    return v0
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

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/internal/a;->a()I

    iget v0, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

    iget v1, p0, Lcom/mastercard/terminalsdk/internal/a;->h:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

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

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/internal/a;->a()I

    iget v2, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

    iget v3, p0, Lcom/mastercard/terminalsdk/internal/a;->h:I

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

    iget-object v4, p0, Lcom/mastercard/terminalsdk/internal/a;->c:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/mastercard/terminalsdk/internal/a;->j:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

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
