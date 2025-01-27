.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# static fields
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 1
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .param p2, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 39
    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 40
    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 2
    .param p1, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 59
    :cond_0
    return-void
.end method

.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
    .locals 3
    .param p0, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p1, "otherCodeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 230
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 231
    return v0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 235
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_1
    return v0
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .locals 1
    .param p0, "rowIndicatorRowNumber"    # I
    .param p1, "invalidRowCounts"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 172
    if-nez p2, :cond_0

    .line 173
    return p1

    .line 175
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 178
    const/4 p1, 0x0

    goto :goto_0

    .line 180
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 183
    :cond_2
    :goto_0
    return p1
.end method

.method private adjustRowNumbers()I
    .locals 5

    .line 69
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 70
    .local v2, "unadjustedCount":I
    move v2, v0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 73
    :cond_0
    const/4 v0, 0x1

    .local v0, "barcodeColumn":I
    :goto_0
    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 74
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 75
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, 0x0

    .local v3, "codewordsRow":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 76
    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 79
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    invoke-direct {p0, v0, v3, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 75
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "codewordsRow":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "barcodeColumn":I
    :cond_3
    return v2
.end method

.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
    .locals 10
    .param p1, "barcodeColumn"    # I
    .param p2, "codewordsRow"    # I
    .param p3, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 187
    aget-object v0, p3, p2

    .line 188
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 189
    .local v3, "previousColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v1

    .line 190
    .local v1, "nextColumnCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v5, p1, 0x1

    aget-object v5, v4, v5

    if-eqz v5, :cond_0

    .line 191
    add-int/lit8 v5, p1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 194
    :cond_0
    const/16 v4, 0xe

    new-array v5, v4, [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 196
    .local v2, "otherCodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v2, v5

    aget-object v6, v3, p2

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 197
    const/4 v5, 0x3

    aget-object v6, v1, p2

    aput-object v6, v2, v5

    .line 199
    const/4 v5, 0x0

    if-lez p2, :cond_1

    .line 200
    add-int/lit8 v6, p2, -0x1

    aget-object v6, p3, v6

    aput-object v6, v2, v5

    .line 201
    const/4 v6, 0x4

    add-int/lit8 v8, p2, -0x1

    aget-object v8, v3, v8

    aput-object v8, v2, v6

    .line 202
    const/4 v6, 0x5

    add-int/lit8 v8, p2, -0x1

    aget-object v8, v1, v8

    aput-object v8, v2, v6

    .line 204
    :cond_1
    const/4 v6, 0x1

    if-le p2, v6, :cond_2

    .line 205
    const/16 v8, 0x8

    add-int/lit8 v9, p2, -0x2

    aget-object v9, p3, v9

    aput-object v9, v2, v8

    .line 206
    const/16 v8, 0xa

    add-int/lit8 v9, p2, -0x2

    aget-object v9, v3, v9

    aput-object v9, v2, v8

    .line 207
    const/16 v8, 0xb

    add-int/lit8 v9, p2, -0x2

    aget-object v9, v1, v9

    aput-object v9, v2, v8

    .line 209
    :cond_2
    array-length v8, p3

    sub-int/2addr v8, v6

    if-ge p2, v8, :cond_3

    .line 210
    add-int/lit8 v8, p2, 0x1

    aget-object v8, p3, v8

    aput-object v8, v2, v6

    .line 211
    const/4 v6, 0x6

    add-int/lit8 v8, p2, 0x1

    aget-object v8, v3, v8

    aput-object v8, v2, v6

    .line 212
    const/4 v6, 0x7

    add-int/lit8 v8, p2, 0x1

    aget-object v8, v1, v8

    aput-object v8, v2, v6

    .line 214
    :cond_3
    array-length v6, p3

    sub-int/2addr v6, v7

    if-ge p2, v6, :cond_4

    .line 215
    const/16 v6, 0x9

    add-int/lit8 v7, p2, 0x2

    aget-object v7, p3, v7

    aput-object v7, v2, v6

    .line 216
    const/16 v6, 0xc

    add-int/lit8 v7, p2, 0x2

    aget-object v7, v3, v7

    aput-object v7, v2, v6

    .line 217
    const/16 v6, 0xd

    add-int/lit8 v7, p2, 0x2

    aget-object v7, v1, v7

    aput-object v7, v2, v6

    .line 219
    :cond_4
    nop

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 220
    .local v6, "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-static {v0, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 221
    return-void

    .line 219
    .end local v6    # "otherCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 224
    :cond_6
    return-void
.end method

.method private adjustRowNumbersByRow()I
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V

    .line 93
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 94
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private adjustRowNumbersFromBothRI()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 102
    .local v0, "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 103
    .local v1, "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 104
    aget-object v5, v0, v2

    if-eqz v5, :cond_2

    aget-object v5, v1, v2

    if-eqz v5, :cond_2

    aget-object v5, v0, v2

    .line 106
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 107
    const/4 v5, 0x1

    .local v5, "barcodeColumn":I
    :goto_1
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v5, v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v6, v6, v2

    .line 109
    .local v4, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v4, v6

    if-eqz v6, :cond_1

    .line 112
    aget-object v6, v0, v2

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 113
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aput-object v3, v6, v2

    .line 107
    .end local v4    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 103
    .end local v5    # "barcodeColumn":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "codewordsRow":I
    :cond_3
    return-void

    .line 99
    .end local v0    # "LRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v1    # "RRIcodewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_4
    :goto_2
    return-void
.end method

.method private adjustRowNumbersFromLRI()I
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    const/4 v1, 0x0

    .line 151
    .local v1, "unadjustedCount":I
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 152
    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 153
    aget-object v4, v0, v2

    if-eqz v4, :cond_2

    .line 156
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    .line 157
    .local v4, "rowIndicatorRowNumber":I
    const/4 v5, 0x0

    .line 158
    .local v5, "invalidRowCounts":I
    const/4 v6, 0x1

    .local v6, "barcodeColumn":I
    :goto_1
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_2

    const/4 v7, 0x2

    if-ge v5, v7, :cond_2

    .line 159
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v2

    .line 160
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v7

    if-eqz v7, :cond_1

    .line 161
    invoke-static {v4, v5, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v5

    .line 162
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_1

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 158
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 152
    .end local v4    # "rowIndicatorRowNumber":I
    .end local v5    # "invalidRowCounts":I
    .end local v6    # "barcodeColumn":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "codewordsRow":I
    :cond_3
    return v1
.end method

.method private adjustRowNumbersFromRRI()I
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    if-nez v2, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 126
    .local v2, "unadjustedCount":I
    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 127
    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v1, 0x0

    .local v1, "codewordsRow":I
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 128
    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    .line 131
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    .line 132
    .local v4, "rowIndicatorRowNumber":I
    const/4 v5, 0x0

    .line 133
    .local v5, "invalidRowCounts":I
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v6, v6, 0x1

    .local v6, "barcodeColumn":I
    :goto_1
    if-lez v6, :cond_2

    const/4 v7, 0x2

    if-ge v5, v7, :cond_2

    .line 134
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v1

    .line 135
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v7

    if-eqz v7, :cond_1

    .line 136
    invoke-static {v4, v5, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v5

    .line 137
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_1

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 133
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 127
    .end local v4    # "rowIndicatorRowNumber":I
    .end local v5    # "invalidRowCounts":I
    .end local v6    # "barcodeColumn":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "codewordsRow":I
    :cond_3
    return v2
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 1
    .param p1, "barcodeColumn"    # I

    .line 265
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 44
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 45
    const/16 v0, 0x3a0

    .line 48
    .local v0, "unadjustedCodewordCount":I
    :cond_0
    move v1, v0

    .line 49
    .local v1, "previousUnadjustedCount":I
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v2

    .line 50
    move v0, v2

    if-lez v2, :cond_1

    if-lt v0, v1, :cond_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v2
.end method

.method setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 0
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 253
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 254
    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 1
    .param p1, "barcodeColumn"    # I
    .param p2, "detectionResultColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    .line 261
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 270
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 271
    .local v4, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    move-object v4, v2

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 272
    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v2, v5

    aget-object v4, v0, v2

    .line 274
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 275
    .local v0, "formatter":Ljava/util/Formatter;
    const/4 v2, 0x0

    .local v2, "codewordsRow":I
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 276
    const-string v6, "CW %3d:"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 277
    const/4 v6, 0x0

    .local v6, "barcodeColumn":I
    :goto_1
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v8, 0x2

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_3

    .line 278
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "    |   "

    if-nez v7, :cond_1

    .line 279
    :try_start_1
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 280
    goto :goto_2

    .line 282
    :cond_1
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v2

    .line 283
    .local v3, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v3, v7

    if-nez v7, :cond_2

    .line 284
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 285
    goto :goto_2

    .line 287
    :cond_2
    const-string v7, " %3d|%3d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 277
    .end local v3    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 289
    .end local v6    # "barcodeColumn":I
    :cond_3
    const-string v6, "%n"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "codewordsRow":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 291
    return-object v1

    .line 274
    :catchall_0
    move-exception v1

    .end local v0    # "formatter":Ljava/util/Formatter;
    .end local v4    # "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    .restart local v0    # "formatter":Ljava/util/Formatter;
    .restart local v4    # "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method
