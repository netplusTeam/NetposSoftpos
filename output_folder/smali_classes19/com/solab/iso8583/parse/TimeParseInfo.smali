.class public Lcom/solab/iso8583/parse/TimeParseInfo;
.super Lcom/solab/iso8583/parse/DateTimeParseInfo;
.source "TimeParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    sget-object v0, Lcom/solab/iso8583/IsoType;->TIME:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/DateTimeParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
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
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 46
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p3, :cond_2

    .line 49
    add-int/lit8 v3, p3, 0x6

    array-length v4, p2

    if-gt v3, v4, :cond_1

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "cal":Ljava/util/Calendar;
    iget-boolean v3, p0, Lcom/solab/iso8583/parse/TimeParseInfo;->forceStringDecoding:Z

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    if-eqz v3, :cond_0

    .line 55
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/TimeParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, p2, p3, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 56
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v6, p3, 0x2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/TimeParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, p2, v6, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 57
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v5, p3, 0x4

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/TimeParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p2, v5, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 59
    :cond_0
    aget-byte v2, p2, p3

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v7

    add-int/lit8 v3, p3, 0x1

    aget-byte v3, p2, v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 60
    add-int/lit8 v2, p3, 0x2

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v7

    add-int/lit8 v3, p3, 0x3

    aget-byte v3, p2, v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 61
    add-int/lit8 v2, p3, 0x4

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v7

    add-int/lit8 v3, p3, 0x5

    aget-byte v3, p2, v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 63
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/solab/iso8583/parse/TimeParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v1

    return-object v1

    .line 50
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 50
    const-string v0, "Insufficient data for TIME field %d, pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 47
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 47
    const-string v0, "Invalid TIME field %d pos %d"

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
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 70
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p3, :cond_3

    .line 73
    add-int/lit8 v3, p3, 0x3

    array-length v4, p2

    if-gt v3, v4, :cond_2

    .line 77
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 78
    .local v3, "tens":[I
    const/4 v4, 0x0

    .line 79
    .local v4, "start":I
    move v5, p3

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, p3, 0x3

    if-ge v5, v6, :cond_0

    .line 80
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "start":I
    .local v6, "start":I
    aget-byte v7, p2, v5

    invoke-static {v7}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v7

    aput v7, v3, v4

    .line 79
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    .line 82
    .end local v5    # "i":I
    .end local v6    # "start":I
    .restart local v4    # "start":I
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 83
    .local v5, "cal":Ljava/util/Calendar;
    const/16 v6, 0xb

    aget v0, v3, v0

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 84
    const/16 v0, 0xc

    aget v2, v3, v2

    invoke-virtual {v5, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    const/16 v0, 0xd

    aget v1, v3, v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 86
    iget-object v0, p0, Lcom/solab/iso8583/parse/TimeParseInfo;->tz:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/solab/iso8583/parse/TimeParseInfo;->tz:Ljava/util/TimeZone;

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 89
    :cond_1
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    iget-object v1, p0, Lcom/solab/iso8583/parse/TimeParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    return-object v0

    .line 74
    .end local v3    # "tens":[I
    .end local v4    # "start":I
    .end local v5    # "cal":Ljava/util/Calendar;
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 74
    const-string v0, "Insufficient data for bin TIME field %d, pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 71
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 71
    const-string v0, "Invalid bin TIME field %d pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
