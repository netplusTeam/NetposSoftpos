.class public Lcom/solab/iso8583/parse/NumericParseInfo;
.super Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;
.source "NumericParseInfo.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .line 36
    sget-object v0, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    invoke-direct {p0, v0, p1}, Lcom/solab/iso8583/parse/AlphaNumericFieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public parseBinary(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 43
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p3, :cond_2

    .line 46
    iget v3, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    div-int/2addr v3, v2

    add-int/2addr v3, p3

    array-length v4, p2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const-string v7, "Insufficient data for bin %s field %d of length %d, pos %d"

    if-gt v3, v4, :cond_1

    .line 52
    iget v3, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    const/16 v4, 0x13

    const/4 v8, 0x0

    if-ge v3, v4, :cond_0

    .line 53
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    sget-object v1, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    iget v2, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    invoke-static {p2, p3, v2}, Lcom/solab/iso8583/util/Bcd;->decodeToLong([BII)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v0

    .line 58
    :cond_0
    :try_start_0
    new-instance v3, Lcom/solab/iso8583/IsoValue;

    sget-object v4, Lcom/solab/iso8583/IsoType;->NUMERIC:Lcom/solab/iso8583/IsoType;

    iget v9, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    .line 59
    invoke-static {p2, p3, v9}, Lcom/solab/iso8583/util/Bcd;->decodeToBigInteger([BII)Ljava/math/BigInteger;

    move-result-object v9

    iget v10, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    invoke-direct {v3, v4, v9, v10, v8}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object v3

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/text/ParseException;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->type:Lcom/solab/iso8583/IsoType;

    aput-object v8, v6, v1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    iget v0, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    .line 61
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 47
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->type:Lcom/solab/iso8583/IsoType;

    aput-object v6, v4, v1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    iget v0, p0, Lcom/solab/iso8583/parse/NumericParseInfo;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 47
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 44
    :cond_2
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
    const-string v0, "Invalid bin NUMERIC field %d pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
