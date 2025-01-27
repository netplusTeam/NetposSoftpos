.class public Lcom/solab/iso8583/parse/BinaryParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "BinaryParseInfo.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .line 37
    sget-object v0, Lcom/solab/iso8583/IsoType;->BINARY:Lcom/solab/iso8583/IsoType;

    invoke-direct {p0, v0, p1}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 6
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

    .line 44
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p3, :cond_3

    .line 48
    iget v3, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    mul-int/2addr v3, v2

    add-int/2addr v3, p3

    array-length v4, p2

    if-gt v3, v4, :cond_2

    .line 53
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    mul-int/2addr v1, v2

    invoke-direct {v0, p2, p3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lcom/solab/iso8583/util/HexCodec;->hexDecode(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    .local v0, "binval":[B
    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 55
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    iget-object v3, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v4, v0

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v2

    .line 57
    :cond_0
    new-instance v3, Ljava/lang/String;

    iget v4, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    mul-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/BinaryParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p2, p3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {p4, v3}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "dec":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    new-instance v3, Lcom/solab/iso8583/IsoValue;

    iget-object v4, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->type:Lcom/solab/iso8583/IsoType;

    array-length v5, v0

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    iget-object v1, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v4, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    invoke-direct {v3, v1, v2, v4, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    .line 58
    :goto_0
    return-object v3

    .line 49
    .end local v0    # "binval":[B
    .end local v2    # "dec":Ljava/lang/Object;, "TT;"
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v1, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 49
    const-string v0, "Insufficient data for BINARY field %d of length %d, pos %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 45
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 45
    const-string v0, "Invalid BINARY field %d position %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 6
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

    .line 66
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz p3, :cond_3

    .line 70
    iget v3, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    add-int/2addr v3, p3

    array-length v4, p2

    if-gt v3, v4, :cond_2

    .line 75
    iget v0, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    new-array v0, v0, [B

    .line 76
    .local v0, "_v":[B
    iget v1, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    invoke-static {p2, p3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 78
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    iget-object v3, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v4, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v2

    .line 80
    :cond_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/solab/iso8583/util/HexCodec;->hexEncode([BII)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "dec":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    new-instance v3, Lcom/solab/iso8583/IsoValue;

    iget-object v4, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v5, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    iget-object v1, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->type:Lcom/solab/iso8583/IsoType;

    iget v4, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    invoke-direct {v3, v1, v2, v4, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    .line 81
    :goto_0
    return-object v3

    .line 71
    .end local v0    # "_v":[B
    .end local v2    # "dec":Ljava/lang/Object;, "TT;"
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/solab/iso8583/parse/BinaryParseInfo;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 71
    const-string v0, "Insufficient data for BINARY field %d of length %d, pos %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 67
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 67
    const-string v0, "Invalid BINARY field %d position %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
