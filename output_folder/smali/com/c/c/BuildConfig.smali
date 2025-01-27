.class public Lcom/c/c/BuildConfig;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:S

.field private b:[J

.field private c:[J

.field private final d:I

.field private f:[B

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IISII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const p1, 0x7fffffff

    iput p1, p0, Lcom/c/c/BuildConfig;->h:I

    .line 58
    const/4 p1, 0x4

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/16 v0, 0x8

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p0, Lcom/c/c/BuildConfig;->d:I

    .line 60
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/c/c/BuildConfig;->f:[B

    .line 61
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/c/c/BuildConfig;->b:[J

    .line 62
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/c/c/BuildConfig;->c:[J

    .line 64
    iput p4, p0, Lcom/c/c/BuildConfig;->g:I

    .line 65
    iput p4, p0, Lcom/c/c/BuildConfig;->i:I

    .line 67
    xor-int p1, p2, p6

    xor-int p2, p4, p6

    invoke-static {p1, p2}, Lcom/c/c/performTransaction;->getInstance(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/BuildConfig;->b:[J

    .line 69
    xor-int p1, p3, p6

    xor-int p2, p5, p6

    invoke-static {p1, p2}, Lcom/c/c/performTransaction;->getInstance(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/c/c/BuildConfig;->c:[J

    .line 71
    return-void
.end method

.method private BuildConfig()V
    .locals 8

    .line 154
    iget-object v0, p0, Lcom/c/c/BuildConfig;->b:[J

    iget-object v1, p0, Lcom/c/c/BuildConfig;->c:[J

    iget-short v2, p0, Lcom/c/c/BuildConfig;->a:S

    invoke-static {v0, v1, v2}, Lcom/c/c/performTransaction;->$$a([J[JI)V

    .line 155
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/c/c/BuildConfig;->d:I

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/c/c/BuildConfig;->f:[B

    aget-byte v2, v1, v0

    int-to-long v2, v2

    iget-object v4, p0, Lcom/c/c/BuildConfig;->b:[J

    iget-short v5, p0, Lcom/c/c/BuildConfig;->a:S

    aget-wide v4, v4, v5

    shl-int/lit8 v6, v0, 0x3

    shr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-short v0, p0, Lcom/c/c/BuildConfig;->a:S

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/c/c/BuildConfig;->a:S

    .line 160
    return-void
.end method

.method private getInstance()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lcom/c/c/BuildConfig;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/c/c/BuildConfig;->h:I

    .line 175
    :cond_0
    iget v0, p0, Lcom/c/c/BuildConfig;->g:I

    iget v1, p0, Lcom/c/c/BuildConfig;->d:I

    if-ne v0, v1, :cond_6

    .line 178
    iget-object v0, p0, Lcom/c/c/BuildConfig;->f:[B

    iget v1, p0, Lcom/c/c/BuildConfig;->h:I

    int-to-byte v2, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 182
    const-string/jumbo v0, "unexpected block size"

    if-ltz v1, :cond_5

    .line 189
    const/4 v1, 0x1

    .line 192
    :cond_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/c/c/BuildConfig;->f:[B

    iget v5, p0, Lcom/c/c/BuildConfig;->d:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 196
    if-lez v2, :cond_2

    .line 202
    add-int/2addr v1, v2

    .line 205
    iget v2, p0, Lcom/c/c/BuildConfig;->d:I

    if-lt v1, v2, :cond_1

    .line 209
    :cond_2
    iget v2, p0, Lcom/c/c/BuildConfig;->d:I

    if-lt v1, v2, :cond_4

    .line 215
    invoke-direct {p0}, Lcom/c/c/BuildConfig;->BuildConfig()V

    .line 218
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/c/c/BuildConfig;->h:I

    .line 221
    iput v3, p0, Lcom/c/c/BuildConfig;->g:I

    .line 225
    if-gez v0, :cond_3

    iget v0, p0, Lcom/c/c/BuildConfig;->d:I

    iget-object v1, p0, Lcom/c/c/BuildConfig;->f:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/c/c/BuildConfig;->d:I

    :goto_0
    iput v0, p0, Lcom/c/c/BuildConfig;->i:I

    goto :goto_1

    .line 211
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_6
    :goto_1
    iget v0, p0, Lcom/c/c/BuildConfig;->i:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/c/c/BuildConfig;->getInstance()I

    .line 136
    iget v0, p0, Lcom/c/c/BuildConfig;->i:I

    iget v1, p0, Lcom/c/c/BuildConfig;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 143
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

    .line 81
    invoke-direct {p0}, Lcom/c/c/BuildConfig;->getInstance()I

    .line 84
    iget v0, p0, Lcom/c/c/BuildConfig;->g:I

    iget v1, p0, Lcom/c/c/BuildConfig;->i:I

    if-lt v0, v1, :cond_0

    .line 86
    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/c/c/BuildConfig;->f:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/c/c/BuildConfig;->g:I

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

    .line 97
    nop

    .line 98
    add-int v0, p2, p3

    move v1, p2

    .line 102
    :goto_0
    if-ge v1, v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/c/c/BuildConfig;->getInstance()I

    .line 107
    iget v2, p0, Lcom/c/c/BuildConfig;->g:I

    iget v3, p0, Lcom/c/c/BuildConfig;->i:I

    if-lt v2, v3, :cond_1

    .line 110
    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    .line 113
    :cond_1
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/c/c/BuildConfig;->f:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/c/c/BuildConfig;->g:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    .line 116
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

    .line 123
    const-wide/16 v0, 0x0

    .line 124
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 126
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 128
    :cond_0
    return-wide v0
.end method
