.class public Lch/qos/logback/classic/pattern/EnsureExceptionHandling;
.super Ljava/lang/Object;
.source "EnsureExceptionHandling.java"

# interfaces
.implements Lch/qos/logback/core/pattern/PostCompileProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lch/qos/logback/core/pattern/PostCompileProcessor<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chainHandlesThrowable(Lch/qos/logback/core/pattern/Converter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)Z"
        }
    .end annotation

    .line 67
    .local p1, "head":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    move-object v0, p1

    .line 68
    .local v0, "c":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    instance-of v1, v0, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public process(Lch/qos/logback/core/Context;Lch/qos/logback/core/pattern/Converter;)V
    .locals 4
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            "Lch/qos/logback/core/pattern/Converter<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "head":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    if-eqz p2, :cond_2

    .line 45
    invoke-virtual {p0, p2}, Lch/qos/logback/classic/pattern/EnsureExceptionHandling;->chainHandlesThrowable(Lch/qos/logback/core/pattern/Converter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-static {p2}, Lch/qos/logback/core/pattern/ConverterUtil;->findTail(Lch/qos/logback/core/pattern/Converter;)Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    .line 47
    .local v0, "tail":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    const/4 v1, 0x0

    .line 48
    .local v1, "exConverter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    move-object v2, p1

    check-cast v2, Lch/qos/logback/classic/LoggerContext;

    .line 49
    .local v2, "loggerContext":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v2}, Lch/qos/logback/classic/LoggerContext;->isPackagingDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Lch/qos/logback/classic/pattern/ExtendedThrowableProxyConverter;

    invoke-direct {v3}, Lch/qos/logback/classic/pattern/ExtendedThrowableProxyConverter;-><init>()V

    move-object v1, v3

    goto :goto_0

    .line 52
    :cond_0
    new-instance v3, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;

    invoke-direct {v3}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;-><init>()V

    move-object v1, v3

    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/Converter;->setNext(Lch/qos/logback/core/pattern/Converter;)V

    .line 56
    .end local v0    # "tail":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    .end local v1    # "exConverter":Lch/qos/logback/core/pattern/Converter;, "Lch/qos/logback/core/pattern/Converter<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    .end local v2    # "loggerContext":Lch/qos/logback/classic/LoggerContext;
    :cond_1
    return-void

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot process empty chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
