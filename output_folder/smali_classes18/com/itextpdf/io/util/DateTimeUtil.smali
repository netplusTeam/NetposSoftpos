.class public final Lcom/itextpdf/io/util/DateTimeUtil;
.super Ljava/lang/Object;
.source "DateTimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDaysToCalendar(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "days"    # I

    .line 74
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 75
    return-object p0
.end method

.method public static addDaysToDate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "days"    # I

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 81
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 82
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentTimeCalendar()Ljava/util/Calendar;
    .locals 1

    .line 66
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    return-object v0
.end method

.method public static getCurrentTimeDate()Ljava/util/Date;
    .locals 1

    .line 70
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static getUtcMillisFromEpoch(Ljava/util/Calendar;)D
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 59
    if-nez p0, :cond_0

    .line 60
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    move-object p0, v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static parseSimpleFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .line 87
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
