.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/zxing/Reader;
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/Result;

    sput-object v0, Lcom/google/zxing/pdf417/PDF417Reader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;
    .locals 13
    .param p0, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 86
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    invoke-static {p0, p1, p2}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 88
    .local v3, "detectorResult":Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    move-object v3, v1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/zxing/ResultPoint;

    .line 89
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    const/4 v7, 0x4

    aget-object v7, v5, v7

    const/4 v8, 0x5

    aget-object v8, v5, v8

    const/4 v9, 0x6

    aget-object v9, v5, v9

    const/4 v10, 0x7

    aget-object v10, v5, v10

    .line 90
    invoke-static {v5}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinCodewordWidth([Lcom/google/zxing/ResultPoint;)I

    move-result v11

    invoke-static {v5}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxCodewordWidth([Lcom/google/zxing/ResultPoint;)I

    move-result v12

    .line 89
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    .line 91
    .local v6, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    new-instance v7, Lcom/google/zxing/Result;

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v9

    sget-object v10, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v7, v8, v9, v5, v10}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 92
    .local v2, "result":Lcom/google/zxing/Result;
    move-object v2, v7

    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    .line 94
    .local v4, "pdf417ResultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    move-object v4, v7

    if-eqz v7, :cond_0

    .line 95
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v7, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v2    # "result":Lcom/google/zxing/Result;
    .end local v4    # "pdf417ResultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v6    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    goto :goto_0

    .line 99
    :cond_1
    sget-object v1, Lcom/google/zxing/pdf417/PDF417Reader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/zxing/Result;

    return-object v1
.end method

.method private static getMaxCodewordWidth([Lcom/google/zxing/ResultPoint;)I
    .locals 4
    .param p0, "p"    # [Lcom/google/zxing/ResultPoint;

    .line 117
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 118
    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 120
    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Reader;->getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    div-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getMaxWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 2
    .param p0, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p1, "p2"    # Lcom/google/zxing/ResultPoint;

    .line 103
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 104
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getMinCodewordWidth([Lcom/google/zxing/ResultPoint;)I
    .locals 4
    .param p0, "p"    # [Lcom/google/zxing/ResultPoint;

    .line 125
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    .line 126
    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    div-int/lit8 v1, v1, 0x12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    .line 128
    invoke-static {v1, v2}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/PDF417Reader;->getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    div-int/lit8 v2, v2, 0x12

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static getMinWidth(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 2
    .param p0, "p1"    # Lcom/google/zxing/ResultPoint;
    .param p1, "p2"    # Lcom/google/zxing/ResultPoint;

    .line 110
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 111
    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 3
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 63
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;

    move-result-object v1

    const/4 v2, 0x0

    .line 64
    .local v2, "result":[Lcom/google/zxing/Result;
    move-object v2, v1

    array-length v1, v1

    if-eqz v1, :cond_0

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    .line 67
    aget-object v0, v2, v0

    return-object v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 78
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)[Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 80
    :goto_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 135
    return-void
.end method
