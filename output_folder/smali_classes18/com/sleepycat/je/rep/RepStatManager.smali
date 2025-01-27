.class public Lcom/sleepycat/je/rep/RepStatManager;
.super Lcom/sleepycat/je/statcap/StatManager;
.source "RepStatManager.java"


# instance fields
.field private final updateRepMinMaxStat:Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 36
    invoke-direct {p0, p1}, Lcom/sleepycat/je/statcap/StatManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 31
    new-instance v0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->minStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->maxStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;-><init>(Lcom/sleepycat/je/statcap/StatManager;[Lcom/sleepycat/je/statcap/StatManager$SDef;[Lcom/sleepycat/je/statcap/StatManager$SDef;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/RepStatManager;->updateRepMinMaxStat:Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;

    .line 37
    return-void
.end method

.method private computeRepIntervalStats(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
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
            "Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;"
        }
    .end annotation

    .line 94
    .local p1, "current":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .local p2, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    new-instance v0, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;-><init>()V

    .line 95
    .local v0, "envStats":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 96
    .local v2, "cg":Lcom/sleepycat/je/utilint/StatGroup;
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/StatGroup;

    .line 98
    .local v3, "bg":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->computeInterval(Lcom/sleepycat/je/utilint/StatGroup;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->setStatGroup(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 99
    .end local v3    # "bg":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_1

    .line 100
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->setStatGroup(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 102
    .end local v2    # "cg":Lcom/sleepycat/je/utilint/StatGroup;
    :goto_1
    goto :goto_0

    .line 103
    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getRepStats(Lcom/sleepycat/je/StatsConfig;Ljava/lang/Integer;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .locals 10
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .param p2, "contextKey"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/RepStatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/statcap/StatManager$StatContext;

    .line 44
    .local v0, "sc":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    if-eqz v0, :cond_7

    .line 48
    iget-object v1, p0, Lcom/sleepycat/je/rep/RepStatManager;->env:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 49
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getStatsInternal(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .local v1, "rstat":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 51
    monitor-exit p0

    return-object v2

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->getStatGroupsMap()Ljava/util/Map;

    move-result-object v3

    .line 54
    .local v3, "cur":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    invoke-virtual {v0}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getRepBase()Ljava/util/Map;

    move-result-object v4

    .line 57
    .local v4, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    if-eqz v4, :cond_1

    .line 58
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/rep/RepStatManager;->computeRepIntervalStats(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v5

    .local v5, "intervalStats":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    goto :goto_0

    .line 60
    .end local v5    # "intervalStats":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .end local p0    # "this":Lcom/sleepycat/je/rep/RepStatManager;
    :cond_1
    move-object v5, v1

    .line 63
    .restart local v5    # "intervalStats":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 65
    iget-object v6, p0, Lcom/sleepycat/je/rep/RepStatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/statcap/StatManager$StatContext;

    .line 66
    .local v7, "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    invoke-virtual {v7}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getRepBase()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 67
    iget-object v8, p0, Lcom/sleepycat/je/rep/RepStatManager;->updateRepMinMaxStat:Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;

    invoke-virtual {v7}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getRepBase()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->updateBase(Ljava/util/Map;Ljava/util/Map;)V

    .line 69
    .end local v7    # "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    :cond_2
    goto :goto_1

    .line 71
    :cond_3
    iget-object v6, p0, Lcom/sleepycat/je/rep/RepStatManager;->statContextMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/statcap/StatManager$StatContext;

    .line 72
    .restart local v7    # "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    if-ne v7, v0, :cond_4

    .line 73
    invoke-virtual {v7, v2}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->setRepBase(Ljava/util/Map;)V

    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {v7}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getRepBase()Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_5

    .line 76
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/rep/RepStatManager;->cloneAndNegate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->setRepBase(Ljava/util/Map;)V

    goto :goto_3

    .line 79
    :cond_5
    nop

    .line 81
    invoke-virtual {v7}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->getRepBase()Ljava/util/Map;

    move-result-object v8

    .line 80
    invoke-direct {p0, v8, v3}, Lcom/sleepycat/je/rep/RepStatManager;->computeRepIntervalStats(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;

    move-result-object v8

    .line 81
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;->getStatGroupsMap()Ljava/util/Map;

    move-result-object v8

    .line 79
    invoke-virtual {v7, v8}, Lcom/sleepycat/je/statcap/StatManager$StatContext;->setRepBase(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v7    # "context":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    :goto_3
    goto :goto_2

    .line 87
    :cond_6
    monitor-exit p0

    return-object v5

    .line 45
    .end local v1    # "rstat":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    .end local v3    # "cur":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .end local v4    # "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .end local v5    # "intervalStats":Lcom/sleepycat/je/rep/ReplicatedEnvironmentStats;
    :cond_7
    :try_start_2
    const-string v1, "Internal error stat context is not registered"

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .end local v0    # "sc":Lcom/sleepycat/je/statcap/StatManager$StatContext;
    .end local p1    # "config":Lcom/sleepycat/je/StatsConfig;
    .end local p2    # "contextKey":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
