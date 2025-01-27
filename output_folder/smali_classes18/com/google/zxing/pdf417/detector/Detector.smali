.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final BARCODE_MIN_HEIGHT:I = 0xa

.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final MAX_AVG_VARIANCE:F = 0.42f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.8f

.field private static final MAX_PATTERN_DRIFT:I = 0x5

.field private static final MAX_PIXEL_DRIFT:I = 0x3

.field private static final ROW_STEP:I = 0x5

.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .locals 3
    .param p0, "result"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "tmpResult"    # [Lcom/google/zxing/ResultPoint;
    .param p2, "destinationIndexes"    # [I

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 177
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .locals 3
    .param p0, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 79
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 81
    .local v0, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static {p2, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 82
    .local v2, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    move-object v2, v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 84
    move-object v0, v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    .line 85
    invoke-static {p2, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v2

    .line 87
    :cond_0
    new-instance v1, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V

    return-object v1
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .locals 10
    .param p0, "multiple"    # Z
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "row":I
    const/4 v2, 0x0

    .line 101
    .local v2, "column":I
    const/4 v3, 0x0

    .local v3, "foundBarcodeInRow":Z
    const/4 v4, 0x0

    move-object v5, v4

    .line 102
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 103
    invoke-static {p1, v1, v2}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 105
    .local v4, "vertices":[Lcom/google/zxing/ResultPoint;
    move-object v4, v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-nez v6, :cond_3

    const/4 v6, 0x3

    aget-object v7, v4, v6

    if-nez v7, :cond_3

    .line 106
    if-eqz v3, :cond_5

    .line 112
    const/4 v3, 0x0

    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/zxing/ResultPoint;

    .line 115
    .local v5, "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    move-object v5, v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_0

    .line 116
    int-to-float v8, v1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v1, v8

    .line 118
    :cond_0
    aget-object v8, v5, v6

    if-eqz v8, :cond_1

    .line 119
    aget-object v8, v5, v6

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 121
    .end local v5    # "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    :cond_1
    goto :goto_1

    .line 122
    :cond_2
    add-int/lit8 v1, v1, 0x5

    .line 123
    goto :goto_0

    .line 125
    :cond_3
    const/4 v3, 0x1

    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    if-eqz p0, :cond_5

    .line 132
    const/4 v6, 0x2

    aget-object v7, v4, v6

    if-eqz v7, :cond_4

    .line 133
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 134
    aget-object v6, v4, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v1, v6

    goto :goto_0

    .line 136
    :cond_4
    const/4 v6, 0x4

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 137
    aget-object v6, v4, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v1, v6

    .line 139
    .end local v4    # "vertices":[Lcom/google/zxing/ResultPoint;
    goto :goto_0

    .line 140
    :cond_5
    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I
    .locals 16
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "width"    # I
    .param p4, "pattern"    # [I
    .param p5, "counters"    # [I

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 259
    move/from16 v4, p1

    .line 260
    .local v4, "patternStart":I
    const/4 v6, 0x0

    .line 263
    .local v6, "pixelDrift":I
    :goto_0
    invoke-virtual {v0, v4, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_1

    if-lez v4, :cond_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pixelDrift":I
    .local v7, "pixelDrift":I
    const/4 v8, 0x3

    if-ge v6, v8, :cond_0

    .line 264
    add-int/lit8 v4, v4, -0x1

    move v6, v7

    goto :goto_0

    .line 263
    :cond_0
    move v6, v7

    .line 266
    .end local v7    # "pixelDrift":I
    .restart local v6    # "pixelDrift":I
    :cond_1
    move v7, v4

    .line 267
    .local v7, "x":I
    const/4 v8, 0x0

    .line 268
    .local v8, "counterPosition":I
    array-length v9, v2

    .line 269
    .local v9, "patternLength":I
    const/4 v10, 0x0

    .local v10, "isWhite":Z
    :goto_1
    const v11, 0x3ed70a3d    # 0.42f

    const/4 v12, 0x2

    const/4 v13, 0x1

    move/from16 v14, p3

    if-ge v7, v14, :cond_6

    .line 270
    invoke-virtual {v0, v7, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    .line 271
    if-eq v15, v10, :cond_2

    .line 272
    aget v11, v3, v8

    add-int/2addr v11, v13

    aput v11, v3, v8

    goto :goto_4

    .line 274
    :cond_2
    add-int/lit8 v15, v9, -0x1

    if-ne v8, v15, :cond_4

    .line 275
    invoke-static {v3, v2}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[I)F

    move-result v15

    cmpg-float v11, v15, v11

    if-gez v11, :cond_3

    .line 276
    new-array v11, v12, [I

    aput v4, v11, v5

    aput v7, v11, v13

    return-object v11

    .line 278
    :cond_3
    aget v11, v3, v5

    aget v15, v3, v13

    add-int/2addr v11, v15

    add-int/2addr v4, v11

    .line 279
    add-int/lit8 v11, v8, -0x1

    invoke-static {v3, v12, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    add-int/lit8 v11, v8, -0x1

    aput v5, v3, v11

    .line 281
    aput v5, v3, v8

    .line 282
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 284
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 286
    :goto_2
    aput v13, v3, v8

    .line 287
    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    move v13, v5

    :goto_3
    move v10, v13

    .line 269
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 290
    .end local v10    # "isWhite":Z
    :cond_6
    add-int/lit8 v10, v9, -0x1

    if-ne v8, v10, :cond_7

    .line 291
    invoke-static {v3, v2}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[I)F

    move-result v10

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 292
    new-array v10, v12, [I

    aput v4, v10, v5

    add-int/lit8 v5, v7, -0x1

    aput v5, v10, v13

    return-object v10

    .line 294
    :cond_7
    const/4 v5, 0x0

    return-object v5
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
    .locals 17

    .line 187
    move/from16 v0, p1

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    .line 188
    nop

    .line 189
    move-object/from16 v8, p5

    array-length v2, v8

    new-array v9, v2, [I

    move/from16 v10, p3

    .line 190
    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v0, :cond_3

    .line 191
    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v10

    move/from16 v5, p2

    move-object/from16 v6, p5

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v2

    .line 192
    if-eqz v2, :cond_2

    move/from16 v16, v10

    move-object v10, v2

    move/from16 v2, v16

    .line 193
    :goto_1
    if-lez v2, :cond_1

    .line 194
    add-int/lit8 v13, v2, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p5

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v2

    .line 195
    if-eqz v2, :cond_0

    .line 196
    move-object v10, v2

    move v2, v13

    goto :goto_1

    .line 198
    :cond_0
    add-int/2addr v13, v12

    goto :goto_2

    .line 193
    :cond_1
    move v13, v2

    .line 202
    :goto_2
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v10, v11

    int-to-float v3, v3

    int-to-float v4, v13

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v1, v11

    .line 203
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v10, v12

    int-to-float v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v1, v12

    .line 204
    nop

    .line 205
    move v2, v12

    move v10, v13

    goto :goto_3

    .line 190
    :cond_2
    add-int/lit8 v10, v10, 0x5

    goto :goto_0

    :cond_3
    move v2, v11

    .line 208
    :goto_3
    add-int/lit8 v3, v10, 0x1

    .line 210
    if-eqz v2, :cond_7

    .line 211
    nop

    .line 212
    const/4 v13, 0x2

    new-array v2, v13, [I

    aget-object v4, v1, v11

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v11

    aget-object v4, v1, v12

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v12

    move-object v14, v2

    move v15, v3

    move v7, v11

    .line 213
    :goto_4
    if-ge v15, v0, :cond_5

    .line 214
    aget v3, v14, v11

    move-object/from16 v2, p0

    move v4, v15

    move/from16 v5, p2

    move-object/from16 v6, p5

    move v13, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v2

    .line 219
    if-eqz v2, :cond_4

    aget v3, v14, v11

    aget v4, v2, v11

    sub-int/2addr v3, v4

    .line 220
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    aget v3, v14, v12

    aget v5, v2, v12

    sub-int/2addr v3, v5

    .line 221
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_4

    .line 222
    nop

    .line 223
    move-object v14, v2

    move v7, v11

    goto :goto_5

    .line 225
    :cond_4
    const/16 v2, 0x19

    if-gt v13, v2, :cond_6

    .line 228
    add-int/lit8 v7, v13, 0x1

    .line 213
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x2

    goto :goto_4

    :cond_5
    move v13, v7

    .line 232
    :cond_6
    add-int/lit8 v7, v13, 0x1

    sub-int v3, v15, v7

    .line 233
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v2, v14, v11

    int-to-float v2, v2

    int-to-float v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 234
    const/4 v0, 0x3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v5, v14, v12

    int-to-float v5, v5

    invoke-direct {v2, v5, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v1, v0

    .line 236
    :cond_7
    sub-int/2addr v3, v10

    const/16 v0, 0xa

    if-ge v3, v0, :cond_8

    .line 237
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    :cond_8
    return-object v1
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .locals 10
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "startRow"    # I
    .param p2, "startColumn"    # I

    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 160
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 162
    .local v7, "width":I
    const/16 v0, 0x8

    new-array v8, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v0, 0x0

    .line 163
    .local v0, "result":[Lcom/google/zxing/ResultPoint;
    move-object v9, v8

    .end local v0    # "result":[Lcom/google/zxing/ResultPoint;
    .local v9, "result":[Lcom/google/zxing/ResultPoint;
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v8, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 166
    const/4 v0, 0x4

    aget-object v1, v9, v0

    if-eqz v1, :cond_0

    .line 167
    aget-object v1, v9, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int p2, v1

    .line 168
    aget-object v0, v9, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int p1, v0

    .line 170
    :cond_0
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v9, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 172
    return-object v9
.end method

.method private static patternMatchVariance([I[I)F
    .locals 12
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I

    .line 308
    array-length v0, p0

    .line 309
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .line 310
    .local v1, "total":I
    const/4 v2, 0x0

    .line 311
    .local v2, "patternLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 312
    aget v4, p0, v3

    add-int/2addr v1, v4

    .line 313
    aget v4, p1, v3

    add-int/2addr v2, v4

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v3    # "i":I
    :cond_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v1, v2, :cond_1

    .line 318
    return v3

    .line 323
    :cond_1
    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 324
    .local v4, "unitBarWidth":F
    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v4

    .line 326
    .local v5, "maxIndividualVariance":F
    const/4 v6, 0x0

    .line 327
    .local v6, "totalVariance":F
    const/4 v7, 0x0

    .local v7, "x":I
    const/4 v8, 0x0

    :goto_1
    if-ge v7, v0, :cond_4

    .line 328
    aget v9, p0, v7

    .line 329
    .local v9, "counter":I
    aget v10, p1, v7

    int-to-float v10, v10

    mul-float/2addr v10, v4

    .line 330
    .local v10, "scaledPattern":F
    int-to-float v11, v9

    cmpl-float v11, v11, v10

    if-lez v11, :cond_2

    int-to-float v11, v9

    sub-float/2addr v11, v10

    goto :goto_2

    :cond_2
    int-to-float v11, v9

    sub-float v11, v10, v11

    .line 331
    .local v8, "variance":F
    :goto_2
    move v8, v11

    cmpl-float v11, v11, v5

    if-lez v11, :cond_3

    .line 332
    return v3

    .line 334
    :cond_3
    add-float/2addr v6, v8

    .line 327
    .end local v8    # "variance":F
    .end local v9    # "counter":I
    .end local v10    # "scaledPattern":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 336
    .end local v7    # "x":I
    :cond_4
    int-to-float v3, v1

    div-float v3, v6, v3

    return v3
.end method
