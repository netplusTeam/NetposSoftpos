.class public Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;
.super Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;
.source "FlateDecodeFilter.java"


# instance fields
.field private strictDecoding:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;-><init>(Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "strictDecoding"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->strictDecoding:Z

    .line 88
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->strictDecoding:Z

    .line 89
    return-void
.end method

.method public static decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B
    .locals 26
    .param p0, "in"    # [B
    .param p1, "decodeParams"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 119
    move-object/from16 v1, p0

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_f

    .line 122
    :cond_0
    move-object/from16 v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 123
    .local v2, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Predictor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 124
    .local v3, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    goto/16 :goto_e

    .line 127
    :cond_1
    move-object v0, v3

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v5

    .line 128
    .local v5, "predictor":I
    const/16 v0, 0xa

    const/4 v6, 0x2

    if-ge v5, v0, :cond_2

    if-eq v5, v6, :cond_2

    .line 129
    return-object v1

    .line 131
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Columns:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x1

    invoke-static {v2, v0, v7}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I

    move-result v8

    .line 132
    .local v8, "width":I
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Colors:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v2, v0, v7}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I

    move-result v7

    .line 133
    .local v7, "colors":I
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v2, v0, v4}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I

    move-result v9

    .line 134
    .local v9, "bpc":I
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 135
    .local v10, "dataStream":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v11, v1

    invoke-direct {v0, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v11, v0

    .line 136
    .local v11, "fout":Ljava/io/ByteArrayOutputStream;
    mul-int v0, v7, v9

    div-int/lit8 v12, v0, 0x8

    .line 137
    .local v12, "bytesPerPixel":I
    mul-int v0, v7, v8

    mul-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v13, v0, 0x8

    .line 138
    .local v13, "bytesPerRow":I
    new-array v0, v13, [B

    .line 139
    .local v0, "curr":[B
    new-array v14, v13, [B

    .line 140
    .local v14, "prior":[B
    if-ne v5, v6, :cond_6

    .line 141
    if-ne v9, v4, :cond_5

    .line 142
    array-length v4, v1

    div-int/2addr v4, v13

    .line 143
    .local v4, "numRows":I
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 144
    mul-int v15, v6, v13

    .line 145
    .local v15, "rowStart":I
    move/from16 v16, v12

    move-object/from16 v17, v0

    move/from16 v0, v16

    .local v0, "col":I
    .local v17, "curr":[B
    :goto_1
    if-ge v0, v13, :cond_3

    .line 146
    add-int v16, v15, v0

    add-int v18, v15, v0

    aget-byte v18, v1, v18

    add-int v19, v15, v0

    sub-int v19, v19, v12

    aget-byte v19, v1, v19

    move-object/from16 v20, v2

    .end local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .local v20, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    add-int v2, v18, v19

    int-to-byte v2, v2

    aput-byte v2, v1, v16

    .line 145
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v20

    goto :goto_1

    .end local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_3
    move-object/from16 v20, v2

    .line 143
    .end local v0    # "col":I
    .end local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v15    # "rowStart":I
    .restart local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    goto :goto_0

    .end local v17    # "curr":[B
    .end local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .local v0, "curr":[B
    .restart local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    move-object/from16 v17, v0

    move-object/from16 v20, v2

    .end local v0    # "curr":[B
    .end local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v17    # "curr":[B
    .restart local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_2

    .line 141
    .end local v4    # "numRows":I
    .end local v6    # "row":I
    .end local v17    # "curr":[B
    .end local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v0    # "curr":[B
    .restart local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_5
    move-object/from16 v17, v0

    move-object/from16 v20, v2

    .line 150
    .end local v0    # "curr":[B
    .end local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v17    # "curr":[B
    .restart local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_2
    return-object v1

    .line 140
    .end local v17    # "curr":[B
    .end local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v0    # "curr":[B
    .restart local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_6
    move-object/from16 v17, v0

    move-object/from16 v20, v2

    .end local v0    # "curr":[B
    .end local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v17    # "curr":[B
    .restart local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move-object/from16 v2, v17

    .line 157
    .end local v17    # "curr":[B
    .local v2, "curr":[B
    :goto_3
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v4, v0

    .line 158
    .local v4, "filter":I
    if-gez v4, :cond_7

    .line 159
    :try_start_1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 162
    .end local v4    # "filter":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v7

    goto/16 :goto_d

    .line 161
    .restart local v4    # "filter":I
    :cond_7
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v10, v2, v0, v13}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    nop

    .line 166
    packed-switch v4, :pswitch_data_0

    .line 216
    move-object/from16 v18, v3

    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v18, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "PNG filter unknown."

    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v12, :cond_8

    .line 189
    aget-byte v15, v2, v0

    aget-byte v16, v14, v0

    add-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 192
    .end local v0    # "i":I
    :cond_8
    move v0, v12

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v13, :cond_b

    .line 193
    sub-int v15, v0, v12

    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    .line 194
    .local v15, "a":I
    aget-byte v6, v14, v0

    and-int/lit16 v6, v6, 0xff

    .line 195
    .local v6, "b":I
    sub-int v17, v0, v12

    move-object/from16 v18, v3

    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    aget-byte v3, v14, v17

    and-int/lit16 v3, v3, 0xff

    .line 197
    .local v3, "c":I
    add-int v17, v15, v6

    sub-int v17, v17, v3

    .line 198
    .local v17, "p":I
    sub-int v19, v17, v15

    move/from16 v21, v4

    .end local v4    # "filter":I
    .local v21, "filter":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 199
    .local v4, "pa":I
    sub-int v19, v17, v6

    move/from16 v22, v5

    .end local v5    # "predictor":I
    .local v22, "predictor":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 200
    .local v5, "pb":I
    sub-int v19, v17, v3

    move/from16 v23, v7

    .end local v7    # "colors":I
    .local v23, "colors":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 204
    .local v7, "pc":I
    if-gt v4, v5, :cond_9

    if-gt v4, v7, :cond_9

    .line 205
    move/from16 v19, v15

    move/from16 v24, v3

    move/from16 v3, v19

    .local v19, "ret":I
    goto :goto_6

    .line 206
    .end local v19    # "ret":I
    :cond_9
    if-gt v5, v7, :cond_a

    .line 207
    move/from16 v19, v6

    move/from16 v24, v3

    move/from16 v3, v19

    .restart local v19    # "ret":I
    goto :goto_6

    .line 209
    .end local v19    # "ret":I
    :cond_a
    move/from16 v19, v3

    move/from16 v24, v3

    .line 211
    .local v3, "ret":I
    .local v24, "c":I
    :goto_6
    aget-byte v19, v2, v0

    move/from16 v25, v4

    .end local v4    # "pa":I
    .local v25, "pa":I
    int-to-byte v4, v3

    add-int v4, v19, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 192
    .end local v3    # "ret":I
    .end local v5    # "pb":I
    .end local v6    # "b":I
    .end local v7    # "pc":I
    .end local v15    # "a":I
    .end local v17    # "p":I
    .end local v24    # "c":I
    .end local v25    # "pa":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v18

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v7, v23

    const/4 v6, 0x2

    goto :goto_5

    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v21    # "filter":I
    .end local v22    # "predictor":I
    .end local v23    # "colors":I
    .local v3, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v4, "filter":I
    .local v5, "predictor":I
    .local v7, "colors":I
    :cond_b
    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v7

    .line 213
    .end local v0    # "i":I
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "filter":I
    .end local v5    # "predictor":I
    .end local v7    # "colors":I
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v21    # "filter":I
    .restart local v22    # "predictor":I
    .restart local v23    # "colors":I
    const/4 v5, 0x2

    goto/16 :goto_b

    .line 180
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v21    # "filter":I
    .end local v22    # "predictor":I
    .end local v23    # "colors":I
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v4    # "filter":I
    .restart local v5    # "predictor":I
    .restart local v7    # "colors":I
    :pswitch_1
    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v7

    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "filter":I
    .end local v5    # "predictor":I
    .end local v7    # "colors":I
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v21    # "filter":I
    .restart local v22    # "predictor":I
    .restart local v23    # "colors":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v12, :cond_c

    .line 181
    aget-byte v3, v2, v0

    aget-byte v4, v14, v0

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 183
    .end local v0    # "i":I
    :cond_c
    move v0, v12

    .restart local v0    # "i":I
    :goto_8
    if-ge v0, v13, :cond_d

    .line 184
    aget-byte v3, v2, v0

    sub-int v4, v0, v12

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, v14, v0

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x2

    .line 186
    .end local v0    # "i":I
    goto :goto_b

    .line 175
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v21    # "filter":I
    .end local v22    # "predictor":I
    .end local v23    # "colors":I
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v4    # "filter":I
    .restart local v5    # "predictor":I
    .restart local v7    # "colors":I
    :pswitch_2
    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move v5, v6

    move/from16 v23, v7

    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "filter":I
    .end local v5    # "predictor":I
    .end local v7    # "colors":I
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v21    # "filter":I
    .restart local v22    # "predictor":I
    .restart local v23    # "colors":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    if-ge v0, v13, :cond_e

    .line 176
    aget-byte v3, v2, v0

    aget-byte v4, v14, v0

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 178
    .end local v0    # "i":I
    :cond_e
    goto :goto_b

    .line 170
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v21    # "filter":I
    .end local v22    # "predictor":I
    .end local v23    # "colors":I
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v4    # "filter":I
    .restart local v5    # "predictor":I
    .restart local v7    # "colors":I
    :pswitch_3
    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move v5, v6

    move/from16 v23, v7

    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "filter":I
    .end local v5    # "predictor":I
    .end local v7    # "colors":I
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v21    # "filter":I
    .restart local v22    # "predictor":I
    .restart local v23    # "colors":I
    move v0, v12

    .restart local v0    # "i":I
    :goto_a
    if-ge v0, v13, :cond_f

    .line 171
    aget-byte v3, v2, v0

    sub-int v4, v0, v12

    aget-byte v4, v2, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 173
    .end local v0    # "i":I
    :cond_f
    goto :goto_b

    .line 168
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v21    # "filter":I
    .end local v22    # "predictor":I
    .end local v23    # "colors":I
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v4    # "filter":I
    .restart local v5    # "predictor":I
    .restart local v7    # "colors":I
    :pswitch_4
    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move v5, v6

    move/from16 v23, v7

    .line 219
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "filter":I
    .end local v5    # "predictor":I
    .end local v7    # "colors":I
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v21    # "filter":I
    .restart local v22    # "predictor":I
    .restart local v23    # "colors":I
    :goto_b
    :try_start_3
    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    goto :goto_c

    .line 220
    :catch_1
    move-exception v0

    .line 226
    :goto_c
    move-object v0, v14

    .line 227
    .local v0, "tmp":[B
    move-object v14, v2

    .line 228
    move-object v2, v0

    .line 229
    .end local v0    # "tmp":[B
    .end local v21    # "filter":I
    move v6, v5

    move-object/from16 v3, v18

    move/from16 v5, v22

    move/from16 v7, v23

    goto/16 :goto_3

    .line 162
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v22    # "predictor":I
    .end local v23    # "colors":I
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v5    # "predictor":I
    .restart local v7    # "colors":I
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v7

    .line 163
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v5    # "predictor":I
    .end local v7    # "colors":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v22    # "predictor":I
    .restart local v23    # "colors":I
    :goto_d
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "width":I
    .end local v9    # "bpc":I
    .end local v10    # "dataStream":Ljava/io/DataInputStream;
    .end local v11    # "fout":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "bytesPerPixel":I
    .end local v13    # "bytesPerRow":I
    .end local v14    # "prior":[B
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v22    # "predictor":I
    .end local v23    # "colors":I
    .local v2, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_10
    move-object/from16 v20, v2

    move-object/from16 v18, v3

    .line 125
    .end local v2    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_e
    return-object v1

    .line 120
    .end local v18    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v20    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_11
    :goto_f
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static flateDecode([BZ)[B
    .locals 1
    .param p0, "in"    # [B
    .param p1, "strict"    # Z

    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B
    .locals 5
    .param p0, "in"    # [B
    .param p1, "strict"    # Z
    .param p2, "out"    # Ljava/io/ByteArrayOutputStream;

    .line 270
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 271
    .local v0, "stream":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v1, "zip":Ljava/util/zip/InflaterInputStream;
    if-eqz p1, :cond_0

    const/16 v2, 0xffc

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    new-array v2, v2, [B

    .line 275
    .local v2, "b":[B
    :goto_1
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-ltz v3, :cond_1

    .line 276
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 279
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 280
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 283
    .end local v4    # "n":I
    :catch_0
    move-exception v3

    .line 284
    .local v3, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 285
    const/4 v4, 0x0

    return-object v4

    .line 287
    :cond_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 281
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 282
    .local v3, "e":Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;
    throw v3
.end method

.method private static getNumberOrDefault(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;I)I
    .locals 4
    .param p0, "dict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "defaultInt"    # I

    .line 292
    move v0, p2

    .line 293
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 295
    .local v1, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 296
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 298
    :cond_0
    return v0
.end method


# virtual methods
.method public decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 3
    .param p1, "b"    # [B
    .param p2, "filterName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "decodeParams"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p4, "streamDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 237
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 238
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B

    move-result-object v1

    .line 239
    .local v1, "res":[B
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->strictDecoding:Z

    if-nez v2, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 241
    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->flateDecodeInternal([BZLjava/io/ByteArrayOutputStream;)[B

    move-result-object v1

    .line 243
    :cond_0
    invoke-static {v1, p3}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->decodePredictor([BLcom/itextpdf/kernel/pdf/PdfObject;)[B

    move-result-object p1

    .line 244
    return-object p1
.end method

.method public isStrictDecoding()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->strictDecoding:Z

    return v0
.end method

.method public setStrictDecoding(Z)Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;
    .locals 0
    .param p1, "strict"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeFilter;->strictDecoding:Z

    .line 258
    return-object p0
.end method
