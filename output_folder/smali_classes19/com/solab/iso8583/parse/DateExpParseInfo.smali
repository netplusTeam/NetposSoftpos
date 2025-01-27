.class public Lcom/solab/iso8583/parse/DateExpParseInfo;
.super Lcom/solab/iso8583/parse/DateTimeParseInfo;
.source "DateExpParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE_EXP:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/DateTimeParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 39
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

    .line 45
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p3, :cond_2

    .line 49
    add-int/lit8 v3, p3, 0x4

    array-length v4, p2

    if-gt v3, v4, :cond_1

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 54
    .local v3, "cal":Ljava/util/Calendar;
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 55
    const/16 v5, 0xc

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 56
    const/16 v5, 0xd

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-boolean v5, p0, Lcom/solab/iso8583/parse/DateExpParseInfo;->forceStringDecoding:Z

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    rem-int/lit8 v6, v6, 0x64

    sub-int/2addr v5, v6

    new-instance v6, Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/solab/iso8583/parse/DateExpParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, p3, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    .line 60
    invoke-virtual {v3, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 62
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p3, 0x2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/DateExpParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p2, v6, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    rem-int/lit8 v6, v6, 0x64

    sub-int/2addr v5, v6

    aget-byte v6, p2, p3

    add-int/lit8 v6, v6, -0x30

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v3, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 66
    add-int/lit8 v2, p3, 0x2

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v4

    add-int/lit8 v4, p3, 0x3

    aget-byte v4, p2, v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x31

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 68
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/solab/iso8583/parse/DateExpParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 50
    .end local v3    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 50
    const-string v0, "Insufficient data for DATE_EXP field %d pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 46
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 46
    const-string v0, "Invalid DATE_EXP field %d position %d"

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
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 75
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p3, :cond_2

    .line 79
    add-int/lit8 v3, p3, 0x2

    array-length v4, p2

    if-gt v3, v4, :cond_1

    .line 83
    new-array v3, v0, [I

    .line 84
    .local v3, "tens":[I
    const/4 v4, 0x0

    .line 85
    .local v4, "start":I
    move v5, p3

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    add-int/2addr v6, p3

    if-ge v5, v6, :cond_0

    .line 86
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "start":I
    .local v6, "start":I
    aget-byte v7, p2, v5

    invoke-static {v7}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v7

    aput v7, v3, v4

    .line 85
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    .line 88
    .end local v5    # "i":I
    .end local v6    # "start":I
    .restart local v4    # "start":I
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 89
    .local v5, "cal":Ljava/util/Calendar;
    const/16 v6, 0xa

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 90
    const/16 v6, 0xc

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/16 v6, 0xd

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/4 v6, 0x5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 94
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 95
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rem-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    aget v7, v3, v1

    add-int/2addr v6, v7

    .line 94
    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 96
    aget v6, v3, v2

    sub-int/2addr v6, v2

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {p0, v5, v1}, Lcom/solab/iso8583/parse/DateExpParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 80
    .end local v3    # "tens":[I
    .end local v4    # "start":I
    .end local v5    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 80
    const-string v1, "Insufficient data for DATE_EXP field %d pos %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 76
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 76
    const-string v1, "Invalid DATE_EXP field %d position %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
