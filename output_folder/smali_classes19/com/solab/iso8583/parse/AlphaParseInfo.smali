.class public Lcom/solab/iso8583/parse/AlphaParseInfo;
.super Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;
.source "AlphaParseInfo.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .line 35
    sget-object v0, Lcom/solab/iso8583/IsoType;->ALPHA:Lcom/solab/iso8583/IsoType;

    invoke-direct {p0, v0, p1}, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 16
    .param p1, "field"    # I
    .param p2, "buf"    # [B
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[BI",
            "Lcom/solab/iso8583/CustomField<",
            "TT;>;)",
            "Lcom/solab/iso8583/IsoValue<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 42
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ltz v3, :cond_3

    .line 45
    iget v0, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    add-int/2addr v0, v3

    array-length v8, v2

    const/4 v10, 0x4

    const-string v11, "Insufficient data for bin %s field %d of length %d, pos %d"

    if-gt v0, v8, :cond_2

    .line 51
    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 52
    :try_start_0
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    iget-object v12, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v13, Ljava/lang/String;

    iget v14, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/AlphaParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v2, v3, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v14, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-direct {v8, v12, v13, v14, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v8

    .line 54
    :cond_0
    new-instance v8, Ljava/lang/String;

    iget v12, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/AlphaParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v2, v3, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v4, v8}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 55
    .local v8, "decoded":Ljava/lang/Object;, "TT;"
    if-nez v8, :cond_1

    .line 56
    new-instance v12, Lcom/solab/iso8583/IsoValue;

    iget-object v13, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v14, Ljava/lang/String;

    iget v15, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/AlphaParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v2, v3, v15, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v9, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-direct {v12, v13, v14, v9, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v12, Lcom/solab/iso8583/IsoValue;

    iget-object v0, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v9, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-direct {v12, v0, v8, v9, v4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v12

    .line 59
    .end local v8    # "decoded":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Ljava/text/ParseException;

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->type:Lcom/solab/iso8583/IsoType;

    aput-object v10, v9, v6

    .line 62
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    iget v5, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v9, v6

    .line 60
    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 46
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->type:Lcom/solab/iso8583/IsoType;

    aput-object v9, v8, v6

    .line 48
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    iget v5, v1, Lcom/solab/iso8583/parse/AlphaParseInfo;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v8, v6

    .line 46
    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 43
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    new-array v7, v7, [Ljava/lang/Object;

    .line 44
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    .line 43
    const-string v5, "Invalid bin ALPHA field %d position %d"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
