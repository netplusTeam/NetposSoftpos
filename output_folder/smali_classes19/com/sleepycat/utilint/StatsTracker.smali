.class public Lcom/sleepycat/utilint/StatsTracker;
.super Ljava/lang/Object;
.source "StatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final activityCounter:Lcom/sleepycat/utilint/ActivityCounter;

.field private final cumulativeLatencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lcom/sleepycat/utilint/LatencyStat;",
            ">;"
        }
    .end annotation
.end field

.field private final intervalLatencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lcom/sleepycat/utilint/LatencyStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;Ljava/util/logging/Logger;IJII)V
    .locals 8
    .param p2, "stackTraceLogger"    # Ljava/util/logging/Logger;
    .param p3, "activeThreadThreshold"    # I
    .param p4, "threadDumpIntervalMillis"    # J
    .param p6, "threadDumpMax"    # I
    .param p7, "maxTrackedLatencyMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/logging/Logger;",
            "IJII)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    .local p1, "opTypes":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->intervalLatencies:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->cumulativeLatencies:Ljava/util/Map;

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 52
    .local v2, "opType":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/sleepycat/utilint/StatsTracker;->intervalLatencies:Ljava/util/Map;

    new-instance v4, Lcom/sleepycat/utilint/LatencyStat;

    int-to-long v5, p7

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/utilint/LatencyStat;-><init>(J)V

    .line 53
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v3, p0, Lcom/sleepycat/utilint/StatsTracker;->cumulativeLatencies:Ljava/util/Map;

    new-instance v4, Lcom/sleepycat/utilint/LatencyStat;

    int-to-long v5, p7

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/utilint/LatencyStat;-><init>(J)V

    .line 55
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v2    # "opType":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/sleepycat/utilint/ActivityCounter;

    move-object v2, v0

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/utilint/ActivityCounter;-><init>(IJILjava/util/logging/Logger;)V

    iput-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->activityCounter:Lcom/sleepycat/utilint/ActivityCounter;

    .line 62
    return-void
.end method


# virtual methods
.method public clearLatency()V
    .locals 3

    .line 108
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->intervalLatencies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lcom/sleepycat/utilint/LatencyStat;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/utilint/LatencyStat;

    invoke-virtual {v2}, Lcom/sleepycat/utilint/LatencyStat;->clear()V

    .line 110
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lcom/sleepycat/utilint/LatencyStat;>;"
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public getCumulativeLatency()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Lcom/sleepycat/utilint/LatencyStat;",
            ">;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->cumulativeLatencies:Ljava/util/Map;

    return-object v0
.end method

.method public getIntervalLatency()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Lcom/sleepycat/utilint/LatencyStat;",
            ">;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->intervalLatencies:Ljava/util/Map;

    return-object v0
.end method

.method public getNumCompletedDumps()I
    .locals 1

    .line 125
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->activityCounter:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-virtual {v0}, Lcom/sleepycat/utilint/ActivityCounter;->getNumCompletedDumps()I

    move-result v0

    return v0
.end method

.method public markFinish(Ljava/lang/Object;J)V
    .locals 1
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    .local p1, "opType":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/utilint/StatsTracker;->markFinish(Ljava/lang/Object;JI)V

    .line 80
    return-void
.end method

.method public markFinish(Ljava/lang/Object;JI)V
    .locals 3
    .param p2, "startTime"    # J
    .param p4, "numOperations"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    .local p1, "opType":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->activityCounter:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-virtual {v0}, Lcom/sleepycat/utilint/ActivityCounter;->finish()V

    .line 89
    return-void

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 94
    .local v0, "elapsed":J
    iget-object v2, p0, Lcom/sleepycat/utilint/StatsTracker;->intervalLatencies:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/utilint/LatencyStat;

    invoke-virtual {v2, p4, v0, v1}, Lcom/sleepycat/utilint/LatencyStat;->set(IJ)V

    .line 95
    iget-object v2, p0, Lcom/sleepycat/utilint/StatsTracker;->cumulativeLatencies:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/utilint/LatencyStat;

    invoke-virtual {v2, p4, v0, v1}, Lcom/sleepycat/utilint/LatencyStat;->set(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "elapsed":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/utilint/StatsTracker;->activityCounter:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-virtual {v1}, Lcom/sleepycat/utilint/ActivityCounter;->finish()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->activityCounter:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-virtual {v0}, Lcom/sleepycat/utilint/ActivityCounter;->finish()V

    .line 100
    nop

    .line 101
    return-void
.end method

.method public markStart()J
    .locals 2

    .line 69
    .local p0, "this":Lcom/sleepycat/utilint/StatsTracker;, "Lcom/sleepycat/utilint/StatsTracker<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/utilint/StatsTracker;->activityCounter:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-virtual {v0}, Lcom/sleepycat/utilint/ActivityCounter;->start()V

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
