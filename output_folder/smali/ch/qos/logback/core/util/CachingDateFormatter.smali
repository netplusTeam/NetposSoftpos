.class public Lch/qos/logback/core/util/CachingDateFormatter;
.super Ljava/lang/Object;
.source "CachingDateFormatter.java"


# instance fields
.field cachedStr:Ljava/lang/String;

.field lastTimestamp:J

.field final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->lastTimestamp:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->cachedStr:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->sdf:Ljava/text/SimpleDateFormat;

    .line 34
    return-void
.end method


# virtual methods
.method public final format(J)Ljava/lang/String;
    .locals 2
    .param p1, "now"    # J

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-wide v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->lastTimestamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 47
    iput-wide p1, p0, Lch/qos/logback/core/util/CachingDateFormatter;->lastTimestamp:J

    .line 48
    iget-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->cachedStr:Ljava/lang/String;

    .line 50
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->cachedStr:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 55
    iget-object v0, p0, Lch/qos/logback/core/util/CachingDateFormatter;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    return-void
.end method
