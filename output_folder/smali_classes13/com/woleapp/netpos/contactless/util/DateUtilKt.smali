.class public final Lcom/woleapp/netpos/contactless/util/DateUtilKt;
.super Ljava/lang/Object;
.source "DateUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u001a\u0017\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003\u001a\u0017\u0010\u0004\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003\u001a\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "getBeginningOfDay",
        "",
        "timeStamp",
        "(Ljava/lang/Long;)J",
        "getEndOfDayTimeStamp",
        "playAround",
        "",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getBeginningOfDay(Ljava/lang/Long;)J
    .locals 4
    .param p0, "timeStamp"    # Ljava/lang/Long;

    .line 7
    if-nez p0, :cond_0

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 9
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 10
    :goto_0
    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    check-cast v1, Ljava/time/temporal/TemporalAdjuster;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 7
    mul-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public static synthetic getBeginningOfDay$default(Ljava/lang/Long;ILjava/lang/Object;)J
    .locals 0

    .line 6
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/DateUtilKt;->getBeginningOfDay(Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getEndOfDayTimeStamp(Ljava/lang/Long;)J
    .locals 4
    .param p0, "timeStamp"    # Ljava/lang/Long;

    .line 13
    if-nez p0, :cond_0

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 15
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 16
    :goto_0
    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    check-cast v1, Ljava/time/temporal/TemporalAdjuster;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 13
    mul-long/2addr v0, v2

    .line 16
    return-wide v0
.end method

.method public static synthetic getEndOfDayTimeStamp$default(Ljava/lang/Long;ILjava/lang/Object;)J
    .locals 0

    .line 12
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/util/DateUtilKt;->getEndOfDayTimeStamp(Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final playAround()Ljava/lang/String;
    .locals 4

    .line 20
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x1759d6f4f79L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 19
    nop

    .line 21
    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 22
    .local v1, "zonedDate":Ljava/time/ZonedDateTime;
    sget-object v2, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    check-cast v2, Ljava/time/temporal/TemporalAdjuster;

    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
