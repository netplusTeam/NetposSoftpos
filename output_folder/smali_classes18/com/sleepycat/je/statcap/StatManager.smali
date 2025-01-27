.class public Lcom/sleepycat/je/statcap/StatManager;
.super Ljava/lang/Object;
.source "StatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;,
        Lcom/sleepycat/je/statcap/StatManager$SDef;,
        Lcom/sleepycat/je/statcap/StatManager$StatContext;
    }
.end annotation


# instance fields
.field protected final env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field protected final statContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/je/statcap/StatManager$StatContext;",
            ">;"
        }
    .end annotation
.end field

.field private final updateMinMaxStat:Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatManager;->statContextMap:Ljava/util/Map;

    .line 58
    new-instance v0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;

    sget-object v1, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->minStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->maxStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;-><init>(Lcom/sleepycat/je/statcap/StatManager;[Lcom/sleepycat/je/statcap/StatManager$SDef;[Lcom/sleepycat/je/statcap/StatManager$SDef;)V

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatManager;->updateMinMaxStat:Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;

    .line 65
    iput-object p1, p0, Lcom/sleepycat/je/statcap/StatManager;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 66
    return-void
.end method

.method private computeIntervalStats(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/je/EnvironmentStats;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;)",
            "Lcom/sleepycat/je/EnvironmentStats;"
        }
    .end annotation

    .line 135
    .local p1, "current":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .local p2, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    new-instance v0, Lcom/sleepycat/je/EnvironmentStats;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentStats;-><init>()V

    .line 137
    .local v0, "envStats":Lcom/sleepycat/je/EnvironmentStats;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 138
    .local v2, "cg":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/StatGroup;

    .line 139
    .local v3, "bg":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->computeInterval(Lcom/sleepycat/je/utilint/StatGroup;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/EnvironmentStats;->setStatGroup(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 140
    .end local v2    # "cg":Lcom/sleepycat/je/utilint/StatGroup;
    .end local v3    # "bg":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 141
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected cloneAndNegate(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;"
        }
    .end annotation

    .line 145
    .local p1, "in":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v0, "retval":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 147
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/StatGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    .line 148
    .local v3, "negatedGroup":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/StatGroup;->negate()V

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .end local v3    # "negatedGroup":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_0

    .line 151
    :cond_0
    return-object v0
.end method

.method public declared-synchronized loadStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/EnvironmentStats;
    .locals 9
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .param p2, "contextKey"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/statcap/StatManager$StatContext;

    .line 84
    .local v0, "sc":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    if-eqz v0, :cond_6

    .line 89
    iget-object v1, p0, Lcom/sleepycat/je/statcap/StatManager;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->loadStatsInternal(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v1

    .line 90
    .local v1, "curstats":Lcom/sleepycat/je/EnvironmentStats;
    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroupsMap()Ljava/util/Map;

    move-result-object v2

    .line 93
    .local v2, "cur":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getBase()Ljava/util/Map;

    move-result-object v3

    .line 95
    .local v3, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    if-eqz v3, :cond_0

    .line 96
    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/statcap/StatManager;->computeIntervalStats(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v4

    .local v4, "intervalStats":Lcom/sleepycat/je/EnvironmentStats;
    goto :goto_0

    .line 98
    .end local v4    # "intervalStats":Lcom/sleepycat/je/EnvironmentStats;
    .end local p0    # "this":Lcom/sleepycat/je/statcap/StatManager;
    :cond_0
    move-object v4, v1

    .line 101
    .restart local v4    # "intervalStats":Lcom/sleepycat/je/EnvironmentStats;
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 107
    iget-object v5, p0, Lcom/sleepycat/je/statcap/StatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/statcap/StatManager$StatContext;

    .line 108
    .local v6, "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    invoke-virtual {v6}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getBase()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 109
    iget-object v7, p0, Lcom/sleepycat/je/statcap/StatManager;->updateMinMaxStat:Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;

    invoke-virtual {v6}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getBase()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->updateBase(Ljava/util/Map;Ljava/util/Map;)V

    .line 111
    .end local v6    # "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    :cond_1
    goto :goto_1

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/sleepycat/je/statcap/StatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/statcap/StatManager$StatContext;

    .line 114
    .restart local v6    # "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    if-ne v6, v0, :cond_3

    .line 115
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->setBase(Ljava/util/Map;)V

    goto :goto_3

    .line 117
    :cond_3
    invoke-virtual {v6}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getBase()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_4

    .line 118
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/statcap/StatManager;->cloneAndNegate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->setBase(Ljava/util/Map;)V

    goto :goto_3

    .line 121
    :cond_4
    nop

    .line 123
    invoke-virtual {v6}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getBase()Ljava/util/Map;

    move-result-object v7

    .line 122
    invoke-direct {p0, v7, v2}, Lcom/sleepycat/je/statcap/StatManager;->computeIntervalStats(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v7

    .line 123
    invoke-virtual {v7}, Lcom/sleepycat/je/EnvironmentStats;->getStatGroupsMap()Ljava/util/Map;

    move-result-object v7

    .line 121
    invoke-virtual {v6, v7}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->setBase(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v6    # "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    :goto_3
    goto :goto_2

    .line 128
    :cond_5
    monitor-exit p0

    return-object v4

    .line 85
    .end local v1    # "curstats":Lcom/sleepycat/je/EnvironmentStats;
    .end local v2    # "cur":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .end local v3    # "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .end local v4    # "intervalStats":Lcom/sleepycat/je/EnvironmentStats;
    :cond_6
    :try_start_1
    const-string v1, "Internal error stat context is not registered"

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v0    # "sc":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    .end local p1    # "config":Lcom/sleepycat/je/StatsConfig;
    .end local p2    # "contextKey":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerStatContext()Ljava/lang/Integer;
    .locals 5

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/statcap/StatManager$StatContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/statcap/StatManager$StatContext;-><init>(Lcom/sleepycat/je/statcap/StatManager;Ljava/util/Map;)V

    .line 70
    .local v0, "sctx":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    const/4 v1, 0x0

    .line 71
    .local v1, "max":I
    iget-object v2, p0, Lcom/sleepycat/je/statcap/StatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 72
    .local v3, "key":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v4

    .line 75
    .end local v3    # "key":Ljava/lang/Integer;
    .end local p0    # "this":Lcom/sleepycat/je/statcap/StatManager;
    :cond_0
    goto :goto_0

    .line 76
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    .local v2, "newkey":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-object v2

    .line 68
    .end local v0    # "sctx":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    .end local v1    # "max":I
    .end local v2    # "newkey":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
