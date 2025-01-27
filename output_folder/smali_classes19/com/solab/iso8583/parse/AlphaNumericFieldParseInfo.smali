.class public abstract Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "AlphaNumericFieldParseInfo.java"


# direct methods
.method public constructor <init>(Lcom/solab/iso8583/IsoType;I)V
    .locals 0
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p2, "len"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
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

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ltz v3, :cond_4

    .line 45
    iget v0, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    add-int/2addr v0, v3

    array-length v8, v2

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, "Insufficient data for %s field %d of length %d, pos %d"

    if-gt v0, v8, :cond_3

    .line 50
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget v8, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v2, v3, v8, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 51
    .local v0, "_v":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    iget v12, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    if-eq v8, v12, :cond_0

    .line 52
    new-instance v8, Ljava/lang/String;

    array-length v12, v2

    sub-int/2addr v12, v3

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v2, v3, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v12, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    invoke-virtual {v8, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 54
    :cond_0
    const/4 v8, 0x0

    if-nez v4, :cond_1

    .line 55
    new-instance v12, Lcom/solab/iso8583/IsoValue;

    iget-object v13, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v14, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    invoke-direct {v12, v13, v0, v14, v8}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v12

    .line 57
    :cond_1
    invoke-interface {v4, v0}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 58
    .local v12, "decoded":Ljava/lang/Object;, "TT;"
    if-nez v12, :cond_2

    new-instance v13, Lcom/solab/iso8583/IsoValue;

    iget-object v14, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v15, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    invoke-direct {v13, v14, v0, v15, v8}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v13, Lcom/solab/iso8583/IsoValue;

    iget-object v8, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v14, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    invoke-direct {v13, v8, v12, v14, v4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v13

    .line 61
    .end local v0    # "_v":Ljava/lang/String;
    .end local v12    # "decoded":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v8, Ljava/text/ParseException;

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->type:Lcom/solab/iso8583/IsoType;

    aput-object v12, v10, v7

    .line 64
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v5

    iget v5, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v9

    .line 62
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 46
    .end local v0    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->type:Lcom/solab/iso8583/IsoType;

    aput-object v10, v8, v7

    .line 47
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v5

    iget v5, v1, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    .line 46
    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 43
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    new-array v6, v6, [Ljava/lang/Object;

    .line 44
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 43
    const-string v5, "Invalid ALPHA/NUM field %d position %d"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
