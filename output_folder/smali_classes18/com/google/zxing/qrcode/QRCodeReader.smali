.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 18
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 118
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v1

    .line 119
    .local v1, "leftTopBlack":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v2

    .line 120
    .local v2, "rightBottomBlack":[I
    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 124
    invoke-static {v1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)F

    move-result v3

    .line 126
    .local v3, "moduleSize":F
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 127
    .local v5, "top":I
    aget v6, v2, v4

    .line 128
    .local v6, "bottom":I
    const/4 v7, 0x0

    aget v8, v1, v7

    .line 129
    .local v8, "left":I
    aget v9, v2, v7

    .line 132
    .local v9, "right":I
    if-ge v8, v9, :cond_b

    if-ge v5, v6, :cond_b

    .line 136
    sub-int v10, v6, v5

    sub-int v11, v9, v8

    if-eq v10, v11, :cond_1

    .line 139
    sub-int v10, v6, v5

    add-int/2addr v10, v8

    .line 140
    move v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 146
    :cond_1
    :goto_0
    sub-int v10, v9, v8

    add-int/2addr v10, v4

    int-to-float v10, v10

    div-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 147
    .local v10, "matrixWidth":I
    sub-int v11, v6, v5

    add-int/2addr v11, v4

    int-to-float v4, v11

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 148
    .local v4, "matrixHeight":I
    if-lez v10, :cond_a

    if-lez v4, :cond_a

    .line 151
    if-ne v4, v10, :cond_9

    .line 159
    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    float-to-int v11, v11

    .line 160
    .local v11, "nudge":I
    add-int/2addr v5, v11

    .line 161
    add-int v12, v8, v11

    .line 166
    move v8, v12

    add-int/lit8 v13, v10, -0x1

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-int v13, v13

    add-int/2addr v12, v13

    sub-int/2addr v12, v9

    move v13, v7

    .line 167
    .local v13, "nudgedTooFarRight":I
    move v13, v12

    if-lez v12, :cond_3

    .line 168
    if-gt v13, v11, :cond_2

    .line 172
    sub-int/2addr v8, v13

    goto :goto_1

    .line 170
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 175
    :cond_3
    :goto_1
    add-int/lit8 v12, v4, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-int v12, v12

    add-int/2addr v12, v5

    sub-int/2addr v12, v6

    .line 176
    .local v7, "nudgedTooFarDown":I
    move v7, v12

    if-lez v12, :cond_5

    .line 177
    if-gt v7, v11, :cond_4

    .line 181
    sub-int/2addr v5, v7

    goto :goto_2

    .line 179
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 185
    :cond_5
    :goto_2
    new-instance v12, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v12, v10, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 186
    .local v12, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_3
    if-ge v14, v4, :cond_8

    .line 187
    int-to-float v15, v14

    mul-float/2addr v15, v3

    float-to-int v15, v15

    add-int/2addr v15, v5

    .line 188
    .local v15, "iOffset":I
    const/16 v16, 0x0

    move-object/from16 v17, v1

    move/from16 v1, v16

    .local v1, "x":I
    .local v17, "leftTopBlack":[I
    :goto_4
    if-ge v1, v10, :cond_7

    .line 189
    move-object/from16 v16, v2

    .end local v2    # "rightBottomBlack":[I
    .local v16, "rightBottomBlack":[I
    int-to-float v2, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v8

    invoke-virtual {v0, v2, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    invoke-virtual {v12, v1, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 188
    :cond_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v16

    goto :goto_4

    .end local v16    # "rightBottomBlack":[I
    .restart local v2    # "rightBottomBlack":[I
    :cond_7
    move-object/from16 v16, v2

    .line 186
    .end local v1    # "x":I
    .end local v2    # "rightBottomBlack":[I
    .end local v15    # "iOffset":I
    .restart local v16    # "rightBottomBlack":[I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    goto :goto_3

    .line 194
    .end local v14    # "y":I
    .end local v16    # "rightBottomBlack":[I
    .end local v17    # "leftTopBlack":[I
    .local v1, "leftTopBlack":[I
    .restart local v2    # "rightBottomBlack":[I
    :cond_8
    return-object v12

    .line 153
    .end local v7    # "nudgedTooFarDown":I
    .end local v11    # "nudge":I
    .end local v12    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v13    # "nudgedTooFarRight":I
    :cond_9
    move-object/from16 v17, v1

    .end local v1    # "leftTopBlack":[I
    .restart local v17    # "leftTopBlack":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 148
    .end local v17    # "leftTopBlack":[I
    .restart local v1    # "leftTopBlack":[I
    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 149
    .end local v1    # "leftTopBlack":[I
    .end local v2    # "rightBottomBlack":[I
    .restart local v16    # "rightBottomBlack":[I
    .restart local v17    # "leftTopBlack":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 132
    .end local v4    # "matrixHeight":I
    .end local v10    # "matrixWidth":I
    .end local v16    # "rightBottomBlack":[I
    .end local v17    # "leftTopBlack":[I
    .restart local v1    # "leftTopBlack":[I
    .restart local v2    # "rightBottomBlack":[I
    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 133
    .end local v1    # "leftTopBlack":[I
    .end local v2    # "rightBottomBlack":[I
    .restart local v16    # "rightBottomBlack":[I
    .restart local v17    # "leftTopBlack":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 120
    .end local v3    # "moduleSize":F
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "rightBottomBlack":[I
    .end local v17    # "leftTopBlack":[I
    .restart local v1    # "leftTopBlack":[I
    .restart local v2    # "rightBottomBlack":[I
    :cond_c
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 121
    .end local v1    # "leftTopBlack":[I
    .end local v2    # "rightBottomBlack":[I
    .restart local v16    # "rightBottomBlack":[I
    .restart local v17    # "leftTopBlack":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)F
    .locals 9
    .param p0, "leftTopBlack"    # [I
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 199
    .local v0, "height":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    .line 200
    .local v1, "width":I
    const/4 v2, 0x0

    aget v3, p0, v2

    .line 201
    .local v3, "x":I
    const/4 v4, 0x1

    aget v5, p0, v4

    .line 202
    .local v5, "y":I
    const/4 v6, 0x1

    .line 203
    .local v6, "inBlack":Z
    const/4 v7, 0x0

    .line 204
    .local v7, "transitions":I
    :goto_0
    if-ge v3, v1, :cond_2

    if-ge v5, v0, :cond_2

    .line 205
    invoke-virtual {p1, v3, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v6, v8, :cond_1

    .line 206
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    .line 209
    if-nez v6, :cond_0

    move v8, v4

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    move v6, v8

    .line 211
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    :cond_2
    if-eq v3, v1, :cond_3

    if-eq v5, v0, :cond_3

    .line 217
    aget v2, p0, v2

    sub-int v2, v3, v2

    int-to-float v2, v2

    const/high16 v4, 0x40e00000    # 7.0f

    div-float/2addr v2, v4

    return v2

    .line 215
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
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

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public final decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 7
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

    .line 72
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 74
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    iget-object v1, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v1, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 75
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 76
    .local v0, "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_0

    .line 77
    .end local v0    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v1    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_0
    new-instance v0, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0, p2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    .line 78
    .local v0, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    iget-object v1, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v0}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 79
    .restart local v1    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v0}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    move-object v0, v2

    .line 83
    .local v0, "points":[Lcom/google/zxing/ResultPoint;
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v2, v0}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V

    .line 87
    :cond_1
    new-instance v2, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v4

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 88
    .local v2, "result":Lcom/google/zxing/Result;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 89
    .local v5, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v5, v3

    if-eqz v3, :cond_2

    .line 90
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v3, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 92
    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v4, "ecLevel":Ljava/lang/String;
    move-object v4, v3

    if-eqz v3, :cond_3

    .line 94
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 96
    :cond_3
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->hasStructuredAppend()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 98
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendSequenceNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 97
    invoke-virtual {v2, v3, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 99
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    .line 100
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendParity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 99
    invoke-virtual {v2, v3, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 102
    :cond_4
    return-object v2
.end method

.method protected final getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 108
    return-void
.end method
