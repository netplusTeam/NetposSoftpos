.class public Lcom/solab/iso8583/parse/LlvarParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "LlvarParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLVAR:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 8
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

    .line 43
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p3, :cond_7

    .line 46
    add-int/lit8 v3, p3, 0x2

    array-length v4, p2

    if-gt v3, v4, :cond_6

    .line 50
    invoke-virtual {p0, p2, p3, v2}, Lcom/solab/iso8583/parse/LlvarParseInfo;->decodeLength([BII)I

    move-result v3

    .line 51
    .local v3, "len":I
    const/4 v4, 0x3

    if-ltz v3, :cond_5

    .line 54
    add-int v5, v3, p3

    add-int/2addr v5, v2

    array-length v6, p2

    if-gt v5, v6, :cond_4

    .line 61
    if-nez v3, :cond_0

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p3, 0x2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LlvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p2, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 66
    .local v0, "_v":Ljava/lang/String;
    :goto_0
    nop

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 72
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p3, 0x2

    array-length v6, p2

    sub-int/2addr v6, p3

    sub-int/2addr v6, v2

    .line 73
    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LlvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_1
    const/4 v1, 0x0

    if-nez p4, :cond_2

    .line 76
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    iget-object v4, p0, Lcom/solab/iso8583/parse/LlvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v2, v4, v0, v3, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v2

    .line 78
    :cond_2
    invoke-interface {p4, v0}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "dec":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_3

    new-instance v4, Lcom/solab/iso8583/IsoValue;

    iget-object v5, p0, Lcom/solab/iso8583/parse/LlvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v4, v5, v0, v3, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_1

    .line 80
    :cond_3
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    iget-object v1, p0, Lcom/solab/iso8583/parse/LlvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v4, v1, v2, v3, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    .line 79
    :goto_1
    return-object v4

    .line 62
    .end local v0    # "_v":Ljava/lang/String;
    .end local v2    # "dec":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    .line 63
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/text/ParseException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 63
    const-string v0, "Insufficient data for LLVAR header, field %d pos %d len %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 55
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    new-instance v5, Ljava/text/ParseException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 55
    const-string v0, "Insufficient data for LLVAR field %d, pos %d len %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 52
    :cond_5
    new-instance v5, Ljava/text/ParseException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 52
    const-string v0, "Invalid LLVAR length %d, field %d pos %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 47
    .end local v3    # "len":I
    :cond_6
    new-instance v2, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 47
    const-string v1, "Insufficient data for LLVAR header, pos %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 44
    :cond_7
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 44
    const-string v0, "Invalid LLVAR field %d %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 8
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

    .line 88
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p3, :cond_5

    .line 91
    add-int/lit8 v3, p3, 0x1

    array-length v4, p2

    if-gt v3, v4, :cond_4

    .line 96
    aget-byte v3, p2, p3

    invoke-static {v3}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v3

    .line 97
    .local v3, "len":I
    if-ltz v3, :cond_3

    .line 101
    add-int v4, v3, p3

    add-int/2addr v4, v2

    array-length v5, p2

    if-gt v4, v5, :cond_2

    .line 105
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 106
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LlvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p3, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LlvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p2, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v1, v2, v4, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 106
    return-object v1

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LlvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {p4, v1}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "dec":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    new-instance v2, Lcom/solab/iso8583/IsoValue;

    iget-object v4, p0, Lcom/solab/iso8583/parse/LlvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p3, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LlvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p2, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v2, v4, v5, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    iget-object v0, p0, Lcom/solab/iso8583/parse/LlvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v2, v0, v1, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 110
    :goto_0
    return-object v2

    .line 102
    .end local v1    # "dec":Ljava/lang/Object;, "TT;"
    :cond_2
    new-instance v4, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 102
    const-string v0, "Insufficient data for bin LLVAR field %d, pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 98
    :cond_3
    new-instance v4, Ljava/text/ParseException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 98
    const-string v0, "Invalid bin LLVAR length %d, field %d pos %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 92
    .end local v3    # "len":I
    :cond_4
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 92
    const-string v0, "Insufficient data for bin LLVAR header, field %d pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 89
    :cond_5
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 89
    const-string v0, "Invalid bin LLVAR field %d pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
