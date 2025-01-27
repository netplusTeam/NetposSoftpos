.class public Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
.super Lcom/sleepycat/je/utilint/MapStat;
.source "LatencyPercentileMapStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStat<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LatencyPercentile;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final maxTrackedLatencyMillis:I

.field private final percentile:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;)V
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    .line 100
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/MapStat;)V

    .line 101
    iget v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->percentile:F

    iput v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->percentile:F

    .line 102
    iget v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->maxTrackedLatencyMillis:I

    iput v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->maxTrackedLatencyMillis:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V
    .locals 1
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "percentile"    # F

    .line 57
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;FI)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;FI)V
    .locals 4
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "percentile"    # F
    .param p4, "maxTrackedLatencyMillis"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 79
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_2

    .line 84
    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    float-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 89
    iput p3, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->percentile:F

    .line 90
    if-ltz p4, :cond_0

    .line 95
    iput p4, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->maxTrackedLatencyMillis:I

    .line 96
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maxTrackedLatencyMillis must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Percentile must not be less than 0.0 or greater than 1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stat type must be INCREMENTAL, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
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
.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;"
        }
    .end annotation

    .line 132
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    if-eqz v0, :cond_2

    .line 137
    nop

    .line 138
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    .line 139
    .local v0, "other":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->copy()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object v1

    .line 140
    .local v1, "result":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    monitor-enter v1

    .line 141
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    iget-object v2, v1, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->statMap:Ljava/util/Map;

    .line 143
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LatencyPercentile;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 146
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LatencyPercentile;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 148
    .local v5, "stat":Lcom/sleepycat/je/utilint/LatencyPercentile;
    iget-object v6, v0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 149
    .local v6, "otherStat":Lcom/sleepycat/je/utilint/LatencyPercentile;
    if-eqz v6, :cond_0

    .line 150
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/utilint/LatencyPercentile;->updateInterval(Lcom/sleepycat/je/utilint/LatencyPercentile;)V

    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 154
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LatencyPercentile;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "stat":Lcom/sleepycat/je/utilint/LatencyPercentile;
    .end local v6    # "otherStat":Lcom/sleepycat/je/utilint/LatencyPercentile;
    :goto_1
    goto :goto_0

    .line 155
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LatencyPercentile;>;>;"
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    return-object v1

    .line 155
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "other":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .end local v1    # "result":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .end local p1    # "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    :try_start_4
    throw v2

    .line 156
    .restart local v0    # "other":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .restart local v1    # "result":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .restart local p1    # "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 133
    .end local v0    # "other":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .end local v1    # "result":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base stat must be a LatencyPercentileMapStat, found: "

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

    .line 26
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->copy()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .locals 1

    .line 122
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;-><init>(Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->copy()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LatencyPercentile;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 114
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->percentile:F

    iget v3, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->maxTrackedLatencyMillis:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/LatencyPercentile;-><init>(Ljava/lang/String;FI)V

    .line 116
    .local v0, "stat":Lcom/sleepycat/je/utilint/LatencyPercentile;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-object v0

    .line 111
    .end local v0    # "stat":Lcom/sleepycat/je/utilint/LatencyPercentile;
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 112
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized negate()V
    .locals 2

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->statMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 165
    .local v1, "latency":Lcom/sleepycat/je/utilint/LatencyPercentile;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LatencyPercentile;->negate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v1    # "latency":Lcom/sleepycat/je/utilint/LatencyPercentile;
    goto :goto_0

    .line 167
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;
    :cond_0
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
