.class public Lcom/sleepycat/je/statcap/StatCapture;
.super Lcom/sleepycat/je/utilint/DaemonThread;
.source "StatCapture.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# static fields
.field private static final CUSTOMGROUPNAME:Ljava/lang/String; = "Custom"

.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final DELIMITERANDSPACE:Ljava/lang/String; = ", "

.field public static final STATFILEEXT:Ljava/lang/String; = "csv"

.field public static final STATFILENAME:Ljava/lang/String; = "je.stat"


# instance fields
.field private currentHeader:Ljava/lang/String;

.field private final customStatHeader:[Ljava/lang/String;

.field private final customStats:Lcom/sleepycat/je/CustomStats;

.field private final jvmstats:Lcom/sleepycat/je/statcap/JvmStats;

.field private lastCallException:Ljava/lang/Exception;

.field private final logger:Ljava/util/logging/Logger;

.field private final statKey:Ljava/lang/Integer;

.field private final statMgr:Lcom/sleepycat/je/statcap/StatManager;

.field private final statProjection:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final statsConfig:Lcom/sleepycat/je/StatsConfig;

.field private volatile stlog:Lcom/sleepycat/utilint/StatLogger;

.field private final values:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;JLcom/sleepycat/je/CustomStats;Ljava/util/SortedSet;Lcom/sleepycat/je/statcap/StatManager;)V
    .locals 6
    .param p1, "environment"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "waitTime"    # J
    .param p5, "customStats"    # Lcom/sleepycat/je/CustomStats;
    .param p7, "statMgr"    # Lcom/sleepycat/je/statcap/StatManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "Ljava/lang/String;",
            "J",
            "Lcom/sleepycat/je/CustomStats;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sleepycat/je/statcap/StatManager;",
            ")V"
        }
    .end annotation

    .line 81
    .local p6, "statProjection":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/sleepycat/je/utilint/DaemonThread;-><init>(JLjava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    .line 59
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    .line 60
    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->currentHeader:Ljava/lang/String;

    .line 62
    new-instance v1, Lcom/sleepycat/je/statcap/JvmStats;

    invoke-direct {v1}, Lcom/sleepycat/je/statcap/JvmStats;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->jvmstats:Lcom/sleepycat/je/statcap/JvmStats;

    .line 72
    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->lastCallException:Ljava/lang/Exception;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->logger:Ljava/util/logging/Logger;

    .line 84
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 86
    iput-object p7, p0, Lcom/sleepycat/je/statcap/StatCapture;->statMgr:Lcom/sleepycat/je/statcap/StatManager;

    .line 87
    invoke-virtual {p7}, Lcom/sleepycat/je/statcap/StatManager;->registerStatContext()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->statKey:Ljava/lang/Integer;

    .line 89
    iput-object p5, p0, Lcom/sleepycat/je/statcap/StatCapture;->customStats:Lcom/sleepycat/je/CustomStats;

    .line 90
    iput-object p6, p0, Lcom/sleepycat/je/statcap/StatCapture;->statProjection:Ljava/util/SortedSet;

    .line 97
    new-instance v2, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->statsConfig:Lcom/sleepycat/je/StatsConfig;

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/StatsConfig;->setClear(Z)Lcom/sleepycat/je/StatsConfig;

    .line 101
    invoke-virtual {v1, p6}, Lcom/sleepycat/je/statcap/JvmStats;->addVMStatDefs(Ljava/util/SortedSet;)V

    .line 103
    if-eqz p5, :cond_1

    .line 104
    invoke-interface {p5}, Lcom/sleepycat/je/CustomStats;->getFieldNames()[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "customFldNames":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->customStatHeader:[Ljava/lang/String;

    .line 106
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatCapture;->customStatHeader:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Custom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 109
    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatCapture;->customStatHeader:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p6, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "customFldNames":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 112
    :cond_1
    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->customStatHeader:[Ljava/lang/String;

    .line 115
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/je/statcap/StatCapture;->envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 116
    return-void
.end method

.method private collectStats()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getStats()Ljava/util/SortedMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->statMgr:Lcom/sleepycat/je/statcap/StatManager;

    iget-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->statsConfig:Lcom/sleepycat/je/StatsConfig;

    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatCapture;->statKey:Ljava/lang/Integer;

    .line 214
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/statcap/StatManager;->loadStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroups()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    .local v0, "envStats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/utilint/StatGroup;>;"
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->statsConfig:Lcom/sleepycat/je/StatsConfig;

    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatCapture;->statKey:Ljava/lang/Integer;

    .line 218
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getRepStatGroups(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v1

    .line 219
    .local v1, "rsg":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/utilint/StatGroup;>;"
    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 224
    .end local v1    # "rsg":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/utilint/StatGroup;>;"
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->jvmstats:Lcom/sleepycat/je/statcap/JvmStats;

    iget-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->statsConfig:Lcom/sleepycat/je/StatsConfig;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/statcap/JvmStats;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 228
    .local v1, "statsMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/StatGroup;

    .line 231
    .local v3, "sg":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/StatGroup;->getStats()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 233
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "mapName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/utilint/Stat;

    .line 236
    .local v7, "stat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/Stat;->isNotSet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 237
    const-string v8, " "

    invoke-interface {v1, v6, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v8

    .line 245
    .local v8, "val":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Float;

    if-nez v9, :cond_5

    instance-of v9, v8, Ljava/lang/Double;

    if-eqz v9, :cond_2

    goto :goto_2

    .line 247
    :cond_2
    instance-of v9, v8, Ljava/lang/Number;

    if-eqz v9, :cond_3

    .line 248
    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .local v9, "str":Ljava/lang/String;
    goto :goto_3

    .line 249
    .end local v9    # "str":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 250
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "str":Ljava/lang/String;
    goto :goto_3

    .line 252
    .end local v9    # "str":Ljava/lang/String;
    :cond_4
    const-string v9, " "

    .restart local v9    # "str":Ljava/lang/String;
    goto :goto_3

    .line 246
    .end local v9    # "str":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const-string v10, "%.2f"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 254
    .restart local v9    # "str":Ljava/lang/String;
    :goto_3
    invoke-interface {v1, v6, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    .end local v6    # "mapName":Ljava/lang/String;
    .end local v7    # "stat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    .end local v8    # "val":Ljava/lang/Object;
    .end local v9    # "str":Ljava/lang/String;
    goto :goto_1

    .line 256
    .end local v3    # "sg":Lcom/sleepycat/je/utilint/StatGroup;
    :cond_6
    goto/16 :goto_0

    .line 258
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->customStats:Lcom/sleepycat/je/CustomStats;

    if-eqz v2, :cond_8

    .line 259
    invoke-interface {v2}, Lcom/sleepycat/je/CustomStats;->getFieldValues()[Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "vals":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v2

    if-ge v3, v4, :cond_8

    .line 261
    iget-object v4, p0, Lcom/sleepycat/je/statcap/StatCapture;->customStatHeader:[Ljava/lang/String;

    aget-object v4, v4, v3

    aget-object v5, v2, v3

    invoke-interface {v1, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 264
    .end local v2    # "vals":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    return-object v1
.end method

.method private declared-synchronized outputStats()V
    .locals 8

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/statcap/StatCapture;->collectStats()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 159
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/statcap/StatCapture;->getStats()Ljava/util/SortedMap;

    move-result-object v0

    .line 161
    .local v0, "stats":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_5

    .line 162
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->currentHeader:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 164
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->statProjection:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    .local v1, "nameit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "statname":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    nop

    .end local v3    # "statname":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v1    # "nameit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/sleepycat/je/statcap/StatCapture;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/utilint/StatLogger;->setHeader(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->currentHeader:Ljava/lang/String;

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 175
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/statcap/StatUtils;->getDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->statProjection:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    .restart local v1    # "nameit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    .restart local v3    # "statname":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 182
    iget-object v5, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 184
    :cond_3
    iget-object v5, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    .end local v3    # "statname":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 187
    .end local v1    # "nameit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/utilint/StatLogger;->log(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->values:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->lastCallException:Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local v0    # "stats":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_3
    goto :goto_4

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->lastCallException:Ljava/lang/Exception;

    if-nez v1, :cond_6

    .line 203
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error accessing or writing statistics capture file  je.stat.csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 208
    :cond_6
    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->lastCallException:Ljava/lang/Exception;

    goto :goto_4

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->lastCallException:Ljava/lang/Exception;

    if-nez v1, :cond_7

    .line 194
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error accessing statistics capture file je.stat.csv IO Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 199
    :cond_7
    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->lastCallException:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 210
    :goto_4
    monitor-exit p0

    return-void

    .line 155
    :cond_8
    :goto_5
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 10
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "unused"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/statcap/StatCapture;->setWaitTime(J)V

    .line 274
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_COLLECT:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 275
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_MAX_FILES:Lcom/sleepycat/je/config/IntConfigParam;

    .line 281
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 283
    .local v0, "maxFiles":I
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->STATS_FILE_ROW_COUNT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 284
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v7

    .line 286
    .local v7, "fileRowCount":I
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    if-nez v1, :cond_1

    .line 288
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 289
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getStatsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, "statDir":Ljava/io/File;
    nop

    .line 293
    const-string v1, "je.stat"

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getPrefixedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "newStatFileName":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lcom/sleepycat/utilint/StatLogger;

    const-string v4, "csv"

    move-object v1, v9

    move-object v3, v8

    move v5, v0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/utilint/StatLogger;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v9, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    nop

    .line 306
    .end local v2    # "statDir":Ljava/io/File;
    .end local v8    # "newStatFileName":Ljava/lang/String;
    goto :goto_0

    .line 300
    .restart local v2    # "statDir":Ljava/io/File;
    .restart local v8    # "newStatFileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error accessing statistics capture file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "statDir":Ljava/io/File;
    .end local v8    # "newStatFileName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    invoke-virtual {v1, v0}, Lcom/sleepycat/utilint/StatLogger;->setFileCount(I)V

    .line 308
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    invoke-virtual {v1, v7}, Lcom/sleepycat/utilint/StatLogger;->setRowCount(I)V

    .line 310
    :goto_0
    return-void

    .line 276
    .end local v0    # "maxFiles":I
    .end local v7    # "fileRowCount":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->stlog:Lcom/sleepycat/utilint/StatLogger;

    .line 277
    return-void
.end method

.method protected onWakeup()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sleepycat/je/statcap/StatCapture;->collectStats()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/statcap/StatCapture;->outputStats()V

    .line 133
    return-void

    .line 129
    :cond_1
    :goto_0
    return-void
.end method

.method public requestShutdown()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/sleepycat/je/utilint/DaemonThread;->requestShutdown()V

    .line 146
    invoke-direct {p0}, Lcom/sleepycat/je/statcap/StatCapture;->collectStats()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatCapture;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/statcap/StatCapture;->outputStats()V

    .line 150
    return-void

    .line 147
    :cond_1
    :goto_0
    return-void
.end method
