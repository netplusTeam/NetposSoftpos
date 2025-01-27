.class public Lch/qos/logback/core/util/StatusListenerConfigHelper;
.super Ljava/lang/Object;
.source "StatusListenerConfigHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnConsoleListenerInstance(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/OnConsoleStatusListener;)V
    .locals 1
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "onConsoleStatusListener"    # Lch/qos/logback/core/status/OnConsoleStatusListener;

    .line 72
    invoke-virtual {p1, p0}, Lch/qos/logback/core/status/OnConsoleStatusListener;->setContext(Lch/qos/logback/core/Context;)V

    .line 73
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/StatusListener;)Z

    move-result v0

    .line 74
    .local v0, "effectivelyAdded":Z
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lch/qos/logback/core/status/OnConsoleStatusListener;->start()V

    .line 77
    :cond_0
    return-void
.end method

.method private static addStatusListener(Lch/qos/logback/core/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "listenerClassName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "listener":Lch/qos/logback/core/status/StatusListener;
    const-string v1, "SYSOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lch/qos/logback/core/status/OnConsoleStatusListener;

    invoke-direct {v1}, Lch/qos/logback/core/status/OnConsoleStatusListener;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lch/qos/logback/core/util/StatusListenerConfigHelper;->createListenerPerClassName(Lch/qos/logback/core/Context;Ljava/lang/String;)Lch/qos/logback/core/status/StatusListener;

    move-result-object v0

    .line 39
    :goto_0
    invoke-static {p0, v0}, Lch/qos/logback/core/util/StatusListenerConfigHelper;->initAndAddListener(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/StatusListener;)V

    .line 40
    return-void
.end method

.method private static createListenerPerClassName(Lch/qos/logback/core/Context;Ljava/lang/String;)Lch/qos/logback/core/status/StatusListener;
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "listenerClass"    # Ljava/lang/String;

    .line 56
    :try_start_0
    const-class v0, Lch/qos/logback/core/status/StatusListener;

    invoke-static {p1, v0, p0}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/status/StatusListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    return-object v1
.end method

.method private static initAndAddListener(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/StatusListener;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "listener"    # Lch/qos/logback/core/status/StatusListener;

    .line 43
    if-eqz p1, :cond_1

    .line 44
    instance-of v0, p1, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/spi/ContextAware;

    invoke-interface {v0, p0}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 47
    :cond_0
    invoke-interface {p0}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/StatusListener;)Z

    move-result v0

    .line 48
    .local v0, "effectivelyAdded":Z
    if-eqz v0, :cond_1

    instance-of v1, p1, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, p1

    check-cast v1, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v1}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 52
    .end local v0    # "effectivelyAdded":Z
    :cond_1
    return-void
.end method

.method public static installIfAsked(Lch/qos/logback/core/Context;)V
    .locals 2
    .param p0, "context"    # Lch/qos/logback/core/Context;

    .line 26
    const-string v0, "logback.statusListenerClass"

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "slClass":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-static {p0, v0}, Lch/qos/logback/core/util/StatusListenerConfigHelper;->addStatusListener(Lch/qos/logback/core/Context;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
