.class public Lcom/solab/iso8583/parse/AmountParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "AmountParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    sget-object v0, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    const/16 v1, 0xc

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
            "Ljava/math/BigDecimal;",
            ">;"
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

    if-ltz p3, :cond_1

    .line 48
    add-int/lit8 v3, p3, 0xc

    array-length v4, p2

    const-string v5, "Insufficient data for AMOUNT field %d, pos %d"

    if-gt v3, v4, :cond_0

    .line 52
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/AmountParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xc

    invoke-direct {v3, p2, p3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 54
    .local v3, "c":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/solab/iso8583/IsoValue;

    iget-object v6, p0, Lcom/solab/iso8583/parse/AmountParseInfo;->type:Lcom/solab/iso8583/IsoType;

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 59
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 55
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v4

    .line 56
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/text/ParseException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    .line 56
    const-string v0, "Cannot read amount \'%s\' field %d pos %d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 49
    .end local v3    # "c":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 49
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 45
    :cond_1
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
    const-string v0, "Invalid AMOUNT field %d position %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 9
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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 68
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/16 v0, 0xd

    new-array v0, v0, [C

    .line 69
    .local v0, "digits":[C
    const/16 v1, 0x2e

    const/16 v2, 0xa

    aput-char v1, v0, v2

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "start":I
    move v3, p3

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, p3, 0x6

    if-ge v3, v4, :cond_1

    .line 72
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "start":I
    .local v4, "start":I
    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 73
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "start":I
    .restart local v1    # "start":I
    aget-byte v5, p2, v3

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v0, v4

    .line 74
    if-ne v1, v2, :cond_0

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 71
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Lcom/solab/iso8583/IsoValue;

    sget-object v6, Lcom/solab/iso8583/IsoType;->AMOUNT:Lcom/solab/iso8583/IsoType;

    new-instance v7, Ljava/math/BigDecimal;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 83
    :catch_0
    move-exception v5

    .line 84
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 84
    const-string v3, "Insufficient data for AMOUNT field %d, pos %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 80
    .end local v5    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v5

    .line 81
    .local v5, "ex":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/text/ParseException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    aput-object v8, v7, v3

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 81
    const-string v2, "Cannot read amount \'%s\' field %d pos %d"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method
