.class public Lch/qos/logback/classic/servlet/LogbackServletContextListener;
.super Ljava/lang/Object;
.source "LogbackServletContextListener.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# instance fields
.field contextAwareBase:Lch/qos/logback/core/spi/ContextAwareBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-direct {v0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/servlet/LogbackServletContextListener;->contextAwareBase:Lch/qos/logback/core/spi/ContextAwareBase;

    return-void
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 4
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .line 31
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 32
    .local v0, "iLoggerFactory":Lorg/slf4j/ILoggerFactory;
    instance-of v1, v0, Lch/qos/logback/classic/LoggerContext;

    if-eqz v1, :cond_0

    .line 33
    move-object v1, v0

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    .line 34
    .local v1, "loggerContext":Lch/qos/logback/classic/LoggerContext;
    iget-object v2, p0, Lch/qos/logback/classic/servlet/LogbackServletContextListener;->contextAwareBase:Lch/qos/logback/core/spi/ContextAwareBase;

    invoke-virtual {v2, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lch/qos/logback/classic/util/StatusViaSLF4JLoggerFactory;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->stop()V

    .line 38
    .end local v1    # "loggerContext":Lch/qos/logback/classic/LoggerContext;
    :cond_0
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .line 26
    return-void
.end method
