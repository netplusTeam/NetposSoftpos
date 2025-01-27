.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 7
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 145
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v1

    move-object v2, v0

    .line 148
    .local v2, "rowHeights":[I
    move-object v2, v1

    if-nez v1, :cond_1

    .line 149
    return-object v0

    .line 151
    :cond_1
    invoke-static {v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v0

    .line 152
    .local v0, "maxRowHeight":I
    const/4 v1, 0x0

    .line 153
    .local v1, "missingStartRows":I
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 154
    .local v5, "rowHeight":I
    sub-int v6, v0, v5

    add-int/2addr v1, v6

    .line 155
    if-gtz v5, :cond_2

    .line 153
    .end local v5    # "rowHeight":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    .line 160
    .local v3, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_1
    if-lez v1, :cond_3

    aget-object v5, v3, v4

    if-nez v5, :cond_3

    .line 161
    add-int/lit8 v1, v1, -0x1

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v4    # "row":I
    :cond_3
    const/4 v4, 0x0

    .line 164
    .local v4, "missingEndRows":I
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    .local v5, "row":I
    :goto_2
    if-ltz v5, :cond_4

    .line 165
    aget v6, v2, v5

    sub-int v6, v0, v6

    add-int/2addr v4, v6

    .line 166
    aget v6, v2, v5

    if-gtz v6, :cond_4

    .line 164
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 170
    .end local v5    # "row":I
    :cond_4
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "row":I
    :goto_3
    if-lez v4, :cond_5

    aget-object v6, v3, v5

    if-nez v6, :cond_5

    .line 171
    add-int/lit8 v4, v4, -0x1

    .line 170
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 173
    .end local v5    # "row":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v6

    .line 173
    invoke-virtual {v5, v1, v4, v6}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    return-object v5
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .locals 6
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    .line 237
    .local v2, "barcodeMatrix01":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    move-object v2, v1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 238
    .local v1, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v4

    mul-int/2addr v3, v4

    .line 240
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 241
    .local v3, "calculatedNumberOfCodewords":I
    array-length v4, v1

    const/16 v5, 0x3a0

    if-nez v4, :cond_1

    .line 242
    if-lez v3, :cond_0

    if-gt v3, v5, :cond_0

    .line 245
    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    return-void

    .line 243
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 246
    :cond_1
    aget v0, v1, v0

    if-eq v0, v3, :cond_2

    .line 247
    if-lez v3, :cond_2

    if-gt v3, v5, :cond_2

    .line 249
    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 252
    :cond_2
    return-void
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .locals 6
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .line 503
    move v0, p4

    .line 504
    .local v0, "correctedStartColumn":I
    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 506
    .local v2, "increment":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 507
    :goto_2
    if-eqz p3, :cond_1

    if-lt v0, p1, :cond_3

    goto :goto_3

    :cond_1
    if-ge v0, p2, :cond_3

    .line 508
    :goto_3
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-ne p3, v5, :cond_3

    .line 509
    sub-int v5, p4, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v4, :cond_2

    .line 510
    return p4

    .line 512
    :cond_2
    add-int/2addr v0, v2

    goto :goto_2

    .line 514
    :cond_3
    neg-int v2, v2

    .line 515
    if-nez p3, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    move p3, v4

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 517
    .end local v3    # "i":I
    :cond_5
    return v0
.end method

.method private static checkCodewordSkew(III)Z
    .locals 1
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .line 521
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_0

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static correctErrors([I[II)I
    .locals 2
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 552
    if-eqz p1, :cond_0

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x200

    if-gt p2, v0, :cond_1

    .line 559
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0

    .line 557
    :cond_1
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .locals 14
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;

    .line 334
    nop

    .line 335
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 336
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 337
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 338
    aget-object v4, v0, v2

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v4, v3

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    .end local v3    # "column":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v2    # "row":I
    :cond_1
    const/4 v2, 0x0

    .line 343
    .local v2, "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v7, v1

    move v8, v7

    move-object v6, v5

    :goto_2
    if-ge v7, v4, :cond_4

    aget-object v9, v3, v7

    .line 344
    .local v5, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    move-object v5, v9

    if-eqz v9, :cond_3

    .line 345
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    array-length v10, v9

    move v11, v1

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    .line 346
    .local v6, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v6, v12

    if-eqz v12, :cond_2

    .line 347
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    .line 348
    .local v8, "rowNumber":I
    move v8, v12

    if-ltz v12, :cond_2

    .line 349
    array-length v12, v0

    if-ge v8, v12, :cond_2

    .line 353
    aget-object v12, v0, v8

    aget-object v12, v12, v2

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 345
    .end local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v8    # "rowNumber":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 358
    :cond_3
    nop

    .end local v5    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    add-int/lit8 v2, v2, 0x1

    .line 343
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 360
    :cond_4
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 11
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v0

    .line 257
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    .line 260
    .local v2, "codewords":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v3, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v4, "ambiguousIndexesList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 263
    const/4 v6, 0x0

    .local v6, "column":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 264
    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    .line 265
    .local v7, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v8, v6

    .line 266
    .local v8, "codewordIndex":I
    array-length v9, v7

    if-nez v9, :cond_0

    .line 267
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    :cond_0
    array-length v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 269
    const/4 v9, 0x0

    aget v9, v7, v9

    aput v9, v2, v8

    goto :goto_2

    .line 271
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v7    # "values":[I
    .end local v8    # "codewordIndex":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 262
    .end local v6    # "column":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 276
    .end local v5    # "row":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [[I

    .line 277
    .local v5, "ambiguousIndexValues":[[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 278
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v5, v6

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 280
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v6

    .line 281
    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v7

    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v8

    .line 280
    invoke-static {v6, v2, v7, v8, v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    return-object v6
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 303
    array-length v0, p3

    new-array v0, v0, [I

    .line 305
    .local v0, "ambiguousIndexCount":[I
    const/16 v1, 0x64

    .line 306
    .local v1, "tries":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "tries":I
    .local v2, "tries":I
    if-lez v1, :cond_5

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 308
    aget v3, p3, v1

    aget-object v4, p4, v1

    aget v5, v0, v1

    aget v4, v4, v5

    aput v4, p1, v3

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 312
    :catch_0
    move-exception v1

    .line 315
    array-length v1, v0

    if-eqz v1, :cond_4

    .line 318
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 319
    aget v3, v0, v1

    aget-object v4, p4, v1

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 320
    aget v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v1

    .line 321
    goto :goto_3

    .line 323
    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v1

    .line 324
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 306
    .end local v1    # "i":I
    :cond_3
    :goto_3
    move v1, v2

    goto :goto_0

    .line 316
    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 330
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 23
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 59
    new-instance v6, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 60
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/4 v1, 0x0

    .line 61
    .local v1, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v2, 0x0

    .line 63
    .local v2, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v3, 0x1

    .local v3, "firstPass":Z
    const/4 v4, 0x0

    move-object v11, v4

    .line 64
    :goto_0
    if-eqz p1, :cond_0

    .line 65
    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-object v6, v0

    move-object/from16 v7, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v1

    .line 68
    :cond_0
    if-eqz p3, :cond_1

    .line 69
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v6, v0

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v2

    .line 72
    :cond_1
    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v5

    move-object v6, v11

    .line 73
    .local v6, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    move-object v11, v5

    .end local v6    # "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .local v11, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    if-eqz v5, :cond_10

    .line 76
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 77
    .local v5, "resultBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 78
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 79
    :cond_2
    move-object v0, v5

    .line 63
    .end local v5    # "resultBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/4 v3, 0x0

    goto :goto_0

    .line 84
    .end local v3    # "firstPass":Z
    :cond_3
    invoke-virtual {v11, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 85
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 86
    .local v3, "maxBarcodeColumn":I
    const/4 v6, 0x0

    invoke-virtual {v11, v6, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 87
    invoke-virtual {v11, v3, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 89
    if-eqz v1, :cond_4

    move v7, v5

    goto :goto_1

    :cond_4
    move v7, v6

    .line 90
    .local v7, "leftToRight":Z
    :goto_1
    const/4 v8, 0x1

    move-object v9, v4

    move v12, v6

    move v10, v8

    move/from16 v4, p5

    move/from16 v8, p6

    .end local p5    # "minCodewordWidth":I
    .end local p6    # "maxCodewordWidth":I
    .local v4, "minCodewordWidth":I
    .local v8, "maxCodewordWidth":I
    .local v10, "barcodeColumnCount":I
    :goto_2
    if-gt v10, v3, :cond_f

    .line 91
    if-eqz v7, :cond_5

    move v13, v10

    goto :goto_3

    :cond_5
    sub-int v13, v3, v10

    :goto_3
    move v15, v13

    .line 92
    .local v15, "barcodeColumn":I
    invoke-virtual {v11, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v13

    if-nez v13, :cond_e

    .line 97
    if-eqz v15, :cond_7

    if-ne v15, v3, :cond_6

    goto :goto_4

    .line 100
    :cond_6
    new-instance v13, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v13, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    move-object v14, v13

    .local v13, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    goto :goto_6

    .line 98
    .end local v13    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_7
    :goto_4
    new-instance v13, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v15, :cond_8

    move v14, v5

    goto :goto_5

    :cond_8
    move v14, v6

    :goto_5
    invoke-direct {v13, v0, v14}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    move-object v14, v13

    .line 102
    .local v14, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_6
    invoke-virtual {v11, v15, v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 104
    .local v12, "startColumn":I
    const/4 v13, -0x1

    .line 106
    .local v13, "previousStartColumn":I
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v16

    move/from16 v5, v16

    .local v5, "imageRow":I
    :goto_7
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v6

    if-gt v5, v6, :cond_d

    .line 107
    invoke-static {v11, v15, v5, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v6

    .line 108
    move v12, v6

    if-ltz v6, :cond_a

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v6

    if-le v12, v6, :cond_9

    goto :goto_8

    :cond_9
    move v6, v12

    goto :goto_9

    .line 109
    :cond_a
    :goto_8
    const/4 v6, -0x1

    if-eq v13, v6, :cond_c

    .line 112
    move v12, v13

    move v6, v12

    .line 114
    .end local v12    # "startColumn":I
    .local v6, "startColumn":I
    :goto_9
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v16

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v17

    move-object/from16 v12, p0

    move/from16 v20, v13

    .end local v13    # "previousStartColumn":I
    .local v20, "previousStartColumn":I
    move/from16 v13, v16

    move-object/from16 v21, v0

    move-object v0, v14

    .end local v14    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v0, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .local v21, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    move/from16 v14, v17

    move/from16 v22, v15

    .end local v15    # "barcodeColumn":I
    .local v22, "barcodeColumn":I
    move v15, v7

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v8

    invoke-static/range {v12 .. v19}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v12

    .line 116
    .local v9, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v9, v12

    if-eqz v12, :cond_b

    .line 117
    invoke-virtual {v0, v5, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 118
    move v12, v6

    .line 119
    .end local v20    # "previousStartColumn":I
    .local v12, "previousStartColumn":I
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v13

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 120
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v13, v12

    goto :goto_a

    .line 116
    .end local v12    # "previousStartColumn":I
    .restart local v20    # "previousStartColumn":I
    :cond_b
    move v12, v6

    move/from16 v13, v20

    goto :goto_a

    .line 109
    .end local v6    # "startColumn":I
    .end local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v20    # "previousStartColumn":I
    .end local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v22    # "barcodeColumn":I
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .local v12, "startColumn":I
    .restart local v13    # "previousStartColumn":I
    .restart local v14    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v15    # "barcodeColumn":I
    :cond_c
    move-object/from16 v21, v0

    move/from16 v20, v13

    move-object v0, v14

    move/from16 v22, v15

    .line 106
    .end local v14    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v15    # "barcodeColumn":I
    .local v0, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v22    # "barcodeColumn":I
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object v14, v0

    move-object/from16 v0, v21

    move/from16 v15, v22

    const/4 v6, 0x0

    goto :goto_7

    .end local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v22    # "barcodeColumn":I
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v14    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v15    # "barcodeColumn":I
    :cond_d
    move-object/from16 v21, v0

    move/from16 v20, v13

    move-object v0, v14

    move/from16 v22, v15

    .end local v13    # "previousStartColumn":I
    .end local v14    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v15    # "barcodeColumn":I
    .local v0, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v20    # "previousStartColumn":I
    .restart local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v22    # "barcodeColumn":I
    goto :goto_b

    .line 92
    .end local v5    # "imageRow":I
    .end local v12    # "startColumn":I
    .end local v20    # "previousStartColumn":I
    .end local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v22    # "barcodeColumn":I
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v15    # "barcodeColumn":I
    :cond_e
    move-object/from16 v21, v0

    move/from16 v22, v15

    .line 90
    .end local v0    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v15    # "barcodeColumn":I
    .restart local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v21

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    .end local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v0    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    :cond_f
    move-object/from16 v21, v0

    .line 124
    .end local v0    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .end local v10    # "barcodeColumnCount":I
    .restart local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    invoke-static {v11}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0

    .line 74
    .end local v4    # "minCodewordWidth":I
    .end local v7    # "leftToRight":Z
    .end local v8    # "maxCodewordWidth":I
    .end local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v0    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .local v3, "firstPass":Z
    .restart local p5    # "minCodewordWidth":I
    .restart local p6    # "maxCodewordWidth":I
    :cond_10
    move-object/from16 v21, v0

    .end local v0    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .restart local v21    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 527
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 531
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 532
    .local v0, "numECCodewords":I
    invoke-static {p0, p2, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v1

    .line 533
    .local v1, "correctedErrorsCount":I
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 536
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    const/4 v3, 0x0

    .line 537
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v3, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 538
    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 539
    return-object v3

    .line 528
    .end local v0    # "numECCodewords":I
    .end local v1    # "correctedErrorsCount":I
    .end local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 7

    .line 414
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    .line 419
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object p0

    .line 420
    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 421
    return-object p1

    .line 424
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result p2

    .line 425
    if-eqz p3, :cond_1

    .line 426
    add-int p3, p4, p2

    goto :goto_1

    .line 428
    :cond_1
    const/4 p3, 0x0

    :goto_0
    array-length p5, p0

    div-int/lit8 p5, p5, 0x2

    if-ge p3, p5, :cond_2

    .line 429
    aget p5, p0, p3

    .line 430
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aget v0, p0, v0

    aput v0, p0, p3

    .line 431
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aput p5, p0, v0

    .line 428
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 433
    :cond_2
    nop

    .line 434
    sub-int p3, p4, p2

    move v6, p4

    move p4, p3

    move p3, v6

    .line 450
    :goto_1
    invoke-static {p2, p6, p7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result p2

    if-nez p2, :cond_3

    .line 453
    return-object p1

    .line 456
    :cond_3
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result p0

    .line 457
    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result p2

    .line 458
    const/4 p5, -0x1

    if-ne p2, p5, :cond_4

    .line 459
    return-object p1

    .line 461
    :cond_4
    new-instance p1, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result p0

    invoke-direct {p1, p4, p3, p0, p2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object p1
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 5
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .line 188
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v2, v1

    .local v2, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    if-eqz p1, :cond_3

    .line 194
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v3, v1

    .local v3, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 199
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 200
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 201
    return-object v0

    .line 203
    :cond_2
    return-object v2

    .line 195
    .end local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_3
    :goto_0
    return-object v2

    .line 190
    .end local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_4
    :goto_1
    if-nez p1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static getBitCountForCodeword(I)[I
    .locals 4
    .param p0, "codeword"    # I

    .line 589
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 590
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 591
    .local v1, "previousValue":I
    const/4 v2, 0x7

    .line 593
    .local v2, "i":I
    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_1

    .line 594
    and-int/lit8 v1, p0, 0x1

    .line 595
    add-int/lit8 v2, v2, -0x1

    .line 596
    if-ltz v2, :cond_0

    goto :goto_1

    .line 603
    :cond_0
    return-object v0

    .line 600
    :cond_1
    :goto_1
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 601
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static getCodewordBucketNumber(I)I
    .locals 1
    .param p0, "codeword"    # I

    .line 607
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .locals 2
    .param p0, "moduleBitCount"    # [I

    .line 611
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .locals 4
    .param p0, "values"    # [I

    .line 178
    const/4 v0, -0x1

    .line 179
    .local v0, "maxValue":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 180
    .local v3, "value":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 179
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return v0
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .locals 8
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .line 470
    move v0, p4

    .line 471
    .local v0, "imageColumn":I
    const/16 v1, 0x8

    new-array v2, v1, [I

    .line 472
    .local v2, "moduleBitCount":[I
    const/4 v3, 0x0

    .line 473
    .local v3, "moduleNumber":I
    const/4 v4, 0x1

    if-eqz p3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    .line 474
    .local v5, "increment":I
    :goto_0
    move v6, p3

    .line 475
    .local v6, "previousPixelValue":Z
    :goto_1
    if-eqz p3, :cond_1

    if-ge v0, p2, :cond_4

    goto :goto_2

    :cond_1
    if-lt v0, p1, :cond_4

    :goto_2
    if-ge v3, v1, :cond_4

    .line 477
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-ne v7, v6, :cond_2

    .line 478
    aget v7, v2, v3

    add-int/2addr v7, v4

    aput v7, v2, v3

    .line 479
    add-int/2addr v0, v5

    goto :goto_1

    .line 481
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 482
    if-nez v6, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    move v6, v7

    goto :goto_1

    .line 485
    :cond_4
    if-eq v3, v1, :cond_7

    if-eqz p3, :cond_5

    move v1, p2

    goto :goto_4

    :cond_5
    move v1, p1

    :goto_4
    if-ne v0, v1, :cond_6

    const/4 v1, 0x7

    if-ne v3, v1, :cond_6

    goto :goto_5

    .line 490
    :cond_6
    const/4 v1, 0x0

    return-object v1

    .line 488
    :cond_7
    :goto_5
    return-object v2
.end method

.method private static getNumberOfECCodeWords(I)I
    .locals 1
    .param p0, "barcodeECLevel"    # I

    .line 494
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 16
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    .line 212
    move/from16 v8, p3

    new-instance v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    move-object v10, v0

    .line 214
    .local v10, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v11, v0, :cond_4

    .line 215
    if-nez v11, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :goto_1
    move v12, v0

    .line 216
    .local v12, "increment":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 217
    .local v0, "startColumn":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    move v13, v0

    move-object v14, v1

    move v15, v2

    .end local v0    # "startColumn":I
    .local v13, "startColumn":I
    .local v15, "imageRow":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v15, v0, :cond_3

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v15, v0, :cond_3

    .line 219
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v3, p3

    move v4, v13

    move v5, v15

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    move-object v1, v14

    .line 221
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v14, v0

    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .local v14, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v10, v15, v14}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 223
    if-eqz v8, :cond_1

    .line 224
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v0

    move v13, v0

    .end local v13    # "startColumn":I
    .restart local v0    # "startColumn":I
    goto :goto_3

    .line 226
    .end local v0    # "startColumn":I
    .restart local v13    # "startColumn":I
    :cond_1
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v0

    move v13, v0

    .line 218
    .end local v14    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_2
    :goto_3
    add-int/2addr v15, v12

    goto :goto_2

    .line 214
    .end local v12    # "increment":I
    .end local v13    # "startColumn":I
    .end local v15    # "imageRow":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object v1, v14

    goto :goto_0

    .line 231
    .end local v11    # "i":I
    :cond_4
    return-object v10
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .locals 8
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .line 371
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 372
    .local v0, "offset":I
    :goto_0
    const/4 v1, 0x0

    .line 373
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 376
    :cond_1
    if-eqz v1, :cond_3

    .line 377
    if-eqz p3, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    return v2

    .line 379
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 380
    move-object v1, v2

    if-eqz v2, :cond_5

    .line 381
    if-eqz p3, :cond_4

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    return v2

    :cond_4
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    return v2

    .line 383
    :cond_5
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 386
    :cond_6
    if-eqz v1, :cond_8

    .line 387
    if-eqz p3, :cond_7

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    return v2

    :cond_7
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    return v2

    .line 389
    :cond_8
    const/4 v2, 0x0

    .local v2, "skippedColumns":I
    const/4 v3, 0x0

    .line 391
    :goto_1
    sub-int v4, p1, v0

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 392
    sub-int/2addr p1, v0

    .line 393
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    .line 394
    .local v3, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v7

    if-eqz v7, :cond_a

    .line 395
    if-eqz p3, :cond_9

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    :goto_3
    mul-int v5, v0, v2

    .line 398
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 395
    return v4

    .line 393
    .end local v3    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 401
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 403
    :cond_c
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz p3, :cond_d

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v3

    return v3

    :cond_d
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    return v3
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 2
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .line 364
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .locals 3
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 131
    return-object v0

    .line 133
    :cond_0
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v2, v0

    .line 134
    .local v2, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 135
    return-object v0

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 138
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 139
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v1, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    return-object v1
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .locals 10
    .param p0, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 615
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 616
    .local v0, "formatter":Ljava/util/Formatter;
    const/4 v1, 0x0

    .local v1, "row":I
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    :try_start_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 617
    const-string v4, "Row %2d: "

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 618
    const/4 v4, 0x0

    .local v4, "column":I
    :goto_1
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 619
    aget-object v6, p0, v1

    aget-object v6, v6, v4

    .line 620
    .local v3, "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    move-object v3, v6

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 621
    const-string v6, "        "

    invoke-virtual {v0, v6, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    .line 623
    :cond_0
    const-string v6, "%4d(%2d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 624
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v8

    invoke-virtual {v3, v9}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v5

    .line 623
    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 618
    .end local v3    # "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 627
    .end local v4    # "column":I
    :cond_1
    const-string v4, "%n"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "row":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 629
    return-object v1

    .line 615
    :catchall_0
    move-exception v1

    .end local v0    # "formatter":Ljava/util/Formatter;
    .end local p0    # "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    .restart local v0    # "formatter":Ljava/util/Formatter;
    .restart local p0    # "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method

.method private static verifyCodewordCount([II)V
    .locals 4
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 566
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 574
    const/4 v0, 0x0

    aget v1, p0, v0

    move v2, v0

    .line 575
    .local v2, "numberOfCodewords":I
    move v2, v1

    array-length v3, p0

    if-gt v1, v3, :cond_2

    .line 578
    if-nez v2, :cond_1

    .line 580
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 581
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    return-void

    .line 583
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 586
    :cond_1
    return-void

    .line 576
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 569
    .end local v2    # "numberOfCodewords":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
