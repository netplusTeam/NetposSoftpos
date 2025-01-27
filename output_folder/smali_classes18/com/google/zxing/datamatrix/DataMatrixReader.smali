.class public final Lcom/google/zxing/datamatrix/DataMatrixReader;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 14
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v0

    .line 103
    .local v0, "leftTopBlack":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v1

    .line 104
    .local v1, "rightBottomBlack":[I
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 108
    invoke-static {v0, p0}, Lcom/google/zxing/datamatrix/DataMatrixReader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)I

    move-result v2

    .line 110
    .local v2, "moduleSize":I
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 111
    .local v4, "top":I
    aget v5, v1, v3

    .line 112
    .local v5, "bottom":I
    const/4 v6, 0x0

    aget v7, v0, v6

    .line 113
    .local v7, "left":I
    aget v6, v1, v6

    .line 115
    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    div-int/2addr v6, v2

    .line 116
    .local v6, "matrixWidth":I
    sub-int v8, v5, v4

    add-int/2addr v8, v3

    div-int/2addr v8, v2

    .line 117
    .local v8, "matrixHeight":I
    if-lez v6, :cond_3

    if-lez v8, :cond_3

    .line 124
    div-int/lit8 v3, v2, 0x2

    .line 125
    .local v3, "nudge":I
    add-int/2addr v4, v3

    .line 126
    add-int/2addr v7, v3

    .line 129
    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v6, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 130
    .local v9, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 131
    mul-int v11, v10, v2

    add-int/2addr v11, v4

    .line 132
    .local v11, "iOffset":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    if-ge v12, v6, :cond_1

    .line 133
    mul-int v13, v12, v2

    add-int/2addr v13, v7

    invoke-virtual {p0, v13, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 134
    invoke-virtual {v9, v12, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 132
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 130
    .end local v11    # "iOffset":I
    .end local v12    # "x":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 138
    .end local v10    # "y":I
    :cond_2
    return-object v9

    .line 118
    .end local v3    # "nudge":I
    .end local v9    # "bits":Lcom/google/zxing/common/BitMatrix;
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 105
    .end local v2    # "moduleSize":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "matrixWidth":I
    .end local v7    # "left":I
    .end local v8    # "matrixHeight":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)I
    .locals 5
    .param p0, "leftTopBlack"    # [I
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 143
    .local v0, "width":I
    const/4 v1, 0x0

    aget v2, p0, v1

    .line 144
    .local v2, "x":I
    const/4 v3, 0x1

    aget v3, p0, v3

    .line 145
    .local v3, "y":I
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    if-eq v2, v0, :cond_2

    .line 152
    aget v4, p0, v1

    sub-int v4, v2, v4

    .line 153
    .local v1, "moduleSize":I
    move v1, v4

    if-eqz v4, :cond_1

    .line 156
    return v1

    .line 154
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 149
    .end local v1    # "moduleSize":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/DataMatrixReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 6
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 67
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/DataMatrixReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 69
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    iget-object v1, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {v1, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 70
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v0, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 71
    .local v0, "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_0

    .line 72
    .end local v0    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v1    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_0
    new-instance v0, Lcom/google/zxing/datamatrix/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    .line 73
    .local v0, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    iget-object v1, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {v0}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 74
    .restart local v1    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v0}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    move-object v0, v2

    .line 76
    .local v0, "points":[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v2, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v4

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 78
    .local v2, "result":Lcom/google/zxing/Result;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 79
    .local v5, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v5, v3

    if-eqz v3, :cond_1

    .line 80
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v3, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v4, "ecLevel":Ljava/lang/String;
    move-object v4, v3

    if-eqz v3, :cond_2

    .line 84
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_2
    return-object v2
.end method

.method public reset()V
    .locals 0

    .line 92
    return-void
.end method
