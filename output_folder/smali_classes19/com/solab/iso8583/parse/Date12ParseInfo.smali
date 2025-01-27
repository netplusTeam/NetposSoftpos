.class public Lcom/solab/iso8583/parse/Date12ParseInfo;
.super Lcom/solab/iso8583/parse/DateTimeParseInfo;
.source "Date12ParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    sget-object v0, Lcom/solab/iso8583/IsoType;->DATE12:Lcom/solab/iso8583/IsoType;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/DateTimeParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public parse(I[BILcom/solab/iso8583/CustomField;)Lcom/solab/iso8583/IsoValue;
    .locals 16
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
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ltz v2, :cond_3

    .line 51
    add-int/lit8 v6, v2, 0xc

    array-length v7, v1

    if-gt v6, v7, :cond_2

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 60
    .local v6, "cal":Ljava/util/Calendar;
    iget-boolean v7, v0, Lcom/solab/iso8583/parse/Date12ParseInfo;->forceStringDecoding:Z

    const/16 v8, 0xd

    const/16 v9, 0xb

    const/4 v10, 0x5

    const/16 v11, 0xc

    const/16 v12, 0xa

    if-eqz v7, :cond_0

    .line 61
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/Date12ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v1, v2, v5, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 62
    .local v7, "year":I
    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/Date12ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v1, v2, v5, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v13, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v6, v5, v13}, Ljava/util/Calendar;->set(II)V

    .line 63
    new-instance v13, Ljava/lang/String;

    add-int/lit8 v14, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/Date12ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v1, v14, v5, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v13, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v6, v10, v13}, Ljava/util/Calendar;->set(II)V

    .line 64
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v13, v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/Date12ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v1, v13, v5, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v10, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 65
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v2, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/Date12ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v1, v10, v5, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v9, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 66
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v2, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/solab/iso8583/parse/Date12ParseInfo;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v1, v10, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v9, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v8, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 68
    .end local v7    # "year":I
    :cond_0
    aget-byte v7, v1, v2

    add-int/lit8 v7, v7, -0x30

    mul-int/2addr v7, v12

    add-int/lit8 v13, v2, 0x1

    aget-byte v13, v1, v13

    add-int/2addr v7, v13

    add-int/lit8 v7, v7, -0x30

    .line 69
    .restart local v7    # "year":I
    add-int/lit8 v13, v2, 0x2

    aget-byte v13, v1, v13

    add-int/lit8 v13, v13, -0x30

    mul-int/2addr v13, v12

    add-int/lit8 v14, v2, 0x3

    aget-byte v14, v1, v14

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x31

    invoke-virtual {v6, v5, v13}, Ljava/util/Calendar;->set(II)V

    .line 70
    add-int/lit8 v5, v2, 0x4

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v13, v2, 0x5

    aget-byte v13, v1, v13

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 71
    add-int/lit8 v5, v2, 0x6

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v10, v2, 0x7

    aget-byte v10, v1, v10

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 72
    add-int/lit8 v5, v2, 0x8

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v9, v2, 0x9

    aget-byte v9, v1, v9

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v11, v5}, Ljava/util/Calendar;->set(II)V

    .line 73
    add-int/lit8 v5, v2, 0xa

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x30

    mul-int/2addr v5, v12

    add-int/lit8 v9, v2, 0xb

    aget-byte v9, v1, v9

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, -0x30

    invoke-virtual {v6, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 75
    :goto_0
    const/16 v5, 0x32

    if-le v7, v5, :cond_1

    .line 76
    add-int/lit16 v5, v7, 0x76c

    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 78
    :cond_1
    add-int/lit16 v5, v7, 0x7d0

    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 80
    :goto_1
    const/16 v5, 0xe

    invoke-virtual {v6, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 81
    invoke-virtual {v0, v6, v4}, Lcom/solab/iso8583/parse/Date12ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v3

    return-object v3

    .line 52
    .end local v6    # "cal":Ljava/util/Calendar;
    .end local v7    # "year":I
    :cond_2
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
    const-string v3, "Insufficient data for DATE12 field %d, pos %d"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 48
    :cond_3
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
    const-string v3, "Invalid DATE12 field %d position %d"

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

    .line 88
    .local p4, "custom":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<TT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p3, :cond_3

    .line 92
    add-int/lit8 v3, p3, 0x6

    array-length v4, p2

    if-gt v3, v4, :cond_2

    .line 96
    const/4 v3, 0x6

    new-array v3, v3, [I

    .line 97
    .local v3, "tens":[I
    const/4 v4, 0x0

    .line 98
    .local v4, "start":I
    move v5, p3

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    add-int/2addr v6, p3

    if-ge v5, v6, :cond_0

    .line 99
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "start":I
    .local v6, "start":I
    aget-byte v7, p2, v5

    invoke-static {v7}, Lcom/solab/iso8583/util/Bcd;->parseBcdLength(B)I

    move-result v7

    aput v7, v3, v4

    .line 98
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    .line 101
    .end local v5    # "i":I
    .end local v6    # "start":I
    .restart local v4    # "start":I
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 105
    .local v5, "cal":Ljava/util/Calendar;
    aget v6, v3, v1

    const/16 v7, 0x32

    if-le v6, v7, :cond_1

    .line 106
    aget v6, v3, v1

    add-int/lit16 v6, v6, 0x76c

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 108
    :cond_1
    aget v6, v3, v1

    add-int/lit16 v6, v6, 0x7d0

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 110
    :goto_1
    aget v6, v3, v2

    sub-int/2addr v6, v2

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 111
    aget v0, v3, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/16 v0, 0xb

    const/4 v7, 0x3

    aget v7, v3, v7

    invoke-virtual {v5, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v0, 0xc

    const/4 v7, 0x4

    aget v7, v3, v7

    invoke-virtual {v5, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/16 v0, 0xd

    aget v6, v3, v6

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v0, 0xe

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {p0, v5, v2}, Lcom/solab/iso8583/parse/Date12ParseInfo;->createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v0

    return-object v0

    .line 93
    .end local v3    # "tens":[I
    .end local v4    # "start":I
    .end local v5    # "cal":Ljava/util/Calendar;
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 93
    const-string v1, "Insufficient data for DATE12 field %d, pos %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 89
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 89
    const-string v1, "Invalid DATE12 field %d position %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
