.class public Lcom/solab/iso8583/parse/Date4ParseInfo;
.super Lcom/solab/iso8583/parse/DateTimeParseInfo;
.source "Date4ParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE4:Lcom/solab/iso8583/IsoType;

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

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

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 55
    const/16 v5, 0xc

    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 56
    const/16 v5, 0xd

    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/16 v5, 0xe

    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 59
    iget-boolean v1, p0, Lcom/solab/iso8583/parse/Date4ParseInfo;->forceStringDecoding:Z

    const/4 v5, 0x5

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date4ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p2, p3, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 61
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v6, p3, 0x2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date4ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p2, v6, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 63
    :cond_0
    aget-byte v1, p2, p3

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v4

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x31

    invoke-virtual {v3, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 64
    add-int/lit8 v1, p3, 0x2

    aget-byte v1, p2, v1

    add-int/lit8 v1, v1, -0x30

    mul-int/2addr v1, v4

    add-int/lit8 v2, p3, 0x3

    aget-byte v2, p2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 66
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/solab/iso8583/parse/Date4ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 50
    .end local v3    # "cal":Ljava/util/Calendar;
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
    const-string v0, "Insufficient data for DATE4 field %d, pos %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 46
    :cond_2
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
    const-string v0, "Invalid DATE4 field %d position %d"

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

    .line 72
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 73
    .local v1, "tens":[I
    const/4 v2, 0x0

    .line 74
    .local v2, "start":I
    array-length v3, p2

    sub-int/2addr v3, p3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v0, :cond_1

    .line 79
    move v3, p3

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    add-int/2addr v6, p3

    if-ge v3, v6, :cond_0

    .line 80
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "start":I
    .local v6, "start":I
    aget-byte v7, p2, v3

    invoke-static {v7}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v7

    aput v7, v1, v2

    .line 79
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_0

    .line 82
    .end local v3    # "i":I
    .end local v6    # "start":I
    .restart local v2    # "start":I
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 83
    .local v3, "cal":Ljava/util/Calendar;
    const/16 v6, 0xa

    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 84
    const/16 v6, 0xc

    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 85
    const/16 v6, 0xd

    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 87
    aget v6, v1, v5

    sub-int/2addr v6, v4

    invoke-virtual {v3, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 88
    const/4 v0, 0x5

    aget v6, v1, v4

    invoke-virtual {v3, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 89
    const/16 v0, 0xe

    invoke-virtual {v3, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 90
    invoke-virtual {p0, v3, v4}, Lcom/solab/iso8583/parse/Date4ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 75
    .end local v3    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 75
    const-string v4, "Insufficient data to parse binary DATE4 field %d pos %d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
