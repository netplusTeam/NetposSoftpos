.class public Lch/qos/logback/classic/util/StatusViaSLF4JLoggerFactory;
.super Ljava/lang/Object;
.source "StatusViaSLF4JLoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .line 24
    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lch/qos/logback/classic/util/StatusViaSLF4JLoggerFactory;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 25
    return-void
.end method

.method public static addError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 28
    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    invoke-direct {v0, p0, p1, p2}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lch/qos/logback/classic/util/StatusViaSLF4JLoggerFactory;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 29
    return-void
.end method

.method public static addInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .line 20
    new-instance v0, Lch/qos/logback/core/status/InfoStatus;

    invoke-direct {v0, p0, p1}, Lch/qos/logback/core/status/InfoStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lch/qos/logback/classic/util/StatusViaSLF4JLoggerFactory;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 21
    return-void
.end method

.method public static addStatus(Lch/qos/logback/core/status/Status;)V
    .locals 3
    .param p0, "status"    # Lch/qos/logback/core/status/Status;

    .line 32
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 33
    .local v0, "iLoggerFactory":Lorg/slf4j/ILoggerFactory;
    instance-of v1, v0, Lch/qos/logback/classic/LoggerContext;

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-direct {v1}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 35
    .local v1, "contextAwareBase":Lch/qos/logback/core/spi/ContextAwareBase;
    move-object v2, v0

    check-cast v2, Lch/qos/logback/classic/LoggerContext;

    .line 36
    .local v2, "loggerContext":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v1, v2}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 37
    invoke-virtual {v1, p0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 39
    .end local v1    # "contextAwareBase":Lch/qos/logback/core/spi/ContextAwareBase;
    .end local v2    # "loggerContext":Lch/qos/logback/classic/LoggerContext;
    :cond_0
    return-void
.end method
