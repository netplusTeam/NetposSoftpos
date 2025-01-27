.class final Lorg/jdom2/StringBin;
.super Ljava/lang/Object;
.source "StringBin.java"


# static fields
.field private static final DEFAULTCAP:I = 0x3ff

.field private static final GROW:I = 0x4

.field private static final MAXBUCKET:I = 0x40


# instance fields
.field private buckets:[[Ljava/lang/String;

.field private lengths:[I

.field private mask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    const/16 v0, 0x3ff

    invoke-direct {p0, v0}, Lorg/jdom2/StringBin;-><init>(I)V

    .line 125
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/StringBin;->mask:I

    .line 132
    if-ltz p1, :cond_2

    .line 135
    add-int/lit8 p1, p1, -0x1

    .line 136
    const/16 v0, 0x3ff

    if-ge p1, v0, :cond_0

    .line 137
    const/16 p1, 0x3ff

    .line 140
    :cond_0
    div-int/lit8 p1, p1, 0x3

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "shift":I
    :goto_0
    if-eqz p1, :cond_1

    .line 143
    ushr-int/lit8 p1, p1, 0x1

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/jdom2/StringBin;->mask:I

    .line 147
    add-int/2addr v2, v1

    new-array v1, v2, [[Ljava/lang/String;

    iput-object v1, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    .line 148
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jdom2/StringBin;->lengths:[I

    .line 149
    return-void

    .line 133
    .end local v0    # "shift":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not have a negative capacity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 374
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private final locate(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 5
    .param p1, "hash"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "bucket"    # [Ljava/lang/String;
    .param p4, "length"    # I

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "left":I
    add-int/lit8 v1, p4, -0x1

    .line 164
    .local v1, "right":I
    const/4 v2, 0x0

    .line 165
    .local v2, "mid":I
    :goto_0
    if-gt v0, v1, :cond_9

    .line 166
    add-int v3, v0, v1

    ushr-int/lit8 v2, v3, 0x1

    .line 167
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 168
    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 169
    :cond_0
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 170
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    aget-object v3, p3, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "cmp":I
    if-nez v3, :cond_2

    .line 177
    return v2

    .line 178
    :cond_2
    if-gez v3, :cond_6

    .line 181
    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v0, :cond_5

    aget-object v4, p3, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, p1, :cond_5

    .line 184
    aget-object v4, p3, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 185
    if-nez v3, :cond_4

    .line 187
    return v2

    .line 188
    :cond_4
    if-lez v3, :cond_3

    .line 195
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    return v4

    .line 200
    :cond_5
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    return v4

    .line 204
    :cond_6
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v1, :cond_8

    aget-object v4, p3, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, p1, :cond_8

    .line 206
    aget-object v4, p3, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 207
    if-nez v3, :cond_7

    .line 209
    return v2

    .line 210
    :cond_7
    if-gez v3, :cond_6

    .line 217
    neg-int v4, v2

    add-int/lit8 v4, v4, -0x1

    return v4

    .line 222
    :cond_8
    neg-int v4, v2

    add-int/lit8 v4, v4, -0x1

    return v4

    .line 227
    .end local v3    # "cmp":I
    :cond_9
    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    return v3
.end method

.method private rehash()V
    .locals 17

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    .line 331
    .local v1, "olddata":[[Ljava/lang/String;
    iget v2, v0, Lorg/jdom2/StringBin;->mask:I

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/jdom2/StringBin;->mask:I

    .line 332
    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [[Ljava/lang/String;

    iput-object v2, v0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    .line 333
    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/jdom2/StringBin;->lengths:[I

    .line 334
    const/4 v2, 0x0

    .local v2, "hash":I
    const/4 v3, 0x0

    .local v3, "bucketid":I
    const/4 v4, 0x0

    .line 335
    .local v4, "length":I
    move-object v5, v1

    .local v5, "arr$":[[Ljava/lang/String;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 336
    .local v8, "ob":[Ljava/lang/String;
    if-nez v8, :cond_0

    .line 338
    move-object/from16 v16, v1

    goto :goto_3

    .line 340
    :cond_0
    move-object v9, v8

    .local v9, "arr$":[Ljava/lang/String;
    array-length v10, v9

    .local v10, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 341
    .local v12, "val":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 343
    move-object/from16 v16, v1

    goto :goto_3

    .line 345
    :cond_1
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 346
    ushr-int/lit8 v13, v2, 0x10

    xor-int/2addr v13, v2

    iget v14, v0, Lorg/jdom2/StringBin;->mask:I

    and-int v3, v13, v14

    .line 347
    iget-object v13, v0, Lorg/jdom2/StringBin;->lengths:[I

    aget v4, v13, v3

    .line 348
    if-nez v4, :cond_2

    .line 349
    iget-object v13, v0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    array-length v14, v8

    add-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    aput-object v14, v13, v3

    .line 350
    const/4 v13, 0x0

    aput-object v12, v14, v13

    move-object/from16 v16, v1

    goto :goto_2

    .line 352
    :cond_2
    iget-object v14, v0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v15, v14, v3

    move-object/from16 v16, v1

    .end local v1    # "olddata":[[Ljava/lang/String;
    .local v16, "olddata":[[Ljava/lang/String;
    array-length v1, v15

    if-ne v1, v4, :cond_3

    .line 353
    aget v1, v13, v3

    add-int/lit8 v1, v1, 0x4

    invoke-static {v15, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, v14, v3

    .line 356
    :cond_3
    iget-object v1, v0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v12, v1, v4

    .line 358
    :goto_2
    iget-object v1, v0, Lorg/jdom2/StringBin;->lengths:[I

    aget v13, v1, v3

    add-int/lit8 v13, v13, 0x1

    aput v13, v1, v3

    .line 340
    .end local v12    # "val":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    goto :goto_1

    .end local v16    # "olddata":[[Ljava/lang/String;
    .restart local v1    # "olddata":[[Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v1

    .line 335
    .end local v1    # "olddata":[[Ljava/lang/String;
    .end local v8    # "ob":[Ljava/lang/String;
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    .restart local v16    # "olddata":[[Ljava/lang/String;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    .line 361
    .end local v5    # "arr$":[[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    .end local v16    # "olddata":[[Ljava/lang/String;
    .restart local v1    # "olddata":[[Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public reuse(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .line 239
    if-nez p1, :cond_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 273
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    iget v2, p0, Lorg/jdom2/StringBin;->mask:I

    and-int/2addr v1, v2

    .line 275
    .local v1, "bucketid":I
    iget-object v2, p0, Lorg/jdom2/StringBin;->lengths:[I

    aget v2, v2, v1

    .line 276
    .local v2, "length":I
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 278
    invoke-static {p1}, Lorg/jdom2/StringBin;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "v":Ljava/lang/String;
    iget-object v5, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v6, v5, v1

    .line 280
    const/4 v5, 0x0

    aput-object v4, v6, v5

    .line 281
    iget-object v5, p0, Lorg/jdom2/StringBin;->lengths:[I

    aput v3, v5, v1

    .line 282
    return-object v4

    .line 286
    .end local v4    # "v":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 289
    .local v4, "bucket":[Ljava/lang/String;
    invoke-direct {p0, v0, p1, v4, v2}, Lorg/jdom2/StringBin;->locate(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v5

    neg-int v5, v5

    sub-int/2addr v5, v3

    .line 290
    .local v5, "ip":I
    if-gez v5, :cond_2

    .line 292
    neg-int v6, v5

    sub-int/2addr v6, v3

    aget-object v3, v4, v6

    return-object v3

    .line 294
    :cond_2
    const/16 v6, 0x40

    if-lt v2, v6, :cond_3

    .line 296
    invoke-direct {p0}, Lorg/jdom2/StringBin;->rehash()V

    .line 297
    invoke-virtual {p0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 299
    :cond_3
    array-length v6, v4

    if-ne v2, v6, :cond_4

    .line 301
    add-int/lit8 v6, v2, 0x4

    invoke-static {v4, v6}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, [Ljava/lang/String;

    .line 302
    iget-object v6, p0, Lorg/jdom2/StringBin;->buckets:[[Ljava/lang/String;

    aput-object v4, v6, v1

    .line 304
    :cond_4
    add-int/lit8 v6, v5, 0x1

    sub-int v7, v2, v5

    invoke-static {v4, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    invoke-static {p1}, Lorg/jdom2/StringBin;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "v":Ljava/lang/String;
    aput-object v6, v4, v5

    .line 307
    iget-object v7, p0, Lorg/jdom2/StringBin;->lengths:[I

    aget v8, v7, v1

    add-int/2addr v8, v3

    aput v8, v7, v1

    .line 308
    return-object v6
.end method

.method public size()I
    .locals 5

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "sum":I
    iget-object v1, p0, Lorg/jdom2/StringBin;->lengths:[I

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 384
    .local v4, "l":I
    add-int/2addr v0, v4

    .line 383
    .end local v4    # "l":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return v0
.end method
