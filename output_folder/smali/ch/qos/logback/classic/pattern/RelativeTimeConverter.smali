.class public Lch/qos/logback/classic/pattern/RelativeTimeConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;
.source "RelativeTimeConverter.java"


# instance fields
.field lastTimestamp:J

.field timesmapCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->lastTimestamp:J

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->timesmapCache:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 24
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v0

    .line 26
    .local v0, "now":J
    monitor-enter p0

    .line 28
    :try_start_0
    iget-wide v2, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->lastTimestamp:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 29
    iput-wide v0, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->lastTimestamp:J

    .line 30
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/classic/spi/LoggerContextVO;->getBirthTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->timesmapCache:Ljava/lang/String;

    .line 32
    :cond_0
    iget-object v2, p0, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->timesmapCache:Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 33
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 18
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/RelativeTimeConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
