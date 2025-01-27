.class public Lch/qos/logback/classic/BasicConfigurator;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "BasicConfigurator.java"

# interfaces
.implements Lch/qos/logback/classic/spi/Configurator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public configure(Lch/qos/logback/classic/LoggerContext;)V
    .locals 4
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;

    .line 36
    const-string v0, "Setting up default configuration."

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/BasicConfigurator;->addInfo(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lch/qos/logback/core/ConsoleAppender;

    invoke-direct {v0}, Lch/qos/logback/core/ConsoleAppender;-><init>()V

    .line 39
    .local v0, "ca":Lch/qos/logback/core/ConsoleAppender;, "Lch/qos/logback/core/ConsoleAppender<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    invoke-virtual {v0, p1}, Lch/qos/logback/core/ConsoleAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 40
    const-string v1, "console"

    invoke-virtual {v0, v1}, Lch/qos/logback/core/ConsoleAppender;->setName(Ljava/lang/String;)V

    .line 41
    new-instance v1, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;

    invoke-direct {v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;-><init>()V

    .line 42
    .local v1, "encoder":Lch/qos/logback/core/encoder/LayoutWrappingEncoder;, "Lch/qos/logback/core/encoder/LayoutWrappingEncoder<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    invoke-virtual {v1, p1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setContext(Lch/qos/logback/core/Context;)V

    .line 48
    new-instance v2, Lch/qos/logback/classic/layout/TTLLLayout;

    invoke-direct {v2}, Lch/qos/logback/classic/layout/TTLLLayout;-><init>()V

    .line 50
    .local v2, "layout":Lch/qos/logback/classic/layout/TTLLLayout;
    invoke-virtual {v2, p1}, Lch/qos/logback/classic/layout/TTLLLayout;->setContext(Lch/qos/logback/core/Context;)V

    .line 51
    invoke-virtual {v2}, Lch/qos/logback/classic/layout/TTLLLayout;->start()V

    .line 52
    invoke-virtual {v1, v2}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setLayout(Lch/qos/logback/core/Layout;)V

    .line 54
    invoke-virtual {v0, v1}, Lch/qos/logback/core/ConsoleAppender;->setEncoder(Lch/qos/logback/core/encoder/Encoder;)V

    .line 55
    invoke-virtual {v0}, Lch/qos/logback/core/ConsoleAppender;->start()V

    .line 57
    const-string v3, "ROOT"

    invoke-virtual {p1, v3}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v3

    .line 58
    .local v3, "rootLogger":Lch/qos/logback/classic/Logger;
    invoke-virtual {v3, v0}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 59
    return-void
.end method
