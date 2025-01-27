.class public Lch/qos/logback/classic/spi/LoggerContextAwareBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "LoggerContextAwareBase.java"

# interfaces
.implements Lch/qos/logback/classic/spi/LoggerContextAware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    .line 46
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextAwareBase;->context:Lch/qos/logback/core/Context;

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public setContext(Lch/qos/logback/core/Context;)V
    .locals 2
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 33
    instance-of v0, p1, Lch/qos/logback/classic/LoggerContext;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LoggerContextAwareBase only accepts contexts of type c.l.classic.LoggerContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 38
    return-void
.end method

.method public setLoggerContext(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 27
    invoke-super {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 28
    return-void
.end method
