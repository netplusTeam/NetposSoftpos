.class public Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "ReconfigureOnChangeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DETECTED_CHANGE_IN_CONFIGURATION_FILES:Ljava/lang/String; = "Detected change in configuration files."

.field static final FALLING_BACK_TO_SAFE_CONFIGURATION:Ljava/lang/String; = "Given previous errors, falling back to previously registered safe configuration."

.field static final RE_REGISTERING_PREVIOUS_SAFE_CONFIGURATION:Ljava/lang/String; = "Re-registering previous fallback configuration once more as a fallback configuration point"


# instance fields
.field birthdate:J

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->birthdate:J

    return-void
.end method

.method private fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V
    .locals 6
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;
    .param p3, "mainURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/classic/LoggerContext;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .line 140
    .local p2, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    invoke-direct {p0, p2}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->removeIncludeEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "failsafeEvents":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    new-instance v1, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 142
    .local v1, "joranConfigurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    iget-object v2, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 143
    iget-object v2, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-static {v2}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v2

    .line 144
    .local v2, "oldCWL":Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    invoke-virtual {v2}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->buildClone()Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v3

    .line 146
    .local v3, "newCWL":Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    const-string v4, "Given previous errors, falling back to previously registered safe configuration."

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addWarn(Ljava/lang/String;)V

    .line 151
    :try_start_0
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 152
    iget-object v4, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-static {v4, v3}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->registerConfigurationWatchList(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/ConfigurationWatchList;)V

    .line 153
    invoke-virtual {v1, v0}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/util/List;)V

    .line 154
    const-string v4, "Re-registering previous fallback configuration once more as a fallback configuration point"

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addInfo(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, p2}, Lch/qos/logback/classic/joran/JoranConfigurator;->registerSafeConfiguration(Ljava/util/List;)V

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after registerSafeConfiguration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_1

    .line 158
    :catch_0
    move-exception v4

    .line 159
    .local v4, "e":Lch/qos/logback/core/joran/spi/JoranException;
    const-string v5, "Unexpected exception thrown by a configuration considered safe."

    invoke-virtual {p0, v5, v4}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 147
    .end local v4    # "e":Lch/qos/logback/core/joran/spi/JoranException;
    :cond_1
    :goto_0
    const-string v4, "No previous configuration to fall back on."

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addWarn(Ljava/lang/String;)V

    .line 162
    :goto_1
    return-void
.end method

.method private fireChangeDetected()V
    .locals 2

    .line 88
    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;

    .line 92
    .local v1, "listener":Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;
    invoke-virtual {v1}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;->changeDetected()V

    .end local v1    # "listener":Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;
    goto :goto_0

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private fireDoneReconfiguring()V
    .locals 2

    .line 97
    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;

    .line 101
    .local v1, "listener":Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;
    invoke-virtual {v1}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;->doneReconfiguring()V

    .end local v1    # "listener":Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;
    goto :goto_0

    .line 102
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private fireEnteredRunMethod()V
    .locals 2

    .line 80
    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;

    .line 84
    .local v1, "listener":Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;
    invoke-virtual {v1}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;->enteredRunMethod()V

    .end local v1    # "listener":Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;
    goto :goto_0

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private performXMLConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/net/URL;)V
    .locals 7
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;
    .param p2, "mainConfigurationURL"    # Ljava/net/URL;

    .line 105
    new-instance v0, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 106
    .local v0, "jc":Lch/qos/logback/classic/joran/JoranConfigurator;
    iget-object v1, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 107
    new-instance v1, Lch/qos/logback/core/status/StatusUtil;

    iget-object v2, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-direct {v1, v2}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 108
    .local v1, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    invoke-virtual {v0}, Lch/qos/logback/classic/joran/JoranConfigurator;->recallSafeConfiguration()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iget-object v3, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-static {v3}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getMainWatchURL(Lch/qos/logback/core/Context;)Ljava/net/URL;

    move-result-object v3

    .line 111
    .local v3, "mainURL":Ljava/net/URL;
    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 114
    .local v4, "threshold":J
    :try_start_0
    invoke-virtual {v0, p2}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/net/URL;)V

    .line 115
    invoke-virtual {v1, v4, v5}, Lch/qos/logback/core/status/StatusUtil;->hasXMLParsingErrors(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    invoke-direct {p0, p1, v2, v3}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v6

    .line 119
    .local v6, "e":Lch/qos/logback/core/joran/spi/JoranException;
    invoke-direct {p0, p1, v2, v3}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fallbackConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/util/List;Ljava/net/URL;)V

    .line 121
    .end local v6    # "e":Lch/qos/logback/core/joran/spi/JoranException;
    :goto_0
    return-void
.end method

.method private removeIncludeEvents(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 124
    .local p1, "unsanitizedEventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "sanitizedEvents":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    if-nez p1, :cond_0

    .line 126
    return-object v0

    .line 128
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/joran/event/SaxEvent;

    .line 129
    .local v2, "e":Lch/qos/logback/core/joran/event/SaxEvent;
    invoke-virtual {v2}, Lch/qos/logback/core/joran/event/SaxEvent;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "include"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v2    # "e":Lch/qos/logback/core/joran/event/SaxEvent;
    :cond_1
    goto :goto_0

    .line 133
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method


# virtual methods
.method addListener(Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;)V
    .locals 1
    .param p1, "listener"    # Lch/qos/logback/classic/joran/ReconfigureOnChangeTaskListener;

    .line 32
    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    .line 34
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public run()V
    .locals 6

    .line 39
    invoke-direct {p0}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fireEnteredRunMethod()V

    .line 41
    iget-object v0, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-static {v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    .line 42
    .local v0, "configurationWatchList":Lch/qos/logback/core/joran/spi/ConfigurationWatchList;
    if-nez v0, :cond_0

    .line 43
    const-string v1, "Empty ConfigurationWatchList in context"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addWarn(Ljava/lang/String;)V

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getCopyOfFileWatchList()Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "filesToWatch":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->changeDetected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    return-void

    .line 57
    :cond_2
    invoke-direct {p0}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fireChangeDetected()V

    .line 58
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getMainURL()Ljava/net/URL;

    move-result-object v2

    .line 60
    .local v2, "mainConfigurationURL":Ljava/net/URL;
    const-string v3, "Detected change in configuration files."

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addInfo(Ljava/lang/String;)V

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will reset and reconfigure context named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    invoke-interface {v4}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addInfo(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->context:Lch/qos/logback/core/Context;

    check-cast v3, Lch/qos/logback/classic/LoggerContext;

    .line 64
    .local v3, "lc":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    invoke-direct {p0, v3, v2}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->performXMLConfiguration(Lch/qos/logback/classic/LoggerContext;Ljava/net/URL;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "groovy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 67
    invoke-static {}, Lch/qos/logback/classic/util/EnvUtil;->isGroovyAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 68
    invoke-virtual {v3}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 71
    invoke-static {v3, p0, v2}, Lch/qos/logback/classic/gaffer/GafferUtil;->runGafferConfiguratorOn(Lch/qos/logback/classic/LoggerContext;Ljava/lang/Object;Ljava/net/URL;)V

    goto :goto_0

    .line 73
    :cond_4
    const-string v4, "Groovy classes are not available on the class path. ABORTING INITIALIZATION."

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addError(Ljava/lang/String;)V

    .line 76
    :cond_5
    :goto_0
    invoke-direct {p0}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->fireDoneReconfiguring()V

    .line 77
    return-void

    .line 49
    .end local v2    # "mainConfigurationURL":Ljava/net/URL;
    .end local v3    # "lc":Lch/qos/logback/classic/LoggerContext;
    :cond_6
    :goto_1
    const-string v2, "Empty watch file list. Disabling "

    invoke-virtual {p0, v2}, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->addInfo(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReconfigureOnChangeTask(born:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lch/qos/logback/classic/joran/ReconfigureOnChangeTask;->birthdate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
