.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# static fields
.field private static final EMPTY_READER_ARRAY:[Lcom/google/zxing/oned/UPCEANReader;


# instance fields
.field private final readers:[Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/oned/UPCEANReader;

    sput-object v0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->EMPTY_READER_ARRAY:[Lcom/google/zxing/oned/UPCEANReader;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .line 44
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 46
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    nop

    .line 48
    .local v0, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    if-eqz v0, :cond_4

    .line 50
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    new-instance v2, Lcom/google/zxing/oned/UPCAReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    :goto_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v2, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_5
    sget-object v2, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->EMPTY_READER_ARRAY:[Lcom/google/zxing/oned/UPCEANReader;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/zxing/oned/UPCEANReader;

    iput-object v2, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    .line 69
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 76
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p3

    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v2

    .line 77
    .local v2, "startGuardPattern":[I
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v5, v4

    const/4 v6, 0x0

    move v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    aget-object v12, v4, v8

    .line 79
    .local v12, "reader":Lcom/google/zxing/oned/UPCEANReader;
    move/from16 v13, p1

    move-object/from16 v14, p2

    :try_start_0
    invoke-virtual {v12, v13, v14, v2, v1}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 92
    .local v9, "result":Lcom/google/zxing/Result;
    move-object v9, v0

    .line 93
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v15, :cond_0

    .line 94
    :try_start_1
    invoke-virtual {v9}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v15, 0x30

    if-ne v0, v15, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .end local v9    # "result":Lcom/google/zxing/Result;
    :cond_0
    move v0, v6

    .line 96
    .local v0, "ean13MayBeUPCA":Z
    :goto_1
    if-nez v1, :cond_1

    const/4 v15, 0x0

    goto :goto_2

    :cond_1
    :try_start_2
    sget-object v15, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 97
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    nop

    .line 98
    .local v10, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    move-object v10, v15

    if-eqz v15, :cond_3

    :try_start_3
    sget-object v15, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v10, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15
    :try_end_3
    .catch Lcom/google/zxing/ReaderException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v15, :cond_2

    goto :goto_3

    :cond_2
    move v15, v6

    goto :goto_4

    .line 110
    .end local v0    # "ean13MayBeUPCA":Z
    .end local v10    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_5

    .line 98
    .restart local v0    # "ean13MayBeUPCA":Z
    :cond_3
    :goto_3
    const/4 v15, 0x1

    .line 100
    .local v15, "canReturnUPCA":Z
    :goto_4
    if-eqz v0, :cond_4

    if-eqz v15, :cond_4

    .line 102
    :try_start_4
    new-instance v6, Lcom/google/zxing/Result;

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v0

    const/4 v0, 0x1

    .end local v0    # "ean13MayBeUPCA":Z
    .local v17, "ean13MayBeUPCA":Z
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v9}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v7

    .line 104
    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1
    :try_end_4
    .catch Lcom/google/zxing/ReaderException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v16, v2

    .end local v2    # "startGuardPattern":[I
    .local v16, "startGuardPattern":[I
    :try_start_5
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v0, v7, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v0, v11

    .line 106
    .local v0, "resultUPCA":Lcom/google/zxing/Result;
    move-object v11, v6

    .end local v0    # "resultUPCA":Lcom/google/zxing/Result;
    .local v11, "resultUPCA":Lcom/google/zxing/Result;
    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V
    :try_end_5
    .catch Lcom/google/zxing/ReaderException; {:try_start_5 .. :try_end_5} :catch_1

    .line 107
    return-object v11

    .line 110
    .end local v11    # "resultUPCA":Lcom/google/zxing/Result;
    .end local v15    # "canReturnUPCA":Z
    .end local v17    # "ean13MayBeUPCA":Z
    :catch_1
    move-exception v0

    goto :goto_5

    .line 100
    .end local v16    # "startGuardPattern":[I
    .local v0, "ean13MayBeUPCA":Z
    .restart local v2    # "startGuardPattern":[I
    .restart local v15    # "canReturnUPCA":Z
    :cond_4
    move/from16 v17, v0

    move-object/from16 v16, v2

    .line 109
    .end local v0    # "ean13MayBeUPCA":Z
    .end local v2    # "startGuardPattern":[I
    .restart local v16    # "startGuardPattern":[I
    .restart local v17    # "ean13MayBeUPCA":Z
    return-object v9

    .line 110
    .end local v15    # "canReturnUPCA":Z
    .end local v16    # "startGuardPattern":[I
    .end local v17    # "ean13MayBeUPCA":Z
    .restart local v2    # "startGuardPattern":[I
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    .line 77
    .end local v2    # "startGuardPattern":[I
    .end local v12    # "reader":Lcom/google/zxing/oned/UPCEANReader;
    .restart local v16    # "startGuardPattern":[I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    const/4 v6, 0x0

    goto :goto_0

    .line 115
    .end local v16    # "startGuardPattern":[I
    .restart local v2    # "startGuardPattern":[I
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 121
    invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
