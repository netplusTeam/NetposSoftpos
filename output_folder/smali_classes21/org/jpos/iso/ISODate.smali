.class public Lorg/jpos/iso/ISODate;
.super Ljava/lang/Object;
.source "ISODate.java"


# static fields
.field public static final ONE_YEAR:J = 0x757b12c00L


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 64
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 65
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 66
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getANSIDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 268
    const-string v0, "yyMMdd"

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getANSIDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 277
    const-string v0, "yyMMdd"

    invoke-static {p0, v0, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 253
    const-string v0, "MMdd"

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 262
    const-string v0, "MMdd"

    invoke-static {p0, v0, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 223
    const-string v0, "MMddHHmmss"

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTime(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 232
    const-string v0, "MMddHHmmss"

    invoke-static {p0, v0, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEuropeanDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 280
    const-string v0, "ddMMyy"

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEuropeanDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 283
    const-string v0, "ddMMyy"

    invoke-static {p0, v0, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpirationDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 289
    const-string v0, "yyMM"

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpirationDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 298
    const-string v0, "yyMM"

    invoke-static {p0, v0, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # Ljava/util/Date;

    .line 307
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "DDD"

    invoke-static {p0, v1, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "day":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    const-string v2, "yy"

    invoke-static {p0, v2, v1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "year":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getJulianDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 321
    const-string v0, "DDD"

    invoke-static {p0, v0, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "day":Ljava/lang/String;
    const-string v1, "yy"

    invoke-static {p0, v1, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "year":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 238
    const-string v0, "HHmmss"

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 247
    const-string v0, "HHmmss"

    invoke-static {p0, v0, p1}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->parse(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "d":Ljava/util/Date;
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 89
    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 91
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 93
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 95
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 96
    :goto_0
    return-object v0
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 105
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jpos/iso/ISODate;->parseDateTime(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateTime(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "dd/MM/yy hh:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 122
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 123
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 124
    :goto_1
    return-object v0
.end method

.method public static parseISODate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "d"    # Ljava/lang/String;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/jpos/iso/ISODate;->parseISODate(Ljava/lang/String;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseISODate(Ljava/lang/String;J)Ljava/util/Date;
    .locals 1
    .param p0, "d"    # Ljava/lang/String;
    .param p1, "currentTime"    # J

    .line 157
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jpos/iso/ISODate;->parseISODate(Ljava/lang/String;JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseISODate(Ljava/lang/String;JLjava/util/TimeZone;)Ljava/util/Date;
    .locals 22
    .param p0, "d"    # Ljava/lang/String;
    .param p1, "currentTime"    # J
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .line 169
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 170
    .local v1, "YY":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    const/16 v4, 0xe

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v2, v4, :cond_0

    .line 171
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local p0    # "d":Ljava/lang/String;
    .local v0, "d":Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v0    # "d":Ljava/lang/String;
    .restart local p0    # "d":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 175
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v1, v2, 0x7d0

    .line 176
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .end local p0    # "d":Ljava/lang/String;
    .restart local v0    # "d":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    .line 179
    .local v2, "MM":I
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 180
    .local v9, "DD":I
    const/4 v10, 0x6

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 181
    .local v5, "hh":I
    const/16 v11, 0x8

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 182
    .local v10, "mm":I
    const/16 v12, 0xa

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 184
    .local v11, "ss":I
    new-instance v12, Ljava/util/GregorianCalendar;

    invoke-direct {v12}, Ljava/util/GregorianCalendar;-><init>()V

    .line 185
    .local v12, "cal":Ljava/util/Calendar;
    move-object/from16 v13, p3

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 186
    new-instance v14, Ljava/util/Date;

    move-wide/from16 v3, p1

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 188
    .local v14, "now":Ljava/util/Date;
    invoke-virtual {v12, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 189
    invoke-virtual {v12, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/4 v15, 0x5

    invoke-virtual {v12, v15, v9}, Ljava/util/Calendar;->set(II)V

    .line 191
    const/16 v15, 0xb

    invoke-virtual {v12, v15, v5}, Ljava/util/Calendar;->set(II)V

    .line 192
    const/16 v15, 0xc

    invoke-virtual {v12, v15, v10}, Ljava/util/Calendar;->set(II)V

    .line 193
    const/16 v15, 0xd

    invoke-virtual {v12, v15, v11}, Ljava/util/Calendar;->set(II)V

    .line 194
    const/16 v15, 0xe

    invoke-virtual {v12, v15, v6}, Ljava/util/Calendar;->set(II)V

    .line 196
    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v12, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 198
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    return-object v6

    .line 201
    :cond_2
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 202
    .local v6, "thisYear":Ljava/util/Date;
    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v15

    sub-int/2addr v15, v8

    invoke-virtual {v12, v8, v15}, Ljava/util/Calendar;->set(II)V

    .line 203
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 204
    .local v15, "previousYear":Ljava/util/Date;
    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v7, v16, 0x2

    invoke-virtual {v12, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 205
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 206
    .local v7, "nextYear":Ljava/util/Date;
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 207
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-gez v8, :cond_3

    .line 209
    move-object v6, v15

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 211
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-lez v8, :cond_4

    .line 213
    move-object v6, v7

    .line 215
    :cond_4
    :goto_1
    return-object v6
.end method

.method public static parseISODate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 2
    .param p0, "d"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lorg/jpos/iso/ISODate;->parseISODate(Ljava/lang/String;JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
