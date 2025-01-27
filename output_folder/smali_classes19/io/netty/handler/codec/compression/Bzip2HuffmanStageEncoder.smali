.class final Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;
.super Ljava/lang/Object;
.source "Bzip2HuffmanStageEncoder.java"


# static fields
.field private static final HUFFMAN_HIGH_SYMBOL_COST:I = 0xf


# instance fields
.field private final huffmanCodeLengths:[[I

.field private final huffmanMergedCodeSymbols:[[I

.field private final mtfAlphabetSize:I

.field private final mtfBlock:[C

.field private final mtfLength:I

.field private final mtfSymbolFrequencies:[I

.field private final selectors:[B

.field private final writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/compression/Bzip2BitWriter;[CII[I)V
    .locals 6
    .param p1, "writer"    # Lio/netty/handler/codec/compression/Bzip2BitWriter;
    .param p2, "mtfBlock"    # [C
    .param p3, "mtfLength"    # I
    .param p4, "mtfAlphabetSize"    # I
    .param p5, "mtfSymbolFrequencies"    # [I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 83
    iput-object p2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfBlock:[C

    .line 84
    iput p3, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    .line 85
    iput p4, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    .line 86
    iput-object p5, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfSymbolFrequencies:[I

    .line 88
    invoke-static {p3}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectTableCount(I)I

    move-result v0

    .line 90
    .local v0, "totalTables":I
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    .line 91
    new-array v1, v1, [I

    aput p4, v1, v3

    aput v0, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanMergedCodeSymbols:[[I

    .line 92
    add-int/lit8 v1, p3, 0x32

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x32

    new-array v1, v1, [B

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    .line 93
    return-void
.end method

.method private assignHuffmanCodeSymbols()V
    .locals 13

    .line 264
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanMergedCodeSymbols:[[I

    .line 265
    .local v0, "huffmanMergedCodeSymbols":[[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    .line 266
    .local v1, "huffmanCodeLengths":[[I
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    .line 268
    .local v2, "mtfAlphabetSize":I
    array-length v3, v1

    .line 270
    .local v3, "totalTables":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 271
    aget-object v5, v1, v4

    .line 273
    .local v5, "tableLengths":[I
    const/16 v6, 0x20

    .line 274
    .local v6, "minimumLength":I
    const/4 v7, 0x0

    .line 275
    .local v7, "maximumLength":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v2, :cond_2

    .line 276
    aget v9, v5, v8

    .line 277
    .local v9, "length":I
    if-le v9, v7, :cond_0

    .line 278
    move v7, v9

    .line 280
    :cond_0
    if-ge v9, v6, :cond_1

    .line 281
    move v6, v9

    .line 275
    .end local v9    # "length":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 285
    .end local v8    # "j":I
    :cond_2
    const/4 v8, 0x0

    .line 286
    .local v8, "code":I
    move v9, v6

    .local v9, "j":I
    :goto_2
    if-gt v9, v7, :cond_5

    .line 287
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    if-ge v10, v2, :cond_4

    .line 288
    aget-object v11, v1, v4

    aget v11, v11, v10

    and-int/lit16 v11, v11, 0xff

    if-ne v11, v9, :cond_3

    .line 289
    aget-object v11, v0, v4

    shl-int/lit8 v12, v9, 0x18

    or-int/2addr v12, v8

    aput v12, v11, v10

    .line 290
    add-int/lit8 v8, v8, 0x1

    .line 287
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 293
    .end local v10    # "k":I
    :cond_4
    shl-int/lit8 v8, v8, 0x1

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 270
    .end local v5    # "tableLengths":[I
    .end local v6    # "minimumLength":I
    .end local v7    # "maximumLength":I
    .end local v8    # "code":I
    .end local v9    # "j":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private static generateHuffmanCodeLengths(I[I[I)V
    .locals 5
    .param p0, "alphabetSize"    # I
    .param p1, "symbolFrequencies"    # [I
    .param p2, "codeLengths"    # [I

    .line 125
    new-array v0, p0, [I

    .line 126
    .local v0, "mergedFrequenciesAndIndices":[I
    new-array v1, p0, [I

    .line 137
    .local v1, "sortedFrequencies":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 138
    aget v3, p1, v2

    shl-int/lit8 v3, v3, 0x9

    or-int/2addr v3, v2

    aput v3, v0, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 141
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p0, :cond_1

    .line 142
    aget v3, v0, v2

    ushr-int/lit8 v3, v3, 0x9

    aput v3, v1, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x14

    invoke-static {v1, v2}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->allocateHuffmanCodeLengths([II)V

    .line 150
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p0, :cond_2

    .line 151
    aget v3, v0, v2

    and-int/lit16 v3, v3, 0x1ff

    aget v4, v1, v2

    aput v4, p2, v3

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private generateHuffmanOptimisationSeeds()V
    .locals 13

    .line 162
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    .line 163
    .local v0, "huffmanCodeLengths":[[I
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfSymbolFrequencies:[I

    .line 164
    .local v1, "mtfSymbolFrequencies":[I
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    .line 166
    .local v2, "mtfAlphabetSize":I
    array-length v3, v0

    .line 168
    .local v3, "totalTables":I
    iget v4, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    .line 169
    .local v4, "remainingLength":I
    const/4 v5, -0x1

    .line 171
    .local v5, "lowCostEnd":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_5

    .line 173
    sub-int v7, v3, v6

    div-int v7, v4, v7

    .line 174
    .local v7, "targetCumulativeFrequency":I
    add-int/lit8 v8, v5, 0x1

    .line 175
    .local v8, "lowCostStart":I
    const/4 v9, 0x0

    .line 177
    .local v9, "actualCumulativeFrequency":I
    :goto_1
    if-ge v9, v7, :cond_0

    add-int/lit8 v10, v2, -0x1

    if-ge v5, v10, :cond_0

    .line 178
    add-int/lit8 v5, v5, 0x1

    aget v10, v1, v5

    add-int/2addr v9, v10

    goto :goto_1

    .line 181
    :cond_0
    if-le v5, v8, :cond_1

    if-eqz v6, :cond_1

    add-int/lit8 v10, v3, -0x1

    if-eq v6, v10, :cond_1

    sub-int v10, v3, v6

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_1

    .line 182
    add-int/lit8 v10, v5, -0x1

    .end local v5    # "lowCostEnd":I
    .local v10, "lowCostEnd":I
    aget v5, v1, v5

    sub-int/2addr v9, v5

    move v5, v10

    .line 185
    .end local v10    # "lowCostEnd":I
    .restart local v5    # "lowCostEnd":I
    :cond_1
    aget-object v10, v0, v6

    .line 186
    .local v10, "tableCodeLengths":[I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v2, :cond_4

    .line 187
    if-lt v11, v8, :cond_2

    if-le v11, v5, :cond_3

    .line 188
    :cond_2
    const/16 v12, 0xf

    aput v12, v10, v11

    .line 186
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 192
    .end local v11    # "j":I
    :cond_4
    sub-int/2addr v4, v9

    .line 171
    .end local v7    # "targetCumulativeFrequency":I
    .end local v8    # "lowCostStart":I
    .end local v9    # "actualCumulativeFrequency":I
    .end local v10    # "tableCodeLengths":[I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 194
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method private optimiseSelectorsAndHuffmanTables(Z)V
    .locals 19
    .param p1, "storeSelectors"    # Z

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfBlock:[C

    .line 206
    .local v1, "mtfBlock":[C
    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    .line 207
    .local v2, "selectors":[B
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    .line 208
    .local v3, "huffmanCodeLengths":[[I
    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    .line 209
    .local v4, "mtfLength":I
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    .line 211
    .local v5, "mtfAlphabetSize":I
    array-length v6, v3

    .line 212
    .local v6, "totalTables":I
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v9, 0x0

    aput v6, v7, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 214
    .local v7, "tableFrequencies":[[I
    const/4 v10, 0x0

    .line 217
    .local v10, "selectorIndex":I
    const/4 v11, 0x0

    .local v11, "groupStart":I
    :goto_0
    if-ge v11, v4, :cond_6

    .line 219
    add-int/lit8 v12, v11, 0x32

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v12, v8

    .line 222
    .local v12, "groupEnd":I
    new-array v13, v6, [S

    .line 223
    .local v13, "cost":[S
    move v14, v11

    .local v14, "i":I
    :goto_1
    if-gt v14, v12, :cond_1

    .line 224
    aget-char v15, v1, v14

    .line 225
    .local v15, "value":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_0

    .line 226
    aget-short v16, v13, v8

    aget-object v18, v3, v8

    aget v18, v18, v15

    add-int v9, v16, v18

    int-to-short v9, v9

    aput-short v9, v13, v8

    .line 225
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 223
    .end local v8    # "j":I
    .end local v15    # "value":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 231
    .end local v14    # "i":I
    :cond_1
    const/4 v8, 0x0

    .line 232
    .local v8, "bestTable":B
    const/4 v9, 0x0

    aget-short v14, v13, v9

    .line 233
    .local v14, "bestCost":I
    const/4 v15, 0x1

    .local v15, "i":B
    :goto_3
    if-ge v15, v6, :cond_3

    .line 234
    aget-short v9, v13, v15

    .line 235
    .local v9, "tableCost":I
    if-ge v9, v14, :cond_2

    .line 236
    move v14, v9

    .line 237
    move v8, v15

    .line 233
    .end local v9    # "tableCost":I
    :cond_2
    add-int/lit8 v9, v15, 0x1

    int-to-byte v15, v9

    const/4 v9, 0x0

    goto :goto_3

    .line 242
    .end local v15    # "i":B
    :cond_3
    aget-object v9, v7, v8

    .line 243
    .local v9, "bestGroupFrequencies":[I
    move v15, v11

    .local v15, "i":I
    :goto_4
    if-gt v15, v12, :cond_4

    .line 244
    aget-char v16, v1, v15

    aget v18, v9, v16

    const/16 v17, 0x1

    add-int/lit8 v18, v18, 0x1

    aput v18, v9, v16

    .line 243
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x1

    .line 248
    .end local v15    # "i":I
    if-eqz p1, :cond_5

    .line 249
    add-int/lit8 v15, v10, 0x1

    .end local v10    # "selectorIndex":I
    .local v15, "selectorIndex":I
    aput-byte v8, v2, v10

    move v10, v15

    .line 251
    .end local v15    # "selectorIndex":I
    .restart local v10    # "selectorIndex":I
    :cond_5
    add-int/lit8 v11, v12, 0x1

    .line 252
    .end local v8    # "bestTable":B
    .end local v9    # "bestGroupFrequencies":[I
    .end local v12    # "groupEnd":I
    .end local v13    # "cost":[S
    .end local v14    # "bestCost":I
    move/from16 v8, v17

    const/4 v9, 0x0

    goto :goto_0

    .line 255
    .end local v11    # "groupStart":I
    :cond_6
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v6, :cond_7

    .line 256
    aget-object v9, v7, v8

    aget-object v11, v3, v8

    invoke-static {v5, v9, v11}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->generateHuffmanCodeLengths(I[I[I)V

    .line 255
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 258
    .end local v8    # "i":I
    :cond_7
    return-void
.end method

.method private static selectTableCount(I)I
    .locals 1
    .param p0, "mtfLength"    # I

    .line 101
    const/16 v0, 0x960

    if-lt p0, v0, :cond_0

    .line 102
    const/4 v0, 0x6

    return v0

    .line 104
    :cond_0
    const/16 v0, 0x4b0

    if-lt p0, v0, :cond_1

    .line 105
    const/4 v0, 0x5

    return v0

    .line 107
    :cond_1
    const/16 v0, 0x258

    if-lt p0, v0, :cond_2

    .line 108
    const/4 v0, 0x4

    return v0

    .line 110
    :cond_2
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_3

    .line 111
    const/4 v0, 0x3

    return v0

    .line 113
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private writeBlockData(Lio/netty/buffer/ByteBuf;)V
    .locals 13
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 341
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 342
    .local v0, "writer":Lio/netty/handler/codec/compression/Bzip2BitWriter;
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanMergedCodeSymbols:[[I

    .line 343
    .local v1, "huffmanMergedCodeSymbols":[[I
    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    .line 344
    .local v2, "selectors":[B
    iget-object v3, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfBlock:[C

    .line 345
    .local v3, "mtf":[C
    iget v4, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    .line 347
    .local v4, "mtfLength":I
    const/4 v5, 0x0

    .line 348
    .local v5, "selectorIndex":I
    const/4 v6, 0x0

    .local v6, "mtfIndex":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 349
    add-int/lit8 v7, v6, 0x32

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 350
    .local v7, "groupEnd":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "selectorIndex":I
    .local v8, "selectorIndex":I
    aget-byte v5, v2, v5

    aget-object v5, v1, v5

    .line 352
    .local v5, "tableMergedCodeSymbols":[I
    :goto_1
    if-gt v6, v7, :cond_0

    .line 353
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "mtfIndex":I
    .local v9, "mtfIndex":I
    aget-char v6, v3, v6

    aget v6, v5, v6

    .line 354
    .local v6, "mergedCodeSymbol":I
    ushr-int/lit8 v10, v6, 0x18

    int-to-long v11, v6

    invoke-virtual {v0, p1, v10, v11, v12}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 355
    .end local v6    # "mergedCodeSymbol":I
    move v6, v9

    goto :goto_1

    .line 356
    .end local v5    # "tableMergedCodeSymbols":[I
    .end local v7    # "groupEnd":I
    .end local v9    # "mtfIndex":I
    .local v6, "mtfIndex":I
    :cond_0
    move v5, v8

    goto :goto_0

    .line 357
    .end local v6    # "mtfIndex":I
    .end local v8    # "selectorIndex":I
    .local v5, "selectorIndex":I
    :cond_1
    return-void
.end method

.method private writeSelectorsAndHuffmanTables(Lio/netty/buffer/ByteBuf;)V
    .locals 19
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    .line 303
    .local v2, "writer":Lio/netty/handler/codec/compression/Bzip2BitWriter;
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    .line 304
    .local v3, "selectors":[B
    array-length v4, v3

    .line 305
    .local v4, "totalSelectors":I
    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    .line 306
    .local v5, "huffmanCodeLengths":[[I
    array-length v6, v5

    .line 307
    .local v6, "totalTables":I
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    .line 309
    .local v7, "mtfAlphabetSize":I
    int-to-long v8, v6

    const/4 v10, 0x3

    invoke-virtual {v2, v1, v10, v8, v9}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 310
    int-to-long v8, v4

    const/16 v11, 0xf

    invoke-virtual {v2, v1, v11, v8, v9}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 313
    new-instance v8, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    invoke-direct {v8}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;-><init>()V

    .line 314
    .local v8, "selectorMTF":Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;
    array-length v9, v3

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v9, :cond_0

    aget-byte v13, v3, v12

    .line 315
    .local v13, "selector":B
    invoke-virtual {v8, v13}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->valueToFront(B)I

    move-result v14

    invoke-virtual {v2, v1, v14}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeUnary(Lio/netty/buffer/ByteBuf;I)V

    .line 314
    .end local v13    # "selector":B
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 319
    :cond_0
    array-length v9, v5

    move v12, v11

    :goto_1
    if-ge v12, v9, :cond_4

    aget-object v13, v5, v12

    .line 320
    .local v13, "tableLengths":[I
    aget v14, v13, v11

    .line 322
    .local v14, "currentLength":I
    const/4 v15, 0x5

    int-to-long v10, v14

    invoke-virtual {v2, v1, v15, v10, v11}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 324
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-ge v10, v7, :cond_3

    .line 325
    aget v11, v13, v10

    .line 326
    .local v11, "codeLength":I
    const/4 v15, 0x2

    if-ge v14, v11, :cond_1

    move/from16 v16, v15

    goto :goto_3

    :cond_1
    const/16 v16, 0x3

    :goto_3
    move/from16 v17, v16

    .line 327
    .local v17, "value":I
    sub-int v16, v11, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 328
    .local v16, "delta":I
    :goto_4
    add-int/lit8 v18, v16, -0x1

    .end local v16    # "delta":I
    .local v18, "delta":I
    if-lez v16, :cond_2

    .line 329
    move-object/from16 v16, v3

    move/from16 v0, v17

    move/from16 v17, v4

    .end local v3    # "selectors":[B
    .end local v4    # "totalSelectors":I
    .local v0, "value":I
    .local v16, "selectors":[B
    .local v17, "totalSelectors":I
    int-to-long v3, v0

    invoke-virtual {v2, v1, v15, v3, v4}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v16, v18

    move/from16 v17, v0

    move-object/from16 v0, p0

    goto :goto_4

    .line 331
    .end local v0    # "value":I
    .end local v16    # "selectors":[B
    .restart local v3    # "selectors":[B
    .restart local v4    # "totalSelectors":I
    .local v17, "value":I
    :cond_2
    move-object/from16 v16, v3

    move/from16 v0, v17

    move/from16 v17, v4

    .end local v3    # "selectors":[B
    .end local v4    # "totalSelectors":I
    .restart local v0    # "value":I
    .restart local v16    # "selectors":[B
    .local v17, "totalSelectors":I
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    .line 332
    move v14, v11

    .line 324
    .end local v0    # "value":I
    .end local v11    # "codeLength":I
    .end local v18    # "delta":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    goto :goto_2

    .end local v16    # "selectors":[B
    .end local v17    # "totalSelectors":I
    .restart local v3    # "selectors":[B
    .restart local v4    # "totalSelectors":I
    :cond_3
    move-object/from16 v16, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    .line 319
    .end local v3    # "selectors":[B
    .end local v4    # "totalSelectors":I
    .end local v10    # "j":I
    .end local v13    # "tableLengths":[I
    .end local v14    # "currentLength":I
    .restart local v16    # "selectors":[B
    .restart local v17    # "totalSelectors":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move v11, v3

    move-object/from16 v3, v16

    const/4 v10, 0x3

    goto :goto_1

    .line 335
    .end local v16    # "selectors":[B
    .end local v17    # "totalSelectors":I
    .restart local v3    # "selectors":[B
    .restart local v4    # "totalSelectors":I
    :cond_4
    return-void
.end method


# virtual methods
.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 364
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->generateHuffmanOptimisationSeeds()V

    .line 365
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 366
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->optimiseSelectorsAndHuffmanTables(Z)V

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 368
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->assignHuffmanCodeSymbols()V

    .line 371
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writeSelectorsAndHuffmanTables(Lio/netty/buffer/ByteBuf;)V

    .line 372
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writeBlockData(Lio/netty/buffer/ByteBuf;)V

    .line 373
    return-void
.end method
