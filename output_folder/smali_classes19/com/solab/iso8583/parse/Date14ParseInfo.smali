.class public Lcom/solab/iso8583/parse/Date14ParseInfo;
.super Lcom/solab/iso8583/parse/DateTimeParseInfo;
.source "Date14ParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE14:Lcom/solab/iso8583/IsoType;

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/DateTimeParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 15
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

    .line 47
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ltz v2, :cond_2

    .line 51
    add-int/lit8 v6, v2, 0xe

    array-length v7, v1

    if-gt v6, v7, :cond_1

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 59
    .local v6, "cal":Ljava/util/Calendar;
    iget-boolean v7, v0, Lcom/solab/iso8583/parse/Date14ParseInfo;->forceStringDecoding:Z

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/4 v11, 0x5

    const/16 v12, 0xa

    if-eqz v7, :cond_0

    .line 60
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date14ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-direct {v7, v1, v2, v14, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 61
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date14ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v1, v2, v5, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 62
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v13, v2, 0x2

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date14ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v1, v13, v5, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 63
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v11, v2, 0x4

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date14ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v1, v11, v5, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 64
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v10, v2, 0x6

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date14ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v1, v10, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 65
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v9, v2, 0x8

    invoke-virtual {p0}, Lcom/solab/iso8583/parse/Date14ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v1, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v8, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 67
    :cond_0
    aget-byte v7, v1, v2

    add-int/lit8 v7, v7, -0x30

    mul-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v13, v2, 0x1

    aget-byte v13, v1, v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/2addr v7, v13

    add-int/lit8 v13, v2, 0x2

    aget-byte v13, v1, v13

    add-int/lit8 v13, v13, -0x30

    mul-int/2addr v13, v12

    add-int/2addr v7, v13

    add-int/lit8 v13, v2, 0x3

    aget-byte v13, v1, v13

    add-int/2addr v7, v13

    add-int/lit8 v7, v7, -0x30

    invoke-virtual {v6, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 68
    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v1, v7

    add-int/lit8 v7, v7, -0x30

    mul-int/2addr v7, v12

    add-int/lit8 v13, v2, 0x5

    aget-byte v13, v1, v13

    add-int/2addr v7, v13

    add-int/lit8 v7, v7, -0x31

    invoke-virtual {v6, v5, v7}, Ljava/util/Calendar;->set(II)V

    .line 69
    add-int/lit8 v5, v2, 0x6

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v7, v2, 0x7

    aget-byte v7, v1, v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v11, v5}, Ljava/util/Calendar;->set(II)V

    .line 70
    add-int/lit8 v5, v2, 0x8

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v7, v2, 0x9

    aget-byte v7, v1, v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 71
    add-int/lit8 v5, v2, 0xa

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v7, v2, 0xb

    aget-byte v7, v1, v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 72
    add-int/lit8 v5, v2, 0xc

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v7, v2, 0xd

    aget-byte v7, v1, v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 74
    :goto_0
    const/16 v5, 0xe

    invoke-virtual {v6, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 75
    invoke-virtual {p0, v6, v4}, Lcom/solab/iso8583/parse/Date14ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v3

    return-object v3

    .line 52
    .end local v6    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v6, Ljava/text/ParseException;

    new-array v5, v5, [Ljava/lang/Object;

    .line 53
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    .line 52
    const-string v3, "Insufficient data for DATE14 field %d, pos %d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 48
    :cond_2
    new-instance v6, Ljava/text/ParseException;

    new-array v5, v5, [Ljava/lang/Object;

    .line 49
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    .line 48
    const-string v3, "Invalid DATE14 field %d position %d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6
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

    .line 82
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p3, :cond_2

    .line 86
    add-int/lit8 v3, p3, 0x7

    array-length v4, p2

    if-gt v3, v4, :cond_1

    .line 90
    const/4 v3, 0x7

    new-array v3, v3, [I

    .line 91
    .local v3, "tens":[I
    const/4 v4, 0x0

    .line 92
    .local v4, "start":I
    move v5, p3

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    add-int/2addr v6, p3

    if-ge v5, v6, :cond_0

    .line 93
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "start":I
    .local v6, "start":I
    aget-byte v7, p2, v5

    invoke-static {v7}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v7

    aput v7, v3, v4

    .line 92
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    .line 95
    .end local v5    # "i":I
    .end local v6    # "start":I
    .restart local v4    # "start":I
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 99
    .local v5, "cal":Ljava/util/Calendar;
    aget v6, v3, v0

    mul-int/lit8 v6, v6, 0x64

    aget v7, v3, v2

    add-int/2addr v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 100
    aget v6, v3, v1

    sub-int/2addr v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/4 v1, 0x3

    aget v1, v3, v1

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v1, 0xb

    const/4 v7, 0x4

    aget v7, v3, v7

    invoke-virtual {v5, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v1, 0xc

    aget v6, v3, v6

    invoke-virtual {v5, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v1, 0xd

    const/4 v6, 0x6

    aget v6, v3, v6

    invoke-virtual {v5, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v1, 0xe

    invoke-virtual {v5, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-virtual {p0, v5, v2}, Lcom/solab/iso8583/parse/Date14ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 87
    .end local v3    # "tens":[I
    .end local v4    # "start":I
    .end local v5    # "cal":Ljava/util/Calendar;
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 87
    const-string v0, "Insufficient data for DATE14 field %d, pos %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 83
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 83
    const-string v0, "Invalid DATE14 field %d position %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
