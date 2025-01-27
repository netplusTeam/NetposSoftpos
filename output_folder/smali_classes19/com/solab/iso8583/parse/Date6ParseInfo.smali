.class public Lcom/solab/iso8583/parse/Date6ParseInfo;
.super Lcom/solab/iso8583/parse/DateTimeParseInfo;
.source "Date6ParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE6:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/DateTimeParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ltz p3, :cond_3

    .line 49
    add-int/lit8 v3, p3, 0x6

    array-length v4, p2

    if-gt v3, v4, :cond_2

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 54
    .local v3, "cal":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 55
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 56
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/16 v4, 0xe

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 60
    iget-boolean v4, p0, Lcom/solab/iso8583/parse/Date6ParseInfo;->forceStringDecoding:Z

    const/4 v5, 0x5

    const/16 v6, 0xa

    if-eqz v4, :cond_0

    .line 61
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date6ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p2, p3, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 62
    .local v4, "year":I
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, p3, 0x2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date6ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p2, v8, v2, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v3, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 63
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, p3, 0x4

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date6ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p2, v8, v2, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v5, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 65
    .end local v4    # "year":I
    :cond_0
    aget-byte v4, p2, p3

    add-int/lit8 v4, v4, -0x30

    mul-int/2addr v4, v6

    add-int/lit8 v7, p3, 0x1

    aget-byte v7, p2, v7

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, -0x30

    .line 66
    .restart local v4    # "year":I
    add-int/lit8 v7, p3, 0x2

    aget-byte v7, p2, v7

    add-int/lit8 v7, v7, -0x30

    mul-int/2addr v7, v6

    add-int/lit8 v8, p3, 0x3

    aget-byte v8, p2, v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x31

    invoke-virtual {v3, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 67
    add-int/lit8 v2, p3, 0x4

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x30

    mul-int/2addr v2, v6

    add-int/lit8 v6, p3, 0x5

    aget-byte v6, p2, v6

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x30

    invoke-virtual {v3, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 69
    :goto_0
    const/16 v2, 0x32

    if-le v4, v2, :cond_1

    .line 70
    add-int/lit16 v2, v4, 0x76c

    invoke-virtual {v3, v0, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 72
    :cond_1
    add-int/lit16 v2, v4, 0x7d0

    invoke-virtual {v3, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 74
    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/solab/iso8583/parse/Date6ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 50
    .end local v3    # "cal":Ljava/util/Calendar;
    .end local v4    # "year":I
    :cond_2
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
    const-string v0, "Insufficient data for DATE6 field %d, pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 46
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 46
    const-string v0, "Invalid DATE6 field %d position %d"

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
            Ljava/text/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 79
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p3, :cond_4

    .line 83
    add-int/lit8 v3, p3, 0x3

    array-length v4, p2

    if-gt v3, v4, :cond_3

    .line 87
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 88
    .local v3, "tens":[I
    const/4 v4, 0x0

    .line 89
    .local v4, "start":I
    move v5, p3

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    add-int/2addr v6, p3

    if-ge v5, v6, :cond_0

    .line 90
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "start":I
    .local v6, "start":I
    aget-byte v7, p2, v5

    invoke-static {v7}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v7

    aput v7, v3, v4

    .line 89
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    .line 92
    .end local v5    # "i":I
    .end local v6    # "start":I
    .restart local v4    # "start":I
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 96
    .local v5, "cal":Ljava/util/Calendar;
    aget v6, v3, v2

    const/16 v7, 0x32

    if-le v6, v7, :cond_1

    .line 97
    aget v6, v3, v2

    add-int/lit16 v6, v6, 0x76c

    invoke-virtual {v5, v1, v6}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 99
    :cond_1
    aget v6, v3, v2

    add-int/lit16 v6, v6, 0x7d0

    invoke-virtual {v5, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 101
    :goto_1
    aget v6, v3, v1

    sub-int/2addr v6, v1

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/4 v6, 0x5

    aget v0, v3, v0

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v0, 0xb

    invoke-virtual {v5, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v0, 0xc

    invoke-virtual {v5, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v0, 0xd

    invoke-virtual {v5, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v0, 0xe

    invoke-virtual {v5, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 107
    iget-object v0, p0, Lcom/solab/iso8583/parse/Date6ParseInfo;->tz:Ljava/util/TimeZone;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/solab/iso8583/parse/Date6ParseInfo;->tz:Ljava/util/TimeZone;

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 110
    :cond_2
    invoke-virtual {p0, v5, v1}, Lcom/solab/iso8583/parse/Date6ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 84
    .end local v3    # "tens":[I
    .end local v4    # "start":I
    .end local v5    # "cal":Ljava/util/Calendar;
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 84
    const-string v1, "Insufficient data for DATE6 field %d, pos %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 80
    :cond_4
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    const-string v1, "Invalid DATE6 field %d position %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
