.class public Lorg/jpos/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field static dfDate:Ljava/text/SimpleDateFormat;

.field static dfDateTime:Ljava/text/SimpleDateFormat;

.field static dfDateTime_mmddyyyy:Ljava/text/SimpleDateFormat;

.field static dfDate_mmddyy:Ljava/text/SimpleDateFormat;

.field static dfDate_mmddyyyy:Ljava/text/SimpleDateFormat;

.field static dfDate_yyyymmdd:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    sput-object v0, Lorg/jpos/util/DateUtil;->dfDate:Ljava/text/SimpleDateFormat;

    .line 32
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    sput-object v0, Lorg/jpos/util/DateUtil;->dfDateTime:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jpos/util/DateUtil;->dfDate_mmddyyyy:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jpos/util/DateUtil;->dfDate_yyyymmdd:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jpos/util/DateUtil;->dfDateTime_mmddyyyy:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jpos/util/DateUtil;->dfDate_mmddyy:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateTimeToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dateTimeToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "tzString"    # Ljava/lang/String;

    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 107
    .local v0, "df":Ljava/text/DateFormat;
    if-eqz p1, :cond_1

    .line 108
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 109
    :cond_1
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dateTimeToString_mmddyyyy(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "tzString"    # Ljava/lang/String;

    .line 187
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 188
    .local v0, "df":Ljava/text/DateFormat;
    if-eqz p1, :cond_0

    .line 189
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 190
    :cond_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dateToString_mmddyyyy(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDate_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 19
    .param p0, "d"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 134
    .local v2, "cal":Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 135
    .local v3, "now":Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 137
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 138
    .local v5, "YY":I
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 139
    .local v8, "MM":I
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 140
    .local v10, "DD":I
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 141
    .local v6, "hh":I
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 142
    .local v11, "mm":I
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "ss":I
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    div-int/lit8 v12, v12, 0x64

    .line 145
    .local v12, "century":I
    mul-int/lit8 v13, v12, 0x64

    add-int/2addr v13, v5

    invoke-virtual {v2, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 146
    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 147
    const/4 v7, 0x5

    invoke-virtual {v2, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 149
    const/16 v7, 0xc

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    .line 150
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 155
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 156
    .local v7, "thisCentury":Ljava/util/Date;
    add-int/lit8 v12, v12, -0x1

    mul-int/lit8 v13, v12, 0x64

    add-int/2addr v13, v5

    invoke-virtual {v2, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 157
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 159
    .local v9, "previousCentury":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 160
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    .line 161
    move-object v7, v9

    .line 162
    :cond_0
    return-object v7
.end method

.method public static parseDateTime_mmddyyyy(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateTime_mmddyyyy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "tzString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 82
    .local v0, "df":Ljava/text/DateFormat;
    if-eqz p1, :cond_1

    .line 83
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 84
    :cond_1
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static parseDate_mmddyy(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDate_mmddyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate_mmddyyyy(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDate_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate_yyyymmdd(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDate_yyyymmdd:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "t"    # Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0}, Lorg/jpos/util/DateUtil;->parseTime(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseTime(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "now"    # Ljava/util/Date;

    .line 172
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 173
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 175
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, "hh":I
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, "mm":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "ss":I
    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 180
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 181
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 183
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    return-object v4
.end method

.method public static parseTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static postdate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDate_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static timeToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jpos/util/DateUtil;->timeToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static timeToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Ljava/util/Date;
    .param p1, "tzString"    # Ljava/lang/String;

    .line 193
    nop

    .line 194
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 195
    .local v0, "df":Ljava/text/DateFormat;
    if-eqz p1, :cond_0

    .line 196
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 197
    :cond_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static timestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    sget-object v0, Lorg/jpos/util/DateUtil;->dfDateTime_mmddyyyy:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDays(J)Ljava/lang/String;
    .locals 9
    .param p0, "period"    # J

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-wide/32 v1, 0x36ee80

    div-long v3, p0, v1

    .line 205
    .local v3, "hours":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 206
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 207
    const-string v7, "h"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    mul-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 210
    :cond_0
    const-wide/32 v1, 0xea60

    div-long v7, p0, v1

    .line 211
    .local v7, "mins":J
    cmp-long v5, v7, v5

    if-lez v5, :cond_1

    .line 212
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 213
    const-string v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    mul-long/2addr v1, v7

    sub-long/2addr p0, v1

    .line 216
    :cond_1
    const-wide/16 v1, 0x3e8

    div-long v1, p0, v1

    .line 217
    .local v1, "secs":J
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 218
    const-string v5, "s"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
