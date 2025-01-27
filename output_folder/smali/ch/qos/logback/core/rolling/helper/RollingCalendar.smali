.class public Lch/qos/logback/core/rolling/helper/RollingCalendar;
.super Ljava/util/GregorianCalendar;
.source "RollingCalendar.java"


# static fields
.field static final GMT_TIMEZONE:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = -0x52665f1df0505bb1L


# instance fields
.field datePattern:Ljava/lang/String;

.field periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->GMT_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "datePattern"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 46
    sget-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    iput-object v0, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    .line 51
    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->datePattern:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->computePeriodicityType()Lch/qos/logback/core/rolling/helper/PeriodicityType;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 56
    invoke-direct {p0, p2, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 46
    sget-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    iput-object v0, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    .line 57
    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->datePattern:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->computePeriodicityType()Lch/qos/logback/core/rolling/helper/PeriodicityType;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    .line 59
    return-void
.end method

.method private collision(J)Z
    .locals 6
    .param p1, "delta"    # J

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->datePattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    sget-object v1, Lch/qos/logback/core/rolling/helper/RollingCalendar;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 134
    .local v1, "epoch0":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "r0":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 136
    .local v3, "epoch12":Ljava/util/Date;
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "r12":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static diffInMonths(JJ)I
    .locals 5
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 212
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    .local v0, "startCal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 217
    .local v1, "endCal":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v3, v2

    .line 219
    .local v3, "yearDiff":I
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v4, v2

    .line 220
    .local v4, "monthDiff":I
    mul-int/lit8 v2, v3, 0xc

    add-int/2addr v2, v4

    return v2

    .line 213
    .end local v0    # "startCal":Ljava/util/Calendar;
    .end local v1    # "endCal":Ljava/util/Calendar;
    .end local v3    # "yearDiff":I
    .end local v4    # "monthDiff":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime cannot be larger than endTime"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static innerGetEndOfNextNthPeriod(Ljava/util/Calendar;Lch/qos/logback/core/rolling/helper/PeriodicityType;Ljava/util/Date;I)Ljava/util/Date;
    .locals 7
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "periodicityType"    # Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .param p2, "now"    # Ljava/util/Date;
    .param p3, "numPeriods"    # I

    .line 228
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    sget-object v0, Lch/qos/logback/core/rolling/helper/RollingCalendar$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$PeriodicityType:[I

    invoke-virtual {p1}, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xb

    const/16 v3, 0xc

    const/16 v4, 0xd

    const/16 v5, 0xe

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 279
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown periodicity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 271
    invoke-virtual {p0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 272
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 273
    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 274
    invoke-virtual {p0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 275
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->add(II)V

    .line 276
    goto :goto_0

    .line 240
    :pswitch_2
    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 241
    invoke-virtual {p0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 242
    invoke-virtual {p0, v3, p3}, Ljava/util/Calendar;->add(II)V

    .line 243
    goto :goto_0

    .line 235
    :pswitch_3
    invoke-virtual {p0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 236
    invoke-virtual {p0, v4, p3}, Ljava/util/Calendar;->add(II)V

    .line 237
    goto :goto_0

    .line 231
    :pswitch_4
    invoke-virtual {p0, v5, p3}, Ljava/util/Calendar;->add(II)V

    .line 232
    goto :goto_0

    .line 261
    :pswitch_5
    const/4 v0, 0x7

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 262
    invoke-virtual {p0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 263
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 264
    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 265
    invoke-virtual {p0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 266
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->add(II)V

    .line 267
    goto :goto_0

    .line 253
    :pswitch_6
    invoke-virtual {p0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 255
    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 256
    invoke-virtual {p0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 257
    invoke-virtual {p0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 258
    goto :goto_0

    .line 246
    :pswitch_7
    invoke-virtual {p0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 247
    invoke-virtual {p0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 248
    invoke-virtual {p0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 249
    invoke-virtual {p0, v2, p3}, Ljava/util/Calendar;->add(II)V

    .line 250
    nop

    .line 282
    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static innerGetEndOfThisPeriod(Ljava/util/Calendar;Lch/qos/logback/core/rolling/helper/PeriodicityType;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "periodicityType"    # Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .param p2, "now"    # Ljava/util/Date;

    .line 224
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->innerGetEndOfNextNthPeriod(Ljava/util/Calendar;Lch/qos/logback/core/rolling/helper/PeriodicityType;Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public computePeriodicityType()Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .locals 11

    .line 75
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lch/qos/logback/core/rolling/helper/RollingCalendar;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 78
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 80
    .local v1, "epoch":Ljava/util/Date;
    iget-object v2, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->datePattern:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 81
    sget-object v2, Lch/qos/logback/core/rolling/helper/PeriodicityType;->VALID_ORDERED_LIST:[Lch/qos/logback/core/rolling/helper/PeriodicityType;

    .local v2, "arr$":[Lch/qos/logback/core/rolling/helper/PeriodicityType;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 82
    .local v5, "i":Lch/qos/logback/core/rolling/helper/PeriodicityType;
    new-instance v6, Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->datePattern:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 83
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    sget-object v7, Lch/qos/logback/core/rolling/helper/RollingCalendar;->GMT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "r0":Ljava/lang/String;
    invoke-static {v0, v5, v1}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->innerGetEndOfThisPeriod(Ljava/util/Calendar;Lch/qos/logback/core/rolling/helper/PeriodicityType;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    .line 88
    .local v8, "next":Ljava/util/Date;
    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "r1":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 92
    return-object v5

    .line 81
    .end local v5    # "i":Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v7    # "r0":Ljava/lang/String;
    .end local v8    # "next":Ljava/util/Date;
    .end local v9    # "r1":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "arr$":[Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    sget-object v2, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-object v2
.end method

.method public getEndOfNextNthPeriod(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1
    .param p1, "now"    # Ljava/util/Date;
    .param p2, "periods"    # I

    .line 286
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-static {p0, v0, p1, p2}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->innerGetEndOfNextNthPeriod(Ljava/util/Calendar;Lch/qos/logback/core/rolling/helper/PeriodicityType;Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNextTriggeringDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "now"    # Ljava/util/Date;

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getEndOfNextNthPeriod(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodicityType()Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .locals 1

    .line 62
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-object v0
.end method

.method public getStartOfCurrentPeriodWithGMTOffsetCorrection(JLjava/util/TimeZone;)J
    .locals 6
    .param p1, "now"    # J
    .param p3, "timezone"    # Ljava/util/TimeZone;

    .line 299
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 300
    .local v0, "aCal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 301
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getEndOfNextNthPeriod(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 303
    .local v0, "toppedDate":Ljava/util/Date;
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 304
    .local v1, "secondCalendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 305
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 306
    .local v2, "gmtOffset":J
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    return-wide v4
.end method

.method public isCollisionFree()Z
    .locals 5

    .line 101
    sget-object v0, Lch/qos/logback/core/rolling/helper/RollingCalendar$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$PeriodicityType:[I

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 126
    return v1

    .line 119
    :pswitch_0
    const-wide v3, 0xaf183800L

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->collision(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return v2

    .line 122
    :cond_0
    const-wide v3, 0x75cd78800L

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->collision(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    return v2

    .line 124
    :cond_1
    return v1

    .line 108
    :pswitch_1
    const-wide/32 v3, 0x240c8400

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->collision(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    return v2

    .line 111
    :cond_2
    const-wide v3, 0x9fa52400L

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->collision(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    return v2

    .line 114
    :cond_3
    const-wide v3, 0x757b12c00L

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->collision(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    return v2

    .line 116
    :cond_4
    return v1

    .line 104
    :pswitch_2
    const-wide/32 v2, 0x2932e00

    invoke-direct {p0, v2, v3}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->collision(J)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public periodBarriersCrossed(JJ)J
    .locals 10
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 181
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getStartOfCurrentPeriodWithGMTOffsetCorrection(JLjava/util/TimeZone;)J

    move-result-wide v0

    .line 185
    .local v0, "startFloored":J
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0, p3, p4, v2}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->getStartOfCurrentPeriodWithGMTOffsetCorrection(JLjava/util/TimeZone;)J

    move-result-wide v2

    .line 187
    .local v2, "endFloored":J
    sub-long v4, v2, v0

    .line 189
    .local v4, "diff":J
    sget-object v6, Lch/qos/logback/core/rolling/helper/RollingCalendar$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$PeriodicityType:[I

    iget-object v7, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-virtual {v7}, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 207
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unknown periodicity type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 205
    :pswitch_1
    invoke-static {p1, p2, p3, p4}, Lch/qos/logback/core/rolling/helper/RollingCalendar;->diffInMonths(JJ)I

    move-result v6

    int-to-long v6, v6

    return-wide v6

    .line 196
    :pswitch_2
    const-wide/32 v6, 0xea60

    div-long v6, v4, v6

    return-wide v6

    .line 194
    :pswitch_3
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    return-wide v6

    .line 192
    :pswitch_4
    return-wide v4

    .line 203
    :pswitch_5
    const-wide/32 v6, 0x240c8400

    div-long v6, v4, v6

    return-wide v6

    .line 201
    :pswitch_6
    const-wide/32 v6, 0x5265c00

    div-long v6, v4, v6

    return-wide v6

    .line 199
    :pswitch_7
    long-to-int v6, v4

    int-to-long v6, v6

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    return-wide v6

    .line 182
    .end local v0    # "startFloored":J
    .end local v2    # "endFloored":J
    .end local v4    # "diff":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start cannot come before end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public printPeriodicity(Lch/qos/logback/core/spi/ContextAwareBase;)V
    .locals 2
    .param p1, "cab"    # Lch/qos/logback/core/spi/ContextAwareBase;

    .line 142
    sget-object v0, Lch/qos/logback/core/rolling/helper/RollingCalendar$1;->$SwitchMap$ch$qos$logback$core$rolling$helper$PeriodicityType:[I

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/RollingCalendar;->periodicityType:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-virtual {v1}, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    const-string v0, "Unknown periodicity."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_0
    const-string v0, "Rollover at start of every month."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 173
    goto :goto_0

    .line 160
    :pswitch_1
    const-string v0, "Roll-over at midday and midnight."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 161
    goto :goto_0

    .line 152
    :pswitch_2
    const-string v0, "Roll-over every minute."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 153
    goto :goto_0

    .line 148
    :pswitch_3
    const-string v0, "Roll-over every second."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 149
    goto :goto_0

    .line 144
    :pswitch_4
    const-string v0, "Roll-over every millisecond."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 145
    goto :goto_0

    .line 168
    :pswitch_5
    const-string v0, "Rollover at the start of week."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 169
    goto :goto_0

    .line 164
    :pswitch_6
    const-string v0, "Roll-over at midnight."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 165
    goto :goto_0

    .line 156
    :pswitch_7
    const-string v0, "Roll-over at the top of every hour."

    invoke-virtual {p1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    .line 157
    nop

    .line 178
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
