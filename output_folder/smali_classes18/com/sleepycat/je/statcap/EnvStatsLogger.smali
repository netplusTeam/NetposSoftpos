.class public Lcom/sleepycat/je/statcap/EnvStatsLogger;
.super Ljava/lang/Object;
.source "EnvStatsLogger.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final MAXFILECOUNT:I = 0x2

.field private static final MAXROWCOUNT:I = 0x3e8

.field private static final QUOTE:Ljava/lang/String; = "\""

.field public static final STATFILEEXT:Ljava/lang/String; = "csv"

.field public static final STATFILENAME:Ljava/lang/String; = "je.config"


# instance fields
.field private final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final logger:Ljava/util/logging/Logger;

.field private final sb:Ljava/lang/StringBuffer;

.field private stlog:Lcom/sleepycat/utilint/StatLogger;

.field private final valb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 8
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->valb:Ljava/lang/StringBuffer;

    .line 54
    iput-object p1, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->logger:Ljava/util/logging/Logger;

    .line 56
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getStatsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "statDir":Ljava/io/File;
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 61
    const-string v1, "je.config"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getPrefixedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "newStatFileName":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lcom/sleepycat/utilint/StatLogger;

    const-string v4, "csv"

    const/4 v5, 0x2

    const/16 v6, 0x3e8

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/utilint/StatLogger;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v7, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->stlog:Lcom/sleepycat/utilint/StatLogger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing statistics capture file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "csv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IO Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addSystemStats(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "statmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v0

    .line 120
    .local v0, "osbean":Ljava/lang/management/OperatingSystemMXBean;
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v1

    .line 122
    .local v1, "memoryBean":Ljava/lang/management/MemoryMXBean;
    sget-object v2, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 123
    invoke-virtual {v2}, Lcom/sleepycat/je/JEVersion;->getVersionString()Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "je:version"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java:version"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "java.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java:vendor"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {v0}, Ljava/lang/management/OperatingSystemMXBean;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "os:name"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v0}, Ljava/lang/management/OperatingSystemMXBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "os:version"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v0}, Ljava/lang/management/OperatingSystemMXBean;->getArch()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mc:arch"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    nop

    .line 130
    invoke-interface {v0}, Ljava/lang/management/OperatingSystemMXBean;->getAvailableProcessors()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v3, "mc:processors"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    nop

    .line 132
    invoke-interface {v1}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/management/MemoryUsage;->getInit()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v3, "java:minMemory"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    nop

    .line 134
    invoke-interface {v1}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/management/MemoryUsage;->getMax()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v3, "java:maxMemory"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    .local v5, "arg":Ljava/lang/String;
    iget-object v6, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .end local v5    # "arg":Ljava/lang/String;
    goto :goto_0

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "java:args"

    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v3, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 0
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "newConfig"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 113
    invoke-virtual {p0}, Lcom/sleepycat/je/statcap/EnvStatsLogger;->log()V

    .line 114
    return-void
.end method

.method public log()V
    .locals 9

    .line 78
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 79
    .local v0, "envConfigMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->cloneConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    .line 81
    .local v1, "mc":Lcom/sleepycat/je/EnvironmentConfig;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->SUPPORTED_PARAMS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "colname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "envcfg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/EnvironmentConfig;->getConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v3    # "colname":Ljava/lang/String;
    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/statcap/EnvStatsLogger;->addSystemStats(Ljava/util/Map;)V

    .line 85
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 86
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->valb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 87
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    const-string/jumbo v4, "time"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->valb:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/je/statcap/StatUtils;->getDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 90
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    iget-object v5, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v5, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->valb:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v5, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->valb:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 98
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->stlog:Lcom/sleepycat/utilint/StatLogger;

    iget-object v4, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sleepycat/utilint/StatLogger;->setHeader(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->stlog:Lcom/sleepycat/utilint/StatLogger;

    iget-object v4, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->valb:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sleepycat/utilint/StatLogger;->logDelta(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_2

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Error accessing environment statistics file je.config.csv IO Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 106
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 107
    iget-object v2, p0, Lcom/sleepycat/je/statcap/EnvStatsLogger;->valb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 108
    return-void
.end method
