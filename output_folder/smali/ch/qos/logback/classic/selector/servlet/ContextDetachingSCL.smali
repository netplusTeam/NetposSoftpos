.class public Lch/qos/logback/classic/selector/servlet/ContextDetachingSCL;
.super Ljava/lang/Object;
.source "ContextDetachingSCL.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 6
    .param p1, "servletContextEvent"    # Ljavax/servlet/ServletContextEvent;

    .line 37
    const/4 v0, 0x0

    .line 40
    .local v0, "loggerContextName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lch/qos/logback/classic/util/JNDIUtil;->getInitialContext()Ljavax/naming/Context;

    move-result-object v1

    .line 41
    .local v1, "ctx":Ljavax/naming/Context;
    const-string v2, "java:comp/env/logback/context-name"

    invoke-static {v1, v2}, Lch/qos/logback/classic/util/JNDIUtil;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 43
    .end local v1    # "ctx":Ljavax/naming/Context;
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 45
    :goto_0
    if-eqz v0, :cond_2

    .line 46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to detach context named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->getSingleton()Lch/qos/logback/classic/util/ContextSelectorStaticBinder;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/classic/util/ContextSelectorStaticBinder;->getContextSelector()Lch/qos/logback/classic/selector/ContextSelector;

    move-result-object v1

    .line 49
    .local v1, "selector":Lch/qos/logback/classic/selector/ContextSelector;
    if-nez v1, :cond_0

    .line 50
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Selector is null, cannot detach context. Skipping."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    return-void

    .line 53
    :cond_0
    invoke-interface {v1, v0}, Lch/qos/logback/classic/selector/ContextSelector;->getLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;

    move-result-object v2

    .line 54
    .local v2, "context":Lch/qos/logback/classic/LoggerContext;
    if-eqz v2, :cond_1

    .line 55
    const-string v3, "ROOT"

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v3

    .line 56
    .local v3, "logger":Lorg/slf4j/Logger;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping logger context "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 57
    invoke-interface {v1, v0}, Lch/qos/logback/classic/selector/ContextSelector;->detachLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;

    .line 59
    invoke-virtual {v2}, Lch/qos/logback/classic/LoggerContext;->stop()V

    .line 60
    .end local v3    # "logger":Lorg/slf4j/Logger;
    goto :goto_1

    .line 61
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No context named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    .end local v1    # "selector":Lch/qos/logback/classic/selector/ContextSelector;
    .end local v2    # "context":Lch/qos/logback/classic/LoggerContext;
    :cond_2
    :goto_1
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "arg0"    # Ljavax/servlet/ServletContextEvent;

    .line 34
    return-void
.end method
