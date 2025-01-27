.class public Lcom/solab/iso8583/parse/LllvarParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "LllvarParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLLVAR:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 38
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

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz p3, :cond_7

    .line 46
    add-int/lit8 v3, p3, 0x3

    array-length v4, p2

    if-gt v3, v4, :cond_6

    .line 50
    const/4 v3, 0x3

    invoke-virtual {p0, p2, p3, v3}, Lcom/solab/iso8583/parse/LllvarParseInfo;->decodeLength([BII)I

    move-result v4

    .line 51
    .local v4, "len":I
    if-ltz v4, :cond_5

    .line 54
    add-int v5, v4, p3

    add-int/2addr v5, v3

    array-length v6, p2

    if-gt v5, v6, :cond_4

    .line 60
    if-nez v4, :cond_0

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p3, 0x3

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LllvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p2, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 64
    .local v0, "_v":Ljava/lang/String;
    :goto_0
    nop

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 69
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v5, p3, 0x3

    array-length v6, p2

    sub-int/2addr v6, p3

    sub-int/2addr v6, v3

    .line 70
    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LllvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, v5, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_1
    const/4 v1, 0x0

    if-nez p4, :cond_2

    .line 73
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    iget-object v3, p0, Lcom/solab/iso8583/parse/LllvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v2

    .line 75
    :cond_2
    invoke-interface {p4, v0}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    .local v2, "decoded":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_3

    new-instance v3, Lcom/solab/iso8583/IsoValue;

    iget-object v5, p0, Lcom/solab/iso8583/parse/LllvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v3, v5, v0, v4, v1}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_1

    .line 78
    :cond_3
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    iget-object v1, p0, Lcom/solab/iso8583/parse/LllvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-direct {v3, v1, v2, v4, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    .line 77
    :goto_1
    return-object v3

    .line 61
    .end local v0    # "_v":Ljava/lang/String;
    .end local v2    # "decoded":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    .line 62
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/text/ParseException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 62
    const-string v0, "Insufficient data for LLLVAR header, field %d pos %d len %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 55
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    new-instance v5, Ljava/text/ParseException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 55
    const-string v0, "Insufficient data for LLLVAR field %d, pos %d len %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 52
    :cond_5
    new-instance v5, Ljava/text/ParseException;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, p3, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v2, v6, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    .line 52
    const-string v0, "Invalid LLLVAR length %d(%s) field %d pos %d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 47
    .end local v4    # "len":I
    :cond_6
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 47
    const-string v0, "Insufficient data for LLLVAR header field %d pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 44
    :cond_7
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    const-string v0, "Invalid LLLVAR field %d pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 85
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ltz p3, :cond_5

    .line 87
    add-int/lit8 v3, p3, 0x2

    array-length v4, p2

    if-gt v3, v4, :cond_4

    .line 91
    aget-byte v3, p2, p3

    and-int/lit8 v3, v3, 0xf

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, p3, 0x1

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v4

    add-int/2addr v3, v4

    .line 92
    .local v3, "len":I
    if-ltz v3, :cond_3

    .line 95
    add-int v4, v3, p3

    add-int/2addr v4, v2

    array-length v5, p2

    if-gt v4, v5, :cond_2

    .line 99
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 100
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LllvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LllvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p2, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v1, v2, v4, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v1

    .line 102
    :cond_0
    new-instance v1, Lcom/solab/iso8583/IsoValue;

    iget-object v2, p0, Lcom/solab/iso8583/parse/LllvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p3, 0x2

    .line 103
    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LllvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p2, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 102
    invoke-interface {p4, v4}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v4, p4}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 104
    .local v1, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    invoke-virtual {v1}, Lcom/solab/iso8583/IsoValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 105
    new-instance v2, Lcom/solab/iso8583/IsoValue;

    iget-object v4, p0, Lcom/solab/iso8583/parse/LllvarParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p3, 0x2

    .line 106
    invoke-virtual {p0}, Lcom/solab/iso8583/parse/LllvarParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p2, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v2, v4, v5, v0}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 105
    return-object v2

    .line 108
    :cond_1
    return-object v1

    .line 96
    .end local v1    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<TT;>;"
    :cond_2
    new-instance v4, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 96
    const-string v0, "Insufficient data for bin LLLVAR field %d, pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 93
    :cond_3
    new-instance v4, Ljava/text/ParseException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    .line 93
    const-string v0, "Invalid bin LLLVAR length %d, field %d pos %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 88
    .end local v3    # "len":I
    :cond_4
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 88
    const-string v0, "Insufficient data for bin LLLVAR header, field %d pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 86
    :cond_5
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Invalid bin LLLVAR field %d pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
