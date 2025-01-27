.class public Lch/qos/logback/classic/pattern/LoggerConverter;
.super Lch/qos/logback/classic/pattern/NamedConverter;
.source "LoggerConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lch/qos/logback/classic/pattern/NamedConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFullyQualifiedName(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 21
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
