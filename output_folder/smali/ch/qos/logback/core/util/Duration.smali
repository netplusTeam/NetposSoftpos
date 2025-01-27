.class public Lch/qos/logback/core/util/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# static fields
.field static final DAYS_COEFFICIENT:J = 0x5265c00L

.field private static final DOUBLE_GROUP:I = 0x1

.field private static final DOUBLE_PART:Ljava/lang/String; = "([0-9]*(.[0-9]+)?)"

.field private static final DURATION_PATTERN:Ljava/util/regex/Pattern;

.field static final HOURS_COEFFICIENT:J = 0x36ee80L

.field static final MINUTES_COEFFICIENT:J = 0xea60L

.field static final SECONDS_COEFFICIENT:J = 0x3e8L

.field private static final UNIT_GROUP:I = 0x3

.field private static final UNIT_PART:Ljava/lang/String; = "(|milli(second)?|second(e)?|minute|hour|day)s?"


# instance fields
.field final millis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "([0-9]*(.[0-9]+)?)\\s*(|milli(second)?|second(e)?|minute|hour|day)s?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/qos/logback/core/util/Duration;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "millis"    # J

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lch/qos/logback/core/util/Duration;->millis:J

    .line 53
    return-void
.end method

.method public static buildByDays(D)Lch/qos/logback/core/util/Duration;
    .locals 3
    .param p0, "value"    # D

    .line 72
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v1, p0

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildByHours(D)Lch/qos/logback/core/util/Duration;
    .locals 3
    .param p0, "value"    # D

    .line 68
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v1, p0

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildByMilliseconds(D)Lch/qos/logback/core/util/Duration;
    .locals 3
    .param p0, "value"    # D

    .line 56
    new-instance v0, Lch/qos/logback/core/util/Duration;

    double-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildByMinutes(D)Lch/qos/logback/core/util/Duration;
    .locals 3
    .param p0, "value"    # D

    .line 64
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v1, p0

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildBySeconds(D)Lch/qos/logback/core/util/Duration;
    .locals 3
    .param p0, "value"    # D

    .line 60
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, p0

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static buildUnbounded()Lch/qos/logback/core/util/Duration;
    .locals 3

    .line 76
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/util/Duration;
    .locals 8
    .param p0, "durationStr"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lch/qos/logback/core/util/Duration;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 86
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "doubleStr":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "unitStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 91
    .local v3, "doubleValue":D
    const-string v5, "milli"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "millisecond"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    const-string/jumbo v5, "second"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "seconde"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    const-string v5, "minute"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    invoke-static {v3, v4}, Lch/qos/logback/core/util/Duration;->buildByMinutes(D)Lch/qos/logback/core/util/Duration;

    move-result-object v5

    return-object v5

    .line 97
    :cond_2
    const-string v5, "hour"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    invoke-static {v3, v4}, Lch/qos/logback/core/util/Duration;->buildByHours(D)Lch/qos/logback/core/util/Duration;

    move-result-object v5

    return-object v5

    .line 99
    :cond_3
    const-string v5, "day"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    invoke-static {v3, v4}, Lch/qos/logback/core/util/Duration;->buildByDays(D)Lch/qos/logback/core/util/Duration;

    move-result-object v5

    return-object v5

    .line 102
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    :cond_5
    :goto_0
    invoke-static {v3, v4}, Lch/qos/logback/core/util/Duration;->buildBySeconds(D)Lch/qos/logback/core/util/Duration;

    move-result-object v5

    return-object v5

    .line 92
    :cond_6
    :goto_1
    invoke-static {v3, v4}, Lch/qos/logback/core/util/Duration;->buildByMilliseconds(D)Lch/qos/logback/core/util/Duration;

    move-result-object v5

    return-object v5

    .line 105
    .end local v1    # "doubleStr":Ljava/lang/String;
    .end local v2    # "unitStr":Ljava/lang/String;
    .end local v3    # "doubleValue":D
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not in the expected format."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMilliseconds()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lch/qos/logback/core/util/Duration;->millis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 111
    iget-wide v0, p0, Lch/qos/logback/core/util/Duration;->millis:J

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lch/qos/logback/core/util/Duration;->millis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    const-wide/32 v4, 0xea60

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lch/qos/logback/core/util/Duration;->millis:J

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lch/qos/logback/core/util/Duration;->millis:J

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lch/qos/logback/core/util/Duration;->millis:J

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hours"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
