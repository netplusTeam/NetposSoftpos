.class public Lcom/sleepycat/je/utilint/LongAvgMapStat;
.super Lcom/sleepycat/je/utilint/MapStat;
.source "LongAvgMapStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStat<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongAvg;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LongAvgMapStat;)V
    .locals 0
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvgMapStat;

    .line 48
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/MapStat;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 3
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 40
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_0

    .line 45
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stat type must be INCREMENTAL, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LongAvgMapStat;"
        }
    .end annotation

    .line 76
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LongAvgMapStat;

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongAvgMapStat;

    .line 81
    .local v0, "other":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgMapStat;->copy()Lcom/sleepycat/je/utilint/LongAvgMapStat;

    move-result-object v1

    .line 82
    .local v1, "result":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    monitor-enter v1

    .line 83
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    iget-object v2, v1, Lcom/sleepycat/je/utilint/LongAvgMapStat;->statMap:Ljava/util/Map;

    .line 85
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 86
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvg;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 88
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvg;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/utilint/LongAvg;

    .line 90
    .local v5, "stat":Lcom/sleepycat/je/utilint/LongAvg;
    iget-object v6, v0, Lcom/sleepycat/je/utilint/LongAvgMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/utilint/LongAvg;

    .line 91
    .local v6, "otherStat":Lcom/sleepycat/je/utilint/LongAvg;
    if-eqz v6, :cond_0

    .line 92
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/utilint/LongAvg;->updateInterval(Lcom/sleepycat/je/utilint/LongAvg;)V

    goto :goto_1

    .line 94
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 96
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvg;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "stat":Lcom/sleepycat/je/utilint/LongAvg;
    .end local v6    # "otherStat":Lcom/sleepycat/je/utilint/LongAvg;
    :goto_1
    goto :goto_0

    .line 97
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvg;>;>;"
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    return-object v1

    .line 97
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "other":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .end local v1    # "result":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .end local p1    # "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    :try_start_4
    throw v2

    .line 98
    .restart local v0    # "other":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .restart local v1    # "result":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .restart local p1    # "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 77
    .end local v0    # "other":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .end local v1    # "result":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other stat must be a LongAvgMapStat, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongAvgMapStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongAvgMapStat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgMapStat;->copy()Lcom/sleepycat/je/utilint/LongAvgMapStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .locals 1

    .line 66
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgMapStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongAvgMapStat;-><init>(Lcom/sleepycat/je/utilint/LongAvgMapStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgMapStat;->copy()Lcom/sleepycat/je/utilint/LongAvgMapStat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LongAvg;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvg;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/LongAvg;-><init>()V

    .line 60
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongAvg;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongAvgMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-object v0

    .line 57
    .end local v0    # "stat":Lcom/sleepycat/je/utilint/LongAvg;
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 58
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized negate()V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/LongAvg;

    .line 105
    .local v1, "avg":Lcom/sleepycat/je/utilint/LongAvg;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongAvg;->negate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v1    # "avg":Lcom/sleepycat/je/utilint/LongAvg;
    goto :goto_0

    .line 107
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgMapStat;
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
