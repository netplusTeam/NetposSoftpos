.class public Lcom/solab/iso8583/parse/LllbinParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "LllbinParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLBIN:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/solab/iso8583/IsoType;I)V
    .locals 0
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p2, "len"    # I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 39
    return-void
.end method

.method private getFieldLength([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 141
    iget-boolean v0, p0, Lcom/solab/iso8583/parse/LllbinParseInfo;->forceHexadecimalLength:Z

    if-eqz v0, :cond_0

    .line 142
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    .line 144
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :goto_0
    return v0
.end method


# virtual methods
.method protected getLengthForBinaryParsing([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/solab/iso8583/parse/LllbinParseInfo;->getFieldLength([BI)I

    move-result v0

    return v0
.end method

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

    .line 49
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v3, :cond_9

    .line 52
    add-int/lit8 v0, v3, 0x3

    array-length v8, v2

    if-gt v0, v8, :cond_8

    .line 56
    const/4 v8, 0x3

    invoke-virtual {v1, v2, v3, v8}, Lcom/solab/iso8583/parse/LllbinParseInfo;->decodeLength([BII)I

    move-result v9

    .line 57
    .local v9, "l":I
    if-ltz v9, :cond_7

    .line 60
    add-int v0, v9, v3

    add-int/2addr v0, v8

    array-length v10, v2

    const-string v11, "Insufficient data for LLLBIN field %d, pos %d len %d"

    if-gt v0, v10, :cond_6

    .line 65
    if-nez v9, :cond_0

    new-array v0, v7, [B

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v10, v3, 0x3

    invoke-direct {v0, v2, v10, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lcom/solab/iso8583/util/HexCodec;->hexDecode(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 66
    .local v10, "binval":[B
    const/4 v0, 0x0

    if-nez v4, :cond_1

    .line 67
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    iget-object v6, v1, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v7, v10

    invoke-direct {v5, v6, v10, v7, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v5

    .line 68
    :cond_1
    instance-of v12, v4, Lcom/solab/iso8583/CustomBinaryField;

    if-eqz v12, :cond_3

    .line 70
    :try_start_0
    move-object v12, v4

    check-cast v12, Lcom/solab/iso8583/CustomBinaryField;

    add-int/lit8 v13, v3, 0x3

    invoke-interface {v12, v2, v13, v9}, Lcom/solab/iso8583/CustomBinaryField;->decodeBinaryField([BII)Ljava/lang/Object;

    move-result-object v12

    .line 72
    .local v12, "dec":Ljava/lang/Object;, "TT;"
    if-nez v12, :cond_2

    new-instance v13, Lcom/solab/iso8583/IsoValue;

    iget-object v14, v1, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v15, v10

    invoke-direct {v13, v14, v10, v15, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_1

    .line 73
    :cond_2
    new-instance v13, Lcom/solab/iso8583/IsoValue;

    iget-object v0, v1, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v13, v0, v12, v7, v4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    return-object v13

    .line 74
    .end local v12    # "dec":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v12, Ljava/text/ParseException;

    new-array v8, v8, [Ljava/lang/Object;

    .line 77
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 75
    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 81
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    nop

    .line 82
    if-nez v9, :cond_4

    :try_start_1
    const-string v12, ""

    goto :goto_2

    :cond_4
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v3, 0x3

    invoke-direct {v12, v2, v13, v9}, Ljava/lang/String;-><init>([BII)V

    .line 81
    :goto_2
    invoke-interface {v4, v12}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 83
    .restart local v12    # "dec":Ljava/lang/Object;, "TT;"
    if-nez v12, :cond_5

    new-instance v13, Lcom/solab/iso8583/IsoValue;

    iget-object v14, v1, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v15, v10

    invoke-direct {v13, v14, v10, v15, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_3

    .line 84
    :cond_5
    new-instance v13, Lcom/solab/iso8583/IsoValue;

    iget-object v0, v1, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v13, v0, v12, v9, v4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_3
    return-object v13

    .line 85
    .end local v12    # "dec":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v0

    .line 86
    .restart local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v12, Ljava/text/ParseException;

    new-array v8, v8, [Ljava/lang/Object;

    .line 88
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 86
    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 61
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v10    # "binval":[B
    :cond_6
    new-instance v0, Ljava/text/ParseException;

    new-array v8, v8, [Ljava/lang/Object;

    .line 63
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 61
    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 58
    :cond_7
    new-instance v0, Ljava/text/ParseException;

    new-array v8, v8, [Ljava/lang/Object;

    .line 59
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 58
    const-string v5, "Invalid LLLBIN length %d field %d pos %d"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 53
    .end local v9    # "l":I
    :cond_8
    new-instance v0, Ljava/text/ParseException;

    new-array v5, v6, [Ljava/lang/Object;

    .line 54
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 53
    const-string v6, "Insufficient LLLBIN header field %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 50
    :cond_9
    new-instance v0, Ljava/text/ParseException;

    new-array v5, v5, [Ljava/lang/Object;

    .line 51
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 50
    const-string v6, "Invalid LLLBIN field %d pos %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 10
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
            Ljava/text/ParseException;
        }
    .end annotation

    .line 97
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p3, :cond_7

    .line 100
    add-int/lit8 v3, p3, 0x2

    array-length v4, p2

    if-gt v3, v4, :cond_6

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/solab/iso8583/parse/LllbinParseInfo;->getLengthForBinaryParsing([BI)I

    move-result v3

    .line 105
    .local v3, "l":I
    const/4 v4, 0x3

    if-ltz v3, :cond_5

    .line 109
    add-int v5, v3, p3

    add-int/2addr v5, v2

    array-length v6, p2

    if-gt v5, v6, :cond_4

    .line 114
    new-array v4, v3, [B

    .line 115
    .local v4, "_v":[B
    add-int/lit8 v5, p3, 0x2

    invoke-static {p2, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    if-nez p4, :cond_0

    .line 117
    invoke-direct {p0, p2, p3}, Lcom/solab/iso8583/parse/LllbinParseInfo;->getFieldLength([BI)I

    move-result v0

    .line 118
    .local v0, "len":I
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget-boolean v5, p0, Lcom/solab/iso8583/parse/LllbinParseInfo;->forceHexadecimalLength:Z

    invoke-direct {v1, v2, v4, v0, v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;IZ)V

    return-object v1

    .line 119
    .end local v0    # "len":I
    :cond_0
    instance-of v5, p4, Lcom/solab/iso8583/CustomBinaryField;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 121
    :try_start_0
    move-object v5, p4

    check-cast v5, Lcom/solab/iso8583/CustomBinaryField;

    add-int/lit8 v7, p3, 0x2

    invoke-interface {v5, p2, v7, v3}, Lcom/solab/iso8583/CustomBinaryField;->decodeBinaryField([BII)Ljava/lang/Object;

    move-result-object v5

    .line 123
    .local v5, "dec":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_1

    new-instance v7, Lcom/solab/iso8583/IsoValue;

    iget-object v8, p0, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v9, v4

    invoke-direct {v7, v8, v4, v9, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 124
    :cond_1
    new-instance v7, Lcom/solab/iso8583/IsoValue;

    iget-object v6, p0, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v7, v6, v5, v3, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v7

    .line 125
    .end local v5    # "dec":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    .line 126
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 126
    const-string v0, "Insufficient data for LLLBIN field %d, pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 130
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    array-length v0, v4

    invoke-static {v4, v1, v0}, Lcom/solab/iso8583/util/HexCodec;->hexEncode([BII)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "dec":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_3

    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v1, v2, v4, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_1

    .line 132
    :cond_3
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v1, v2, v0, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 131
    :goto_1
    return-object v1

    .line 110
    .end local v0    # "dec":Ljava/lang/Object;, "TT;"
    .end local v4    # "_v":[B
    :cond_4
    new-instance v5, Ljava/text/ParseException;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    array-length v1, p2

    sub-int/2addr v1, p3

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    .line 110
    const-string v0, "Insufficient data for bin LLLBIN field %d, pos %d requires %d, only %d available"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 106
    :cond_5
    new-instance v5, Ljava/text/ParseException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 106
    const-string v0, "Invalid LLLBIN length %d field %d pos %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 101
    .end local v3    # "l":I
    :cond_6
    new-instance v2, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 101
    const-string v1, "Insufficient LLLBIN header field %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 98
    :cond_7
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 98
    const-string v0, "Invalid bin LLLBIN field %d pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
