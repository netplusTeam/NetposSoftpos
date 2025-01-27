.class public Lcom/sleepycat/je/utilint/LoggerUtils;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# static fields
.field public static final FIXED_PREFIX:Ljava/lang/String; = ".fixedPrefix"

.field public static final NO_ENV:Ljava/lang/String; = ".noEnv"

.field private static final PUSH_LEVEL:Ljava/lang/String; = ".push.level"

.field static final envMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field static final formatterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Ljava/util/logging/Formatter;",
            ">;"
        }
    .end annotation
.end field

.field private static final fullThreadDumpMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->formatterMap:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->fullThreadDumpMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 311
    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 321
    .local v0, "logger":Ljava/util/logging/Logger;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 323
    return-object v0
.end method

.method public static envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "logLevel"    # Ljava/util/logging/Level;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v0, p1, p0, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public static exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 444
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public static finer(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 450
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public static finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 456
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public static fullThreadDump(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;)V
    .locals 10
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "level"    # Ljava/util/logging/Level;

    .line 574
    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    return-void

    .line 578
    :cond_0
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->fullThreadDumpMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    if-eqz p1, :cond_2

    .line 581
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDidFullThreadDump()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    monitor-exit v0

    return-void

    .line 585
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->setDidFullThreadDump(Z)V

    .line 589
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    .line 592
    .local v1, "stackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 593
    .local v3, "stme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, p2, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 594
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 595
    .local v7, "ste":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, p1, p2, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 594
    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 597
    .end local v3    # "stme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_3
    goto :goto_0

    .line 598
    .end local v1    # "stackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_4
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandlerLevel(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/config/ConfigParam;Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 4
    .param p0, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p1, "param"    # Lcom/sleepycat/je/config/ConfigParam;
    .param p2, "levelName"    # Ljava/lang/String;

    .line 540
    const/4 v0, 0x0

    .line 543
    .local v0, "changed":Z
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "level":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sleepycat/je/config/ConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    const/4 v0, 0x1

    .line 549
    :cond_0
    invoke-static {p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "propertyLevel":Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 556
    move-object v1, v2

    .line 559
    :cond_1
    invoke-static {v1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v3

    return-object v3
.end method

.method public static getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .line 164
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->createLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 167
    .local v0, "logger":Ljava/util/logging/Logger;
    const/4 v1, 0x0

    .line 168
    .local v1, "hasConsoleHandler":Z
    const/4 v2, 0x0

    .line 169
    .local v2, "hasFileHandler":Z
    const/4 v3, 0x0

    .line 176
    .local v3, "hasConfiguredHandler":Z
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    .line 177
    .local v4, "handlers":[Ljava/util/logging/Handler;
    if-eqz v4, :cond_3

    .line 178
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 189
    .local v7, "h":Ljava/util/logging/Handler;
    instance-of v8, v7, Ljava/util/logging/ConsoleHandler;

    if-eqz v8, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 193
    :cond_0
    instance-of v8, v7, Lcom/sleepycat/je/utilint/FileRedirectHandler;

    if-eqz v8, :cond_1

    .line 194
    const/4 v2, 0x1

    .line 197
    :cond_1
    instance-of v8, v7, Lcom/sleepycat/je/utilint/ConfiguredRedirectHandler;

    if-eqz v8, :cond_2

    .line 198
    const/4 v3, 0x1

    .line 178
    .end local v7    # "h":Ljava/util/logging/Handler;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 203
    :cond_3
    if-nez v1, :cond_4

    .line 204
    new-instance v5, Lcom/sleepycat/je/utilint/ConsoleRedirectHandler;

    invoke-direct {v5}, Lcom/sleepycat/je/utilint/ConsoleRedirectHandler;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 207
    :cond_4
    if-nez v2, :cond_5

    .line 208
    new-instance v5, Lcom/sleepycat/je/utilint/FileRedirectHandler;

    invoke-direct {v5}, Lcom/sleepycat/je/utilint/FileRedirectHandler;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 211
    :cond_5
    if-nez v3, :cond_6

    .line 212
    new-instance v5, Lcom/sleepycat/je/utilint/ConfiguredRedirectHandler;

    invoke-direct {v5}, Lcom/sleepycat/je/utilint/ConfiguredRedirectHandler;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 215
    :cond_6
    return-object v0
.end method

.method public static getLoggerFixedPrefix(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .line 252
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFixedPrefix(Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggerFixedPrefix(Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/util/logging/Logger;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ")",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .line 269
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fixedPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->createLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 272
    .local v0, "logger":Ljava/util/logging/Logger;
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->hasConsoleHandler(Ljava/util/logging/Logger;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    new-instance v1, Lcom/sleepycat/je/util/ConsoleHandler;

    new-instance v2, Lcom/sleepycat/je/utilint/TracerFormatter;

    invoke-direct {v2, p1}, Lcom/sleepycat/je/utilint/TracerFormatter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Lcom/sleepycat/je/util/ConsoleHandler;-><init>(Ljava/util/logging/Formatter;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 277
    :cond_0
    return-object v0
.end method

.method public static getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .line 239
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".noEnv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->createLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 242
    .local v0, "logger":Ljava/util/logging/Logger;
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->hasConsoleHandler(Ljava/util/logging/Logger;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Lcom/sleepycat/je/utilint/FormatterRedirectHandler;

    invoke-direct {v1}, Lcom/sleepycat/je/utilint/FormatterRedirectHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 246
    :cond_0
    return-object v0
.end method

.method public static getLoggerProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;

    .line 329
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 331
    .local v0, "mgr":Ljava/util/logging/LogManager;
    invoke-virtual {v0, p0}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPushLevel(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".push.level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "propertyValue":Ljava/lang/String;
    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 341
    .local v1, "level":Ljava/util/logging/Level;
    if-eqz v0, :cond_0

    .line 342
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    .line 345
    :cond_0
    return-object v1
.end method

.method public static getStackTrace()Ljava/lang/String;
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 521
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 522
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 523
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "stackTrace":Ljava/lang/String;
    const-string v2, "&lt"

    const-string v3, "<"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    const-string v2, "&gt"

    const-string v3, ">"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    return-object v1
.end method

.method private static hasConsoleHandler(Ljava/util/logging/Logger;)Z
    .locals 6
    .param p0, "logger"    # Ljava/util/logging/Logger;

    .line 290
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 291
    .local v0, "handlers":[Ljava/util/logging/Handler;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 292
    return v1

    .line 295
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 296
    .local v4, "h":Ljava/util/logging/Handler;
    instance-of v5, v4, Ljava/util/logging/ConsoleHandler;

    if-eqz v5, :cond_1

    .line 297
    const/4 v1, 0x1

    return v1

    .line 295
    .end local v4    # "h":Ljava/util/logging/Handler;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_2
    return v1
.end method

.method public static info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 438
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public static logMsg(Lcom/sleepycat/je/utilint/RateLimitingLogger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Object;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "logLevel"    # Ljava/util/logging/Level;
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/je/utilint/RateLimitingLogger<",
            "TT;>;",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "TT;",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 382
    .local p0, "useLogger":Lcom/sleepycat/je/utilint/RateLimitingLogger;, "Lcom/sleepycat/je/utilint/RateLimitingLogger<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 383
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/sleepycat/je/utilint/RateLimitingLogger;->log(Ljava/lang/Object;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    nop

    .line 391
    return-void

    .line 389
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public static logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 0
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;
    .param p3, "logLevel"    # Ljava/util/logging/Level;
    .param p4, "msg"    # Ljava/lang/String;

    .line 415
    if-eqz p1, :cond_0

    .line 416
    invoke-static {p0, p1, p3, p4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void
.end method

.method public static logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "logLevel"    # Ljava/util/logging/Level;
    .param p3, "msg"    # Ljava/lang/String;

    .line 359
    if-eqz p1, :cond_0

    .line 360
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public static logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "formatter"    # Ljava/util/logging/Formatter;
    .param p2, "logLevel"    # Ljava/util/logging/Level;
    .param p3, "msg"    # Ljava/lang/String;

    .line 470
    if-eqz p1, :cond_0

    .line 471
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->formatterMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->formatterMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    nop

    .line 479
    return-void

    .line 477
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sleepycat/je/utilint/LoggerUtils;->formatterMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public static severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 426
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static traceAndLog(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 0
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "logLevel"    # Ljava/util/logging/Level;
    .param p3, "msg"    # Ljava/lang/String;

    .line 515
    invoke-static {p0, p1, p2, p3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 516
    invoke-static {p1, p3}, Lcom/sleepycat/je/log/Trace;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public static traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "traceMsg":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 495
    invoke-virtual {v2, v3, p1, p2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    nop

    .line 499
    invoke-static {p0, v0}, Lcom/sleepycat/je/log/Trace;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 500
    return-void

    .line 497
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/sleepycat/je/utilint/LoggerUtils;->envMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method

.method public static warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "useLogger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msg"    # Ljava/lang/String;

    .line 432
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 433
    return-void
.end method
