.class public Lcom/sleepycat/je/util/ConsoleHandler;
.super Ljava/util/logging/ConsoleHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor <init>(Ljava/util/logging/Formatter;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "formatter"    # Ljava/util/logging/Formatter;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 48
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/util/ConsoleHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "level":Ljava/util/logging/Level;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "propertyName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 57
    nop

    .line 58
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->JE_CONSOLE_LEVEL:Lcom/sleepycat/je/config/ConfigParam;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getHandlerLevel(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "levelProperty":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 65
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v2}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 71
    .end local v2    # "levelProperty":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/util/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 72
    return-void
.end method
