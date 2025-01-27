.class public Lcom/c/c/ContactlessKernel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:[I

.field static final c:[B

.field static final d:[B

.field static final g:[I

.field static final h:[I

.field static final i:[I

.field static final j:[I


# direct methods
.method static $$a([BI)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 121
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 133
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    .line 136
    new-array v2, p1, [I

    .line 139
    nop

    .line 140
    nop

    .line 144
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_0

    .line 146
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v1

    or-int/2addr v5, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aput v5, v2, v4

    .line 144
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 154
    :cond_0
    move v4, v0

    move p0, v3

    :goto_1
    if-ge v4, p1, :cond_2

    .line 156
    add-int/lit8 v5, v4, -0x1

    aget v5, v2, v5

    .line 157
    if-nez v3, :cond_1

    .line 160
    nop

    .line 161
    sget-object v3, Lcom/c/c/ContactlessKernel;->c:[B

    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v3, v6

    shl-int/lit8 v6, v6, 0x18

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v1

    or-int/2addr v6, v7

    and-int/lit16 v7, v5, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x18

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v6

    .line 165
    sget-object v5, Lcom/c/c/ContactlessKernel;->j:[I

    add-int/lit8 v6, p0, 0x1

    aget p0, v5, p0

    xor-int v5, v3, p0

    move v3, v0

    move p0, v6

    .line 167
    :cond_1
    add-int/lit8 v6, v4, -0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v2, v4

    .line 154
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 170
    :cond_2
    return-object v2

    .line 127
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static $$a(I)[[B
    .locals 9

    .line 329
    const/4 v0, 0x4

    new-array v1, v0, [[B

    .line 330
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 332
    shl-int/lit8 v4, v3, 0x3

    ushr-int v4, p0, v4

    .line 333
    new-array v5, v0, [B

    and-int/lit8 v6, v4, 0x3

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    shr-int/lit8 v6, v4, 0x2

    const/4 v7, 0x3

    and-int/2addr v6, v7

    int-to-byte v6, v6

    const/4 v8, 0x1

    aput-byte v6, v5, v8

    shr-int/lit8 v6, v4, 0x4

    and-int/2addr v6, v7

    int-to-byte v6, v6

    const/4 v8, 0x2

    aput-byte v6, v5, v8

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v7

    aput-object v5, v1, v3

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v1
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 26
    const/16 v0, 0x100

    new-array v1, v0, [B

    sput-object v1, Lcom/c/c/ContactlessKernel;->c:[B

    .line 29
    new-array v1, v0, [B

    sput-object v1, Lcom/c/c/ContactlessKernel;->d:[B

    .line 31
    new-array v1, v0, [I

    sput-object v1, Lcom/c/c/ContactlessKernel;->b:[I

    .line 32
    new-array v1, v0, [I

    sput-object v1, Lcom/c/c/ContactlessKernel;->g:[I

    .line 33
    new-array v1, v0, [I

    sput-object v1, Lcom/c/c/ContactlessKernel;->h:[I

    .line 34
    new-array v1, v0, [I

    sput-object v1, Lcom/c/c/ContactlessKernel;->i:[I

    .line 38
    const/16 v1, 0xa

    new-array v1, v1, [I

    sput-object v1, Lcom/c/c/ContactlessKernel;->j:[I

    .line 42
    invoke-static {}, Lcom/c/c/ContactlessKernel;->BuildConfig()V

    .line 49
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 51
    sget-object v2, Lcom/c/c/ContactlessKernel;->c:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 53
    sget-object v3, Lcom/c/c/ContactlessKernel;->d:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v2

    .line 55
    shl-int/lit8 v3, v1, 0x1

    .line 56
    if-lt v3, v0, :cond_0

    .line 58
    xor-int/lit16 v3, v3, 0x11b

    .line 60
    :cond_0
    shl-int/lit8 v4, v3, 0x1

    .line 61
    if-lt v4, v0, :cond_1

    .line 63
    xor-int/lit16 v4, v4, 0x11b

    .line 65
    :cond_1
    shl-int/lit8 v5, v4, 0x1

    .line 66
    if-lt v5, v0, :cond_2

    .line 68
    xor-int/lit16 v5, v5, 0x11b

    .line 70
    :cond_2
    xor-int v6, v5, v1

    .line 71
    xor-int v7, v6, v3

    .line 72
    xor-int v8, v6, v4

    .line 73
    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    .line 79
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v4, v6, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v8, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v7

    .line 80
    sget-object v4, Lcom/c/c/ContactlessKernel;->b:[I

    aput v3, v4, v2

    .line 81
    sget-object v4, Lcom/c/c/ContactlessKernel;->g:[I

    ushr-int/lit8 v5, v3, 0x8

    shl-int/lit8 v6, v3, 0x18

    or-int/2addr v5, v6

    aput v5, v4, v2

    .line 82
    sget-object v4, Lcom/c/c/ContactlessKernel;->h:[I

    ushr-int/lit8 v5, v3, 0x10

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    aput v5, v4, v2

    .line 83
    sget-object v4, Lcom/c/c/ContactlessKernel;->i:[I

    ushr-int/lit8 v5, v3, 0x18

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    aput v3, v4, v2

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_3
    const/16 v0, 0x11b

    invoke-static {v0}, Lcom/c/c/ContactlessKernel;->getTerminalData(I)V

    .line 87
    return-void
.end method

.method private static BuildConfig()V
    .locals 8

    .line 349
    nop

    .line 350
    const/4 v0, 0x1

    move v1, v0

    move v2, v1

    .line 354
    :goto_0
    shl-int/lit8 v3, v1, 0x1

    xor-int/2addr v3, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    xor-int/2addr v1, v3

    int-to-byte v1, v1

    .line 357
    shl-int/lit8 v3, v2, 0x1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 358
    shl-int/lit8 v3, v2, 0x2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 359
    shl-int/lit8 v3, v2, 0x4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 360
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 362
    sget-object v3, Lcom/c/c/ContactlessKernel;->c:[B

    and-int/lit16 v5, v1, 0xff

    xor-int/lit8 v6, v2, 0x63

    invoke-static {v2, v0}, Lcom/c/c/ContactlessKernel;->getTerminalData(BI)I

    move-result v7

    xor-int/2addr v6, v7

    const/4 v7, 0x2

    invoke-static {v2, v7}, Lcom/c/c/ContactlessKernel;->getTerminalData(BI)I

    move-result v7

    xor-int/2addr v6, v7

    const/4 v7, 0x3

    invoke-static {v2, v7}, Lcom/c/c/ContactlessKernel;->getTerminalData(BI)I

    move-result v7

    xor-int/2addr v6, v7

    const/4 v7, 0x4

    invoke-static {v2, v7}, Lcom/c/c/ContactlessKernel;->getTerminalData(BI)I

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 364
    if-ne v5, v0, :cond_2

    .line 367
    const/16 v0, 0x63

    aput-byte v0, v3, v4

    .line 368
    return-void

    .line 364
    :cond_2
    goto :goto_0
.end method

.method static BuildConfig([BI)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lcom/c/c/ContactlessKernel;->$$a([BI)[I

    move-result-object v0

    .line 187
    invoke-static {p0, v0, p1}, Lcom/c/c/ContactlessKernel;->BuildConfig([B[II)[I

    move-result-object p0

    return-object p0
.end method

.method private static BuildConfig([B[II)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 207
    array-length p0, p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    .line 219
    add-int/lit8 p0, p2, 0x1

    const/4 v0, 0x4

    mul-int/2addr p0, v0

    .line 222
    new-array p0, p0, [I

    .line 225
    nop

    .line 226
    mul-int/lit8 v1, p2, 0x4

    .line 231
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    aget v1, p1, v1

    aput v1, p0, v2

    .line 232
    add-int/lit8 v1, v3, 0x1

    aget v2, p1, v3

    const/4 v3, 0x1

    aput v2, p0, v3

    .line 233
    const/4 v2, 0x2

    add-int/lit8 v4, v1, 0x1

    aget v1, p1, v1

    aput v1, p0, v2

    .line 234
    const/4 v1, 0x3

    aget v2, p1, v4

    aput v2, p0, v1

    .line 235
    add-int/lit8 v4, v4, -0x7

    .line 238
    nop

    :goto_0
    if-ge v3, p2, :cond_0

    .line 240
    add-int/lit8 v1, v4, 0x1

    aget v2, p1, v4

    .line 241
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/c/c/ContactlessKernel;->b:[I

    sget-object v6, Lcom/c/c/ContactlessKernel;->c:[B

    ushr-int/lit8 v7, v2, 0x18

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v5, v7

    sget-object v8, Lcom/c/c/ContactlessKernel;->g:[I

    ushr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v8, v9

    xor-int/2addr v7, v9

    sget-object v9, Lcom/c/c/ContactlessKernel;->h:[I

    ushr-int/lit8 v10, v2, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v9, v10

    xor-int/2addr v7, v10

    sget-object v10, Lcom/c/c/ContactlessKernel;->i:[I

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v10, v2

    xor-int/2addr v2, v7

    aput v2, p0, v0

    .line 245
    add-int/lit8 v0, v1, 0x1

    aget v1, p1, v1

    .line 246
    add-int/lit8 v2, v4, 0x1

    ushr-int/lit8 v7, v1, 0x18

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v5, v7

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v7, v11

    ushr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v9, v11

    xor-int/2addr v7, v11

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v10, v1

    xor-int/2addr v1, v7

    aput v1, p0, v4

    .line 250
    add-int/lit8 v1, v0, 0x1

    aget v0, p1, v0

    .line 251
    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v7, v0, 0x18

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v5, v7

    ushr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v8, v11

    xor-int/2addr v7, v11

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v9, v11

    xor-int/2addr v7, v11

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    aget v0, v10, v0

    xor-int/2addr v0, v7

    aput v0, p0, v2

    .line 255
    aget v0, p1, v1

    .line 256
    add-int/lit8 v2, v4, 0x1

    ushr-int/lit8 v7, v0, 0x18

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    aget v5, v5, v7

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v8, v7

    xor-int/2addr v5, v7

    ushr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v9, v7

    xor-int/2addr v5, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    aget v0, v10, v0

    xor-int/2addr v0, v5

    aput v0, p0, v4

    .line 260
    add-int/lit8 v4, v1, -0x7

    .line 238
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto/16 :goto_0

    .line 264
    :cond_0
    add-int/lit8 p2, v0, 0x1

    add-int/lit8 v1, v4, 0x1

    aget v2, p1, v4

    aput v2, p0, v0

    .line 265
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v2, v1, 0x1

    aget v1, p1, v1

    aput v1, p0, p2

    .line 266
    add-int/lit8 p2, v0, 0x1

    add-int/lit8 v1, v2, 0x1

    aget v2, p1, v2

    aput v2, p0, v0

    .line 267
    aget p1, p1, v1

    aput p1, p0, p2

    .line 269
    return-object p0

    .line 213
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getTerminalData(BI)I
    .locals 1

    .line 387
    and-int/lit16 p0, p0, 0xff

    .line 388
    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private static getTerminalData(I)V
    .locals 5

    .line 372
    nop

    .line 373
    sget-object v0, Lcom/c/c/ContactlessKernel;->j:[I

    const/4 v1, 0x0

    const/high16 v2, 0x1000000

    aput v2, v0, v1

    .line 374
    const/4 v0, 0x1

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 376
    shl-int/2addr v2, v0

    .line 377
    const/16 v3, 0x100

    if-lt v2, v3, :cond_0

    .line 379
    xor-int/2addr v2, p0

    .line 381
    :cond_0
    sget-object v3, Lcom/c/c/ContactlessKernel;->j:[I

    shl-int/lit8 v4, v2, 0x18

    aput v4, v3, v1

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    return-void
.end method
