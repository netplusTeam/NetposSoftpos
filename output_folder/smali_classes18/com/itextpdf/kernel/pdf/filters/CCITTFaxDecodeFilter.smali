.class public Lcom/itextpdf/kernel/pdf/filters/CCITTFaxDecodeFilter;
.super Ljava/lang/Object;
.source "CCITTFaxDecodeFilter.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 20
    .param p1, "b"    # [B
    .param p2, "filterName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "decodeParams"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p4, "streamDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 63
    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v10

    .line 64
    .local v10, "wn":Lcom/itextpdf/kernel/pdf/PdfNumber;
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v11

    .line 65
    .local v11, "hn":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v10, :cond_c

    if-eqz v11, :cond_c

    .line 68
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v12

    .line 69
    .local v12, "width":I
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v13

    .line 71
    .local v13, "height":I
    instance-of v0, v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    move-object v0, v8

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v14, v0

    .line 72
    .local v14, "param":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v0, 0x0

    .line 73
    .local v0, "k":I
    const/4 v1, 0x0

    .line 74
    .local v1, "blackIs1":Z
    const/4 v2, 0x0

    .line 75
    .local v2, "byteAlign":Z
    if-eqz v14, :cond_4

    .line 76
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 77
    .local v3, "kn":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 80
    :cond_1
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->BlackIs1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v4

    .line 81
    .local v4, "bo":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    .line 84
    :cond_2
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->EncodedByteAlign:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v2

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    .line 85
    :cond_3
    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    .line 75
    .end local v3    # "kn":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v4    # "bo":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    :cond_4
    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    .line 89
    .end local v0    # "k":I
    .end local v1    # "blackIs1":Z
    .end local v2    # "byteAlign":Z
    .local v15, "k":I
    .local v16, "blackIs1":Z
    .local v17, "byteAlign":Z
    :goto_1
    add-int/lit8 v0, v12, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, v13

    new-array v5, v0, [B

    .line 90
    .local v5, "outBuf":[B
    new-instance v0, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;

    invoke-direct {v0}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;-><init>()V

    move-object v6, v0

    .line 91
    .local v6, "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    const/4 v0, 0x1

    if-eqz v15, :cond_7

    if-lez v15, :cond_5

    move-object v8, v5

    move-object v9, v6

    goto :goto_3

    .line 106
    :cond_5
    const-wide/16 v1, 0x0

    .line 107
    .local v1, "tiffT6Options":J
    if-eqz v17, :cond_6

    const-wide/16 v3, 0x4

    goto :goto_2

    :cond_6
    const-wide/16 v3, 0x0

    :goto_2
    or-long v18, v1, v3

    .line 108
    .end local v1    # "tiffT6Options":J
    .local v18, "tiffT6Options":J
    new-instance v1, Lcom/itextpdf/io/codec/TIFFFaxDecoder;

    invoke-direct {v1, v0, v12, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;-><init>(III)V

    move-object v0, v1

    .line 109
    .local v0, "deca":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    const/4 v3, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    move v4, v13

    move-object v8, v5

    move-object v9, v6

    .end local v5    # "outBuf":[B
    .end local v6    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    .local v8, "outBuf":[B
    .local v9, "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    move-wide/from16 v5, v18

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->decodeT6([B[BIIJ)V

    move-object v5, v8

    goto :goto_7

    .line 91
    .end local v0    # "deca":Lcom/itextpdf/io/codec/TIFFFaxDecoder;
    .end local v8    # "outBuf":[B
    .end local v9    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    .end local v18    # "tiffT6Options":J
    .restart local v5    # "outBuf":[B
    .restart local v6    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    :cond_7
    move-object v8, v5

    move-object v9, v6

    .line 92
    .end local v5    # "outBuf":[B
    .end local v6    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    .restart local v8    # "outBuf":[B
    .restart local v9    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    :goto_3
    const/4 v1, 0x0

    if-lez v15, :cond_8

    move v2, v0

    goto :goto_4

    :cond_8
    move v2, v1

    .line 93
    .local v2, "tiffT4Options":I
    :goto_4
    if-eqz v17, :cond_9

    const/4 v3, 0x4

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_5
    or-int/2addr v2, v3

    .line 94
    const/4 v3, 0x3

    invoke-virtual {v9, v0, v3, v2, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->SetOptions(IIII)V

    .line 95
    invoke-virtual {v9, v8, v7, v12, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeRaw([B[BII)V

    .line 96
    iget v3, v9, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    if-lez v3, :cond_a

    .line 97
    add-int/lit8 v3, v12, 0x7

    div-int/lit8 v3, v3, 0x8

    mul-int/2addr v3, v13

    new-array v3, v3, [B

    .line 98
    .local v3, "outBuf2":[B
    iget v4, v9, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    .line 99
    .local v4, "oldFails":I
    const/4 v5, 0x2

    invoke-virtual {v9, v0, v5, v2, v1}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->SetOptions(IIII)V

    .line 100
    invoke-virtual {v9, v3, v7, v12, v13}, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->decodeRaw([B[BII)V

    .line 101
    iget v0, v9, Lcom/itextpdf/io/codec/TIFFFaxDecompressor;->fails:I

    if-ge v0, v4, :cond_a

    .line 102
    move-object v0, v3

    move-object v5, v0

    .end local v8    # "outBuf":[B
    .local v0, "outBuf":[B
    goto :goto_6

    .line 105
    .end local v0    # "outBuf":[B
    .end local v2    # "tiffT4Options":I
    .end local v3    # "outBuf2":[B
    .end local v4    # "oldFails":I
    .restart local v8    # "outBuf":[B
    :cond_a
    move-object v5, v8

    .end local v8    # "outBuf":[B
    .restart local v5    # "outBuf":[B
    :goto_6
    nop

    .line 111
    :goto_7
    if-nez v16, :cond_b

    .line 112
    array-length v0, v5

    .line 113
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_8
    if-ge v1, v0, :cond_b

    .line 114
    aget-byte v2, v5, v1

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 117
    .end local v0    # "len":I
    .end local v1    # "t":I
    :cond_b
    move-object v0, v5

    .line 118
    .end local p1    # "b":[B
    .local v0, "b":[B
    return-object v0

    .line 66
    .end local v0    # "b":[B
    .end local v5    # "outBuf":[B
    .end local v9    # "decoder":Lcom/itextpdf/io/codec/TIFFFaxDecompressor;
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v14    # "param":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v15    # "k":I
    .end local v16    # "blackIs1":Z
    .end local v17    # "byteAlign":Z
    .restart local p1    # "b":[B
    :cond_c
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Filter CCITTFaxDecode is only supported for images"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
