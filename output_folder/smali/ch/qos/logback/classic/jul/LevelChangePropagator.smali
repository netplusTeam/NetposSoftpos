.class public Lch/qos/logback/classic/jul/LevelChangePropagator;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "LevelChangePropagator.java"

# interfaces
.implements Lch/qos/logback/classic/spi/LoggerContextListener;
.implements Lch/qos/logback/core/spi/LifeCycle;


# instance fields
.field isStarted:Z

.field private julLoggerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field resetJUL:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->julLoggerSet:Ljava/util/Set;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->isStarted:Z

    .line 36
    iput-boolean v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->resetJUL:Z

    return-void
.end method

.method private propagate(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V
    .locals 2
    .param p1, "logger"    # Lch/qos/logback/classic/Logger;
    .param p2, "level"    # Lch/qos/logback/classic/Level;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Propagating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onto the JUL framework"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/jul/LevelChangePropagator;->addInfo(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lch/qos/logback/classic/jul/JULHelper;->asJULLogger(Lch/qos/logback/classic/Logger;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 64
    .local v0, "julLogger":Ljava/util/logging/Logger;
    iget-object v1, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->julLoggerSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p2}, Lch/qos/logback/classic/jul/JULHelper;->asJULLevel(Lch/qos/logback/classic/Level;)Ljava/util/logging/Level;

    move-result-object v1

    .line 66
    .local v1, "julLevel":Ljava/util/logging/Level;
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 67
    return-void
.end method

.method private propagateExistingLoggerLevels()V
    .locals 5

    .line 84
    iget-object v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->context:Lch/qos/logback/core/Context;

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 85
    .local v0, "loggerContext":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getLoggerList()Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "loggerList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/classic/Logger;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/Logger;

    .line 87
    .local v3, "l":Lch/qos/logback/classic/Logger;
    invoke-virtual {v3}, Lch/qos/logback/classic/Logger;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {v3}, Lch/qos/logback/classic/Logger;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lch/qos/logback/classic/jul/LevelChangePropagator;->propagate(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V

    .line 90
    .end local v3    # "l":Lch/qos/logback/classic/Logger;
    :cond_0
    goto :goto_0

    .line 91
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public isResetResistant()Z
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->isStarted:Z

    return v0
.end method

.method public onLevelChange(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V
    .locals 0
    .param p1, "logger"    # Lch/qos/logback/classic/Logger;
    .param p2, "level"    # Lch/qos/logback/classic/Level;

    .line 56
    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/jul/LevelChangePropagator;->propagate(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V

    .line 57
    return-void
.end method

.method public onReset(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 50
    return-void
.end method

.method public onStart(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 47
    return-void
.end method

.method public onStop(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0
    .param p1, "context"    # Lch/qos/logback/classic/LoggerContext;

    .line 53
    return-void
.end method

.method public resetJULLevels()V
    .locals 6

    .line 70
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 72
    .local v0, "lm":Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 73
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "loggerName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    .line 76
    .local v3, "julLogger":Ljava/util/logging/Logger;
    invoke-static {v3}, Lch/qos/logback/classic/jul/JULHelper;->isRegularNonRootLogger(Ljava/util/logging/Logger;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting level of jul logger ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/jul/LevelChangePropagator;->addInfo(Ljava/lang/String;)V

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 80
    .end local v2    # "loggerName":Ljava/lang/String;
    .end local v3    # "julLogger":Ljava/util/logging/Logger;
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public setResetJUL(Z)V
    .locals 0
    .param p1, "resetJUL"    # Z

    .line 39
    iput-boolean p1, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->resetJUL:Z

    .line 40
    return-void
.end method

.method public start()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->resetJUL:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lch/qos/logback/classic/jul/LevelChangePropagator;->resetJULLevels()V

    .line 97
    :cond_0
    invoke-direct {p0}, Lch/qos/logback/classic/jul/LevelChangePropagator;->propagateExistingLoggerLevels()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->isStarted:Z

    .line 100
    return-void
.end method

.method public stop()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/jul/LevelChangePropagator;->isStarted:Z

    .line 104
    return-void
.end method
