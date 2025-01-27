.class public Lch/qos/logback/classic/pattern/DateConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;
.source "DateConverter.java"


# instance fields
.field cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

.field lastTimestamp:J

.field timestampStrCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lch/qos/logback/classic/pattern/DateConverter;->lastTimestamp:J

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/DateConverter;->timestampStrCache:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lch/qos/logback/classic/pattern/DateConverter;->cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 3
    .param p1, "le"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 60
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v0

    .line 61
    .local v0, "timestamp":J
    iget-object v2, p0, Lch/qos/logback/classic/pattern/DateConverter;->cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-virtual {v2, v0, v1}, Lch/qos/logback/core/util/CachingDateFormatter;->format(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 23
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/DateConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .locals 4

    .line 31
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/DateConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "datePattern":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 33
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss,SSS"

    .line 36
    :cond_0
    const-string v1, "ISO8601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss,SSS"

    .line 41
    :cond_1
    :try_start_0
    new-instance v1, Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-direct {v1, v0}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lch/qos/logback/classic/pattern/DateConverter;->cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate SimpleDateFormat with pattern "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/classic/pattern/DateConverter;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    new-instance v2, Lch/qos/logback/core/util/CachingDateFormatter;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss,SSS"

    invoke-direct {v2, v3}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lch/qos/logback/classic/pattern/DateConverter;->cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

    .line 50
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/DateConverter;->getOptionList()Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 54
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 55
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v3, p0, Lch/qos/logback/classic/pattern/DateConverter;->cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-virtual {v3, v2}, Lch/qos/logback/core/util/CachingDateFormatter;->setTimeZone(Ljava/util/TimeZone;)V

    .line 57
    .end local v2    # "tz":Ljava/util/TimeZone;
    :cond_2
    return-void
.end method
