.class public Lch/qos/logback/classic/pattern/ExtendedThrowableProxyConverter;
.super Lch/qos/logback/classic/pattern/ThrowableProxyConverter;
.source "ExtendedThrowableProxyConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected extraData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 0
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "step"    # Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 24
    invoke-static {p1, p2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->subjoinPackagingData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    .line 25
    return-void
.end method

.method protected prepareLoggingEvent(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 0
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 29
    return-void
.end method
