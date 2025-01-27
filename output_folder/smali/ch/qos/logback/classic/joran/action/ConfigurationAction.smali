.class public Lch/qos/logback/classic/joran/action/ConfigurationAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "ConfigurationAction.java"


# static fields
.field static final DEBUG_SYSTEM_PROPERTY_KEY:Ljava/lang/String; = "logback.debug"

.field static final INTERNAL_DEBUG_ATTR:Ljava/lang/String; = "debug"

.field static final PACKAGING_DATA_ATTR:Ljava/lang/String; = "packagingData"

.field static final SCAN_ATTR:Ljava/lang/String; = "scan"

.field static final SCAN_PERIOD_ATTR:Ljava/lang/String; = "scanPeriod"


# instance fields
.field threshold:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->threshold:J

    return-void
.end method

.method private getDuration(Ljava/lang/String;Ljava/lang/String;)Lch/qos/logback/core/util/Duration;
    .locals 4
    .param p1, "scanAttrib"    # Ljava/lang/String;
    .param p2, "scanPeriodAttrib"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "duration":Lch/qos/logback/core/util/Duration;
    invoke-static {p2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :try_start_0
    invoke-static {p2}, Lch/qos/logback/core/util/Duration;->valueOf(Ljava/lang/String;)Lch/qos/logback/core/util/Duration;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while converting ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->threshold:J

    .line 51
    const-string v0, "logback.debug"

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "debugAttrib":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 53
    const-string v1, "debug"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    new-instance v2, Lch/qos/logback/core/status/OnConsoleStatusListener;

    invoke-direct {v2}, Lch/qos/logback/core/status/OnConsoleStatusListener;-><init>()V

    invoke-static {v1, v2}, Lch/qos/logback/core/util/StatusListenerConfigHelper;->addOnConsoleListenerInstance(Lch/qos/logback/core/Context;Lch/qos/logback/core/status/OnConsoleStatusListener;)V

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    const-string v1, "debug attribute not set"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->addInfo(Ljava/lang/String;)V

    .line 62
    :goto_1
    invoke-virtual {p0, p1, p3}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->processScanAttrib(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)V

    .line 64
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    .line 65
    .local v1, "lc":Lch/qos/logback/classic/LoggerContext;
    const-string/jumbo v2, "packagingData"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lch/qos/logback/core/util/OptionHelper;->toBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 66
    .local v2, "packagingData":Z
    invoke-virtual {v1, v2}, Lch/qos/logback/classic/LoggerContext;->setPackagingDataEnabled(Z)V

    .line 68
    invoke-static {}, Lch/qos/logback/classic/util/EnvUtil;->isGroovyAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    new-instance v3, Lch/qos/logback/core/util/ContextUtil;

    iget-object v4, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    invoke-direct {v3, v4}, Lch/qos/logback/core/util/ContextUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 70
    .local v3, "contextUtil":Lch/qos/logback/core/util/ContextUtil;
    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->getFrameworkPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/qos/logback/core/util/ContextUtil;->addGroovyPackages(Ljava/util/List;)V

    .line 75
    .end local v3    # "contextUtil":Lch/qos/logback/core/util/ContextUtil;
    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->getContext()Lch/qos/logback/core/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 140
    const-string v0, "End of configuration."

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->addInfo(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 142
    return-void
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return-object v1
.end method

.method processScanAttrib(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)V
    .locals 13
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 91
    const-string/jumbo v0, "scan"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "scanAttrib":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 95
    .local v1, "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    iget-object v2, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v2}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getMainWatchURL(Lch/qos/logback/core/Context;)Ljava/net/URL;

    move-result-object v9

    .line 96
    .local v9, "mainURL":Ljava/net/URL;
    if-nez v9, :cond_0

    .line 97
    const-string v2, "Due to missing top level configuration file, reconfiguration on change (configuration file scanning) cannot be done."

    invoke-virtual {p0, v2}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->addWarn(Ljava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_0
    new-instance v2, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;

    invoke-direct {v2}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;-><init>()V

    move-object v10, v2

    .line 101
    .local v10, "rocTask":Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;
    iget-object v2, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v10, v2}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->setContext(Lch/qos/logback/core/Context;)V

    .line 103
    iget-object v2, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    const-string v3, "RECONFIGURE_ON_CHANGE_TASK"

    invoke-interface {v2, v3, v10}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string/jumbo v2, "scanPeriod"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "scanPeriodAttrib":Ljava/lang/String;
    invoke-direct {p0, v0, v11}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->getDuration(Ljava/lang/String;Ljava/lang/String;)Lch/qos/logback/core/util/Duration;

    move-result-object v12

    .line 108
    .local v12, "duration":Lch/qos/logback/core/util/Duration;
    if-nez v12, :cond_1

    .line 109
    return-void

    .line 112
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will scan for changes in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->addInfo(Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting ReconfigureOnChangeTask scanning period to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/classic/joran/action/ConfigurationAction;->addInfo(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v12}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v4

    invoke-virtual {v12}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, v1

    move-object v3, v10

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 121
    .local v2, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v3, p0, Lch/qos/logback/classic/joran/action/ConfigurationAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v3, v2}, Lch/qos/logback/core/Context;->addScheduledFuture(Ljava/util/concurrent/ScheduledFuture;)V

    .line 123
    .end local v1    # "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v2    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v9    # "mainURL":Ljava/net/URL;
    .end local v10    # "rocTask":Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;
    .end local v11    # "scanPeriodAttrib":Ljava/lang/String;
    .end local v12    # "duration":Lch/qos/logback/core/util/Duration;
    :cond_2
    return-void
.end method
