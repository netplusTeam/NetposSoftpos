.class public abstract Lcom/solab/iso8583/parse/DateTimeParseInfo;
.super Lcom/solab/iso8583/parse/FieldParseInfo;
.source "DateTimeParseInfo.java"


# static fields
.field protected static final FUTURE_TOLERANCE:J

.field private static defaultTimezone:Ljava/util/TimeZone;


# instance fields
.field protected tz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "j8583.future.tolerance"

    const-string v1, "900000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->FUTURE_TOLERANCE:J

    .line 42
    return-void
.end method

.method protected constructor <init>(Lcom/solab/iso8583/IsoType;I)V
    .locals 0
    .param p1, "type"    # Lcom/solab/iso8583/IsoType;
    .param p2, "length"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/solab/iso8583/parse/FieldParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 53
    return-void
.end method

.method public static adjustWithFutureTolerance(Ljava/util/Calendar;)V
    .locals 8
    .param p0, "cal"    # Ljava/util/Calendar;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    .local v0, "now":J
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 66
    .local v2, "then":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long v4, v2, v0

    sget-wide v6, Lcom/solab/iso8583/parse/DateTimeParseInfo;->FUTURE_TOLERANCE:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 67
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 69
    :cond_0
    return-void
.end method

.method public static getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 48
    sget-object v0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->defaultTimezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static setDefaultTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p0, "tz"    # Ljava/util/TimeZone;

    .line 45
    sput-object p0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->defaultTimezone:Ljava/util/TimeZone;

    .line 46
    return-void
.end method


# virtual methods
.method protected createValue(Ljava/util/Calendar;Z)Lcom/solab/iso8583/IsoValue;
    .locals 4
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "adjusting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Z)",
            "Lcom/solab/iso8583/IsoValue<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->tz:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 78
    invoke-static {p1}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->adjustWithFutureTolerance(Ljava/util/Calendar;)V

    .line 80
    :cond_2
    new-instance v0, Lcom/solab/iso8583/IsoValue;

    iget-object v1, p0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->type:Lcom/solab/iso8583/IsoType;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    .line 81
    .local v0, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<Ljava/util/Date;>;"
    iget-object v1, p0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->tz:Ljava/util/TimeZone;

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoValue;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-static {}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 84
    invoke-static {}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solab/iso8583/IsoValue;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    :cond_4
    :goto_1
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->tz:Ljava/util/TimeZone;

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "value"    # Ljava/util/TimeZone;

    .line 56
    iput-object p1, p0, Lcom/solab/iso8583/parse/DateTimeParseInfo;->tz:Ljava/util/TimeZone;

    .line 57
    return-void
.end method
