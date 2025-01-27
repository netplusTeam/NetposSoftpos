.class public Lch/qos/logback/classic/layout/TTLLLayout;
.super Lch/qos/logback/core/LayoutBase;
.source "TTLLLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/LayoutBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

.field tpc:Lch/qos/logback/classic/pattern/ThrowableProxyConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lch/qos/logback/core/LayoutBase;-><init>()V

    .line 25
    new-instance v0, Lch/qos/logback/core/util/CachingDateFormatter;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/qos/logback/classic/layout/TTLLLayout;->cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

    .line 26
    new-instance v0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;

    invoke-direct {v0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/layout/TTLLLayout;->tpc:Lch/qos/logback/classic/pattern/ThrowableProxyConverter;

    return-void
.end method


# virtual methods
.method public doLayout(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 5
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 36
    invoke-virtual {p0}, Lch/qos/logback/classic/layout/TTLLLayout;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, ""

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v1

    .line 43
    .local v1, "timestamp":J
    iget-object v3, p0, Lch/qos/logback/classic/layout/TTLLLayout;->cachingDateFormatter:Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-virtual {v3, v1, v2}, Lch/qos/logback/core/util/CachingDateFormatter;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v3

    invoke-virtual {v3}, Lch/qos/logback/classic/Level;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getFormattedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v3, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v3

    .line 54
    .local v3, "tp":Lch/qos/logback/classic/spi/IThrowableProxy;
    if-eqz v3, :cond_1

    .line 55
    iget-object v4, p0, Lch/qos/logback/classic/layout/TTLLLayout;->tpc:Lch/qos/logback/classic/pattern/ThrowableProxyConverter;

    invoke-virtual {v4, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "stackTrace":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .end local v4    # "stackTrace":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic doLayout(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 23
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/layout/TTLLLayout;->doLayout(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .locals 1

    .line 30
    iget-object v0, p0, Lch/qos/logback/classic/layout/TTLLLayout;->tpc:Lch/qos/logback/classic/pattern/ThrowableProxyConverter;

    invoke-virtual {v0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->start()V

    .line 31
    invoke-super {p0}, Lch/qos/logback/core/LayoutBase;->start()V

    .line 32
    return-void
.end method
