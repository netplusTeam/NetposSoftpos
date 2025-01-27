.class public final Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
.super Lcom/sleepycat/je/utilint/MapStat;
.source "LongAvgRateMapStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStat<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongAvgRate;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final periodMillis:J

.field private removeStatTimestamp:J

.field private final reportTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LongAvgRateMapStat;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    .line 66
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/MapStat;)V

    .line 67
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->periodMillis:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->periodMillis:J

    .line 68
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->removeStatTimestamp:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->removeStatTimestamp:J

    .line 72
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    :try_start_4
    throw v0

    .line 73
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "periodMillis"    # J
    .param p5, "reportTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 58
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_2

    .line 59
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 60
    if-eqz p5, :cond_0

    .line 61
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->periodMillis:J

    .line 62
    iput-object p5, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 63
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private declared-synchronized getLatestTime()J
    .locals 6

    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->removeStatTimestamp:J

    .line 169
    .local v0, "latestTime":J
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 170
    .local v3, "stat":Lcom/sleepycat/je/utilint/LongAvgRate;
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongAvgRate;->getPrevTime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v4

    .line 171
    .end local v3    # "stat":Lcom/sleepycat/je/utilint/LongAvgRate;
    goto :goto_0

    .line 172
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    :cond_0
    monitor-exit p0

    return-wide v0

    .line 167
    .end local v0    # "latestTime":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateLatest(Lcom/sleepycat/je/utilint/LongAvgRateMapStat;)Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .locals 5
    .param p1, "latest"    # Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    monitor-enter p0

    .line 138
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->statMap:Ljava/util/Map;

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvgRate;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvgRate;>;"
    iget-object v2, p1, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->statMap:Ljava/util/Map;

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 145
    .local v2, "latestStat":Lcom/sleepycat/je/utilint/LongAvgRate;
    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/utilint/LongAvgRate;->add(Lcom/sleepycat/je/utilint/LongAvgRate;)V

    goto :goto_1

    .line 148
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 150
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvgRate;>;"
    .end local v2    # "latestStat":Lcom/sleepycat/je/utilint/LongAvgRate;
    :goto_1
    goto :goto_0

    .line 153
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvgRate;>;>;"
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvgRate;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/LongAvgRate;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 159
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return-object p0

    .line 159
    :catchall_0
    move-exception v0

    :goto_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 137
    .end local p1    # "latest":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LongAvgRateMapStat;"
        }
    .end annotation

    .line 120
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->copy()Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object v0

    .line 122
    .local v0, "copy":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    nop

    .line 123
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    .line 124
    .local v1, "baseCopy":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    invoke-direct {v0}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->getLatestTime()J

    move-result-wide v2

    invoke-direct {v1}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->getLatestTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 125
    invoke-direct {v0, v1}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->updateLatest(Lcom/sleepycat/je/utilint/LongAvgRateMapStat;)Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object v2

    return-object v2

    .line 127
    :cond_0
    invoke-direct {v1, v0}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->updateLatest(Lcom/sleepycat/je/utilint/LongAvgRateMapStat;)Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object v2

    return-object v2

    .line 120
    .end local v0    # "copy":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .end local v1    # "baseCopy":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->copy()Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .locals 1

    .line 107
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;-><init>(Lcom/sleepycat/je/utilint/LongAvgRateMapStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->copy()Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LongAvgRate;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 85
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

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->periodMillis:J

    iget-object v4, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->reportTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongAvgRate;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 86
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongAvgRate;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-object v0

    .line 82
    .end local v0    # "stat":Lcom/sleepycat/je/utilint/LongAvgRate;
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 83
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized negate()V
    .locals 0

    monitor-enter p0

    .line 177
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeStat(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->removeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeStat(Ljava/lang/String;J)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    monitor-enter p0

    .line 101
    :try_start_0
    iput-wide p2, p0, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->removeStatTimestamp:J

    .line 102
    invoke-super {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;->removeStat(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongAvgRateMapStat;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
