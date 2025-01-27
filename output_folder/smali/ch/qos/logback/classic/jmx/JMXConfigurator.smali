.class public Lch/qos/logback/classic/jmx/JMXConfigurator;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "JMXConfigurator.java"

# interfaces
.implements Lch/qos/logback/classic/jmx/JMXConfiguratorMBean;
.implements Lch/qos/logback/classic/spi/LoggerContextListener;


# static fields
.field private static EMPTY:Ljava/lang/String;


# instance fields
.field debug:Z

.field loggerContext:Lch/qos/logback/classic/LoggerContext;

.field mbs:Ljavax/management/MBeanServer;

.field objectName:Ljavax/management/ObjectName;

.field objectNameAsString:Ljava/lang/String;

.field started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, ""

    sput-object v0, Lch/qos/logback/classic/jmx/JMXConfigurator;->EMPTY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)V
    .locals 2
    .param p1, "loggerContext"    # Lch/qos/logback/classic/LoggerContext;
    .param p2, "mbs"    # Ljavax/management/MBeanServer;
    .param p3, "objectName"    # Ljavax/management/ObjectName;

    .line 69
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->debug:Z

    .line 70
    iput-boolean v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->started:Z

    .line 71
    iput-object p1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->context:Lch/qos/logback/core/Context;

    .line 72
    iput-object p1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    .line 73
    iput-object p2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->mbs:Ljavax/management/MBeanServer;

    .line 74
    iput-object p3, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectName:Ljavax/management/ObjectName;

    .line 75
    invoke-virtual {p3}, Ljavax/management/ObjectName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->previouslyRegisteredListenerWithSameObjectName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previously registered JMXConfigurator named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] in the logger context named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1, p0}, Lch/qos/logback/classic/LoggerContext;->addListener(Lch/qos/logback/classic/spi/LoggerContextListener;)V

    .line 82
    :goto_0
    return-void
.end method

.method private clearFields()V
    .locals 1

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->mbs:Ljavax/management/MBeanServer;

    .line 276
    iput-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectName:Ljavax/management/ObjectName;

    .line 277
    iput-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    .line 278
    return-void
.end method

.method private previouslyRegisteredListenerWithSameObjectName()Z
    .locals 6

    .line 85
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getCopyOfListenerList()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "lcll":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/classic/spi/LoggerContextListener;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 87
    .local v2, "lcl":Lch/qos/logback/classic/spi/LoggerContextListener;
    instance-of v3, v2, Lch/qos/logback/classic/jmx/JMXConfigurator;

    if-eqz v3, :cond_0

    .line 88
    move-object v3, v2

    check-cast v3, Lch/qos/logback/classic/jmx/JMXConfigurator;

    .line 89
    .local v3, "jmxConfigurator":Lch/qos/logback/classic/jmx/JMXConfigurator;
    iget-object v4, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectName:Ljavax/management/ObjectName;

    iget-object v5, v3, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectName:Ljavax/management/ObjectName;

    invoke-virtual {v4, v5}, Ljavax/management/ObjectName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const/4 v4, 0x1

    return v4

    .line 93
    .end local v2    # "lcl":Lch/qos/logback/classic/spi/LoggerContextListener;
    .end local v3    # "jmxConfigurator":Lch/qos/logback/classic/jmx/JMXConfigurator;
    :cond_0
    goto :goto_0

    .line 94
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private stop()V
    .locals 1

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->started:Z

    .line 282
    invoke-direct {p0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->clearFields()V

    .line 283
    return-void
.end method


# virtual methods
.method addStatusListener(Lch/qos/logback/core/status/StatusListener;)V
    .locals 1
    .param p1, "statusListener"    # Lch/qos/logback/core/status/StatusListener;

    .line 122
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 123
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/StatusListener;)Z

    .line 124
    return-void
.end method

.method public getLoggerEffectiveLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 197
    if-nez p1, :cond_0

    .line 198
    sget-object v0, Lch/qos/logback/classic/jmx/JMXConfigurator;->EMPTY:Ljava/lang/String;

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->context:Lch/qos/logback/core/Context;

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 204
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v0, p1}, Lch/qos/logback/classic/LoggerContext;->exists(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v1

    .line 205
    .local v1, "logger":Lch/qos/logback/classic/Logger;
    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v1}, Lch/qos/logback/classic/Logger;->getEffectiveLevel()Lch/qos/logback/classic/Level;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/classic/Level;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 208
    :cond_1
    sget-object v2, Lch/qos/logback/classic/jmx/JMXConfigurator;->EMPTY:Ljava/lang/String;

    return-object v2
.end method

.method public getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 181
    if-nez p1, :cond_0

    .line 182
    sget-object v0, Lch/qos/logback/classic/jmx/JMXConfigurator;->EMPTY:Ljava/lang/String;

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->context:Lch/qos/logback/core/Context;

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 188
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v0, p1}, Lch/qos/logback/classic/LoggerContext;->exists(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v1

    .line 189
    .local v1, "logger":Lch/qos/logback/classic/Logger;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lch/qos/logback/classic/Logger;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v1}, Lch/qos/logback/classic/Logger;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/classic/Level;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 192
    :cond_1
    sget-object v2, Lch/qos/logback/classic/jmx/JMXConfigurator;->EMPTY:Ljava/lang/String;

    return-object v2
.end method

.method public getLoggerList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->context:Lch/qos/logback/core/Context;

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 214
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getLoggerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 216
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/classic/Logger;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/Logger;

    .line 218
    .local v3, "log":Lch/qos/logback/classic/Logger;
    invoke-virtual {v3}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v3    # "log":Lch/qos/logback/classic/Logger;
    goto :goto_0

    .line 220
    :cond_0
    return-object v1
.end method

.method public getStatuses()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v1

    invoke-interface {v1}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 226
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lch/qos/logback/core/status/Status;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/status/Status;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_0
    return-object v0
.end method

.method public isResetResistant()Z
    .locals 1

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public onLevelChange(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V
    .locals 0
    .param p1, "logger"    # Lch/qos/logback/classic/Logger;
    .param p2, "level"    # Lch/qos/logback/classic/Level;

    .line 259
    return-void
.end method

.method public onReset(Lch/qos/logback/classic/LoggerContext;)V
    .locals 2
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReset() method called JMXActivator ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onStart(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 287
    return-void
.end method

.method public onStop(Lch/qos/logback/classic/LoggerContext;)V
    .locals 4
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 237
    iget-boolean v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->started:Z

    const-string v1, "]"

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop() method called on a stopped JMXActivator ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->mbs:Ljavax/management/MBeanServer;

    iget-object v2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectName:Ljavax/management/ObjectName;

    invoke-interface {v0, v2}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering mbean ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->mbs:Ljavax/management/MBeanServer;

    iget-object v2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectName:Ljavax/management/ObjectName;

    invoke-interface {v0, v2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljavax/management/MBeanRegistrationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljavax/management/MBeanRegistrationException;
    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljavax/management/InstanceNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find a verifiably registered mbean ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    .end local v0    # "e":Ljavax/management/InstanceNotFoundException;
    :goto_0
    goto :goto_1

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mbean ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->objectNameAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] was not in the mbean registry. This is OK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V

    .line 254
    :goto_1
    invoke-direct {p0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->stop()V

    .line 255
    return-void
.end method

.method public reloadByFileName(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 109
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {p0, v1}, Lch/qos/logback/classic/jmx/JMXConfigurator;->reloadByURL(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 119
    .end local v1    # "url":Ljava/net/URL;
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected MalformedURLException occured. See nexted cause."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 115
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V

    .line 117
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public reloadByURL(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 132
    new-instance v0, Lch/qos/logback/core/status/StatusListenerAsList;

    invoke-direct {v0}, Lch/qos/logback/core/status/StatusListenerAsList;-><init>()V

    .line 134
    .local v0, "statusListenerAsList":Lch/qos/logback/core/status/StatusListenerAsList;
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addStatusListener(Lch/qos/logback/core/status/StatusListener;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v2}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 139
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addStatusListener(Lch/qos/logback/core/status/StatusListener;)V

    .line 142
    if-eqz p1, :cond_1

    .line 143
    :try_start_0
    new-instance v1, Lch/qos/logback/classic/joran/JoranConfigurator;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/JoranConfigurator;-><init>()V

    .line 144
    .local v1, "configurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    iget-object v2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/joran/JoranConfigurator;->setContext(Lch/qos/logback/core/Context;)V

    .line 145
    invoke-virtual {v1, p1}, Lch/qos/logback/classic/joran/JoranConfigurator;->doConfigure(Ljava/net/URL;)V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v3}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reloaded."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    .end local v1    # "configurator":Lch/qos/logback/classic/joran/JoranConfigurator;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->removeStatusListener(Lch/qos/logback/core/status/StatusListener;)V

    .line 150
    iget-boolean v2, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->debug:Z

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v0}, Lch/qos/logback/core/status/StatusListenerAsList;->getStatusList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lch/qos/logback/core/util/StatusPrinter;->print(Ljava/util/List;)V

    :cond_0
    throw v1

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->removeStatusListener(Lch/qos/logback/core/status/StatusListener;)V

    .line 150
    iget-boolean v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->debug:Z

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v0}, Lch/qos/logback/core/status/StatusListenerAsList;->getStatusList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lch/qos/logback/core/util/StatusPrinter;->print(Ljava/util/List;)V

    .line 154
    :cond_2
    return-void
.end method

.method public reloadDefaultConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 98
    new-instance v0, Lch/qos/logback/classic/util/ContextInitializer;

    iget-object v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-direct {v0, v1}, Lch/qos/logback/classic/util/ContextInitializer;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    .line 99
    .local v0, "ci":Lch/qos/logback/classic/util/ContextInitializer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/util/ContextInitializer;->findURLOfDefaultConfigurationFile(Z)Ljava/net/URL;

    move-result-object v1

    .line 100
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {p0, v1}, Lch/qos/logback/classic/jmx/JMXConfigurator;->reloadByURL(Ljava/net/URL;)V

    .line 101
    return-void
.end method

.method removeStatusListener(Lch/qos/logback/core/status/StatusListener;)V
    .locals 1
    .param p1, "statusListener"    # Lch/qos/logback/core/status/StatusListener;

    .line 127
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 128
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    invoke-interface {v0, p1}, Lch/qos/logback/core/status/StatusManager;->remove(Lch/qos/logback/core/status/StatusListener;)V

    .line 129
    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "levelStr"    # Ljava/lang/String;

    .line 157
    if-nez p1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to logger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jmx/JMXConfigurator;->addInfo(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->context:Lch/qos/logback/core/Context;

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 169
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v0, p1}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v1

    .line 170
    .local v1, "logger":Lch/qos/logback/classic/Logger;
    const-string v2, "null"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {v1, v3}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {p2, v3}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object v2

    .line 174
    .local v2, "level":Lch/qos/logback/classic/Level;
    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {v1, v2}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 178
    .end local v2    # "level":Lch/qos/logback/classic/Level;
    :cond_3
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/jmx/JMXConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
