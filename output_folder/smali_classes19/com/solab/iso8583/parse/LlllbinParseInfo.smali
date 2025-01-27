.class public Lcom/solab/iso8583/parse/LlllbinParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "LlllbinParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLLBIN:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/solab/iso8583/IsoType;I)V
    .locals 0
    .param p1, "t"    # Lcom/solab/iso8583/IsoType;
    .param p2, "len"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 40
    return-void
.end method

.method private getFieldLength([BI)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 139
    iget-boolean v0, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->forceHexadecimalLength:Z

    if-eqz v0, :cond_0

    .line 140
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p1, p2}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength2bytes([BI)I

    move-result v0

    .line 139
    :goto_0
    return v0
.end method


# virtual methods
.method protected getLengthForBinaryParsing([BI)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/solab/iso8583/parse/LlllbinParseInfo;->getFieldLength([BI)I

    move-result v0

    return v0
.end method

.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 11
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

    .line 50
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p3, :cond_9

    .line 53
    add-int/lit8 v3, p3, 0x4

    array-length v4, p2

    if-gt v3, v4, :cond_8

    .line 57
    const/4 v3, 0x4

    invoke-virtual {p0, p2, p3, v3}, Lcom/solab/iso8583/parse/LlllbinParseInfo;->decodeLength([BII)I

    move-result v4

    .line 58
    .local v4, "l":I
    if-ltz v4, :cond_7

    .line 61
    add-int v5, v4, p3

    add-int/2addr v5, v3

    array-length v3, p2

    const-string v6, "Insufficient data for LLLLBIN field %d, pos %d"

    if-gt v5, v3, :cond_6

    .line 65
    if-nez v4, :cond_0

    new-array v3, v2, [B

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v5, p3, 0x4

    invoke-direct {v3, p2, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Lcom/solab/iso8583/util/HexCodec;->hexDecode(Ljava/lang/String;)[B

    move-result-object v3

    .line 66
    .local v3, "binval":[B
    :goto_0
    const/4 v5, 0x0

    if-nez p4, :cond_1

    .line 67
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    iget-object v1, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v2, v3

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v0

    .line 68
    :cond_1
    instance-of v7, p4, Lcom/solab/iso8583/CustomBinaryField;

    if-eqz v7, :cond_3

    .line 70
    :try_start_0
    move-object v7, p4

    check-cast v7, Lcom/solab/iso8583/CustomBinaryField;

    add-int/lit8 v8, p3, 0x4

    invoke-interface {v7, p2, v8, v4}, Lcom/solab/iso8583/CustomBinaryField;->decodeBinaryField([BII)Ljava/lang/Object;

    move-result-object v7

    .line 72
    .local v7, "dec":Ljava/lang/Object;, "TT;"
    if-nez v7, :cond_2

    new-instance v8, Lcom/solab/iso8583/IsoValue;

    iget-object v9, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v10, v3

    invoke-direct {v8, v9, v3, v10, v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_1

    .line 73
    :cond_2
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    iget-object v5, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v8, v5, v7, v2, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    return-object v8

    .line 74
    .end local v7    # "dec":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    .line 75
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 80
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    nop

    .line 81
    if-nez v4, :cond_4

    :try_start_1
    const-string v7, ""

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, p3, 0x4

    invoke-direct {v7, p2, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 80
    :goto_2
    invoke-interface {p4, v7}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 82
    .restart local v7    # "dec":Ljava/lang/Object;, "TT;"
    if-nez v7, :cond_5

    new-instance v8, Lcom/solab/iso8583/IsoValue;

    iget-object v9, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v10, v3

    invoke-direct {v8, v9, v3, v10, v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_3

    .line 83
    :cond_5
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    iget-object v5, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v8, v5, v7, v4, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :goto_3
    return-object v8

    .line 84
    .end local v7    # "dec":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v5

    .line 85
    .restart local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 62
    .end local v3    # "binval":[B
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 59
    :cond_7
    new-instance v3, Ljava/text/ParseException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 59
    const-string v0, "Invalid LLLLBIN length %d field %d pos %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 54
    .end local v4    # "l":I
    :cond_8
    new-instance v0, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 54
    const-string v2, "Insufficient LLLLBIN header field %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 51
    :cond_9
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    const-string v1, "Invalid LLLLBIN field %d pos %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
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

    .line 95
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p3, :cond_7

    .line 98
    add-int/lit8 v3, p3, 0x2

    array-length v4, p2

    if-gt v3, v4, :cond_6

    .line 102
    invoke-virtual {p0, p2, p3}, Lcom/solab/iso8583/parse/LlllbinParseInfo;->getLengthForBinaryParsing([BI)I

    move-result v3

    .line 103
    .local v3, "l":I
    const/4 v4, 0x3

    if-ltz v3, :cond_5

    .line 107
    add-int v5, v3, p3

    add-int/2addr v5, v2

    array-length v6, p2

    if-gt v5, v6, :cond_4

    .line 112
    new-array v4, v3, [B

    .line 113
    .local v4, "_v":[B
    add-int/lit8 v5, p3, 0x2

    invoke-static {p2, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    if-nez p4, :cond_0

    .line 115
    invoke-direct {p0, p2, p3}, Lcom/solab/iso8583/parse/LlllbinParseInfo;->getFieldLength([BI)I

    move-result v0

    .line 116
    .local v0, "len":I
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget-boolean v5, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->forceHexadecimalLength:Z

    invoke-direct {v1, v2, v4, v0, v5}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;IZ)V

    return-object v1

    .line 117
    .end local v0    # "len":I
    :cond_0
    instance-of v5, p4, Lcom/solab/iso8583/CustomBinaryField;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 119
    :try_start_0
    move-object v5, p4

    check-cast v5, Lcom/solab/iso8583/CustomBinaryField;

    add-int/lit8 v7, p3, 0x2

    invoke-interface {v5, p2, v7, v3}, Lcom/solab/iso8583/CustomBinaryField;->decodeBinaryField([BII)Ljava/lang/Object;

    move-result-object v5

    .line 121
    .local v5, "dec":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_1

    new-instance v7, Lcom/solab/iso8583/IsoValue;

    iget-object v8, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v9, v4

    invoke-direct {v7, v8, v4, v9, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v7, Lcom/solab/iso8583/IsoValue;

    iget-object v6, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v7, v6, v5, v3, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v7

    .line 123
    .end local v5    # "dec":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    .line 124
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 124
    const-string v0, "Insufficient data for LLLLBIN field %d, pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 128
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    array-length v0, v4

    invoke-static {v4, v1, v0}, Lcom/solab/iso8583/util/HexCodec;->hexEncode([BII)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "dec":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_3

    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v1, v2, v4, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_1

    .line 130
    :cond_3
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LlllbinParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v1, v2, v0, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 129
    :goto_1
    return-object v1

    .line 108
    .end local v0    # "dec":Ljava/lang/Object;, "TT;"
    .end local v4    # "_v":[B
    :cond_4
    new-instance v5, Ljava/text/ParseException;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 110
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

    .line 108
    const-string v0, "Insufficient data for bin LLLLBIN field %d, pos %d requires %d, only %d available"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 104
    :cond_5
    new-instance v5, Ljava/text/ParseException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 104
    const-string v0, "Invalid LLLLBIN length %d field %d pos %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 99
    .end local v3    # "l":I
    :cond_6
    new-instance v2, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 99
    const-string v1, "Insufficient LLLLBIN header field %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 96
    :cond_7
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 96
    const-string v0, "Invalid bin LLLLBIN field %d pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
