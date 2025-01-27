.class public final Lcom/sleepycat/je/utilint/AtomicLongMapStat;
.super Lcom/sleepycat/je/utilint/MapStat;
.source "AtomicLongMapStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStat<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/AtomicLongComponent;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/AtomicLongMapStat;)V
    .locals 0
    .param p1, "other"    # Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    .line 42
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/MapStat;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 39
    return-void
.end method


# virtual methods
.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/utilint/AtomicLongMapStat;"
        }
    .end annotation

    .line 66
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object v0

    .line 68
    .local v0, "copy":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-eq v1, v2, :cond_0

    .line 69
    return-object v0

    .line 71
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    .line 72
    .local v1, "baseMapStat":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v2, v0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 77
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/AtomicLongComponent;>;"
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    iget-object v4, v1, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/AtomicLongComponent;

    .line 79
    .local v4, "baseValue":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    if-eqz v4, :cond_1

    .line 81
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/utilint/AtomicLongComponent;

    .line 82
    .local v5, "entryValue":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    iget-object v6, v5, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/AtomicLongComponent;->get()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    neg-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/AtomicLongComponent;>;"
    .end local v4    # "baseValue":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    .end local v5    # "entryValue":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    :cond_1
    goto :goto_0

    .line 79
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/AtomicLongComponent;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "copy":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .end local v1    # "baseMapStat":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .end local p1    # "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    :try_start_4
    throw v2

    .line 85
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/utilint/AtomicLongComponent;>;"
    .restart local v0    # "copy":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .restart local v1    # "baseMapStat":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .restart local p1    # "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 86
    return-object v0

    .line 85
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 66
    .end local v0    # "copy":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .end local v1    # "baseMapStat":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object p1

    return-object p1
.end method

.method public copy()Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .locals 1

    .line 60
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;-><init>(Lcom/sleepycat/je/utilint/AtomicLongMapStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/AtomicLongComponent;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongComponent;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/AtomicLongComponent;-><init>()V

    .line 54
    .local v0, "stat":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-object v0

    .line 51
    .end local v0    # "stat":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    .end local p0    # "this":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 52
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized negate()V
    .locals 7

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/AtomicLongComponent;

    .line 93
    .local v1, "stat":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    iget-object v2, v1, Lcom/sleepycat/je/utilint/AtomicLongComponent;->val:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    .local v2, "atomicVal":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 102
    .local v3, "val":J
    neg-long v5, v3

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 103
    nop

    .line 106
    .end local v1    # "stat":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    .end local v2    # "atomicVal":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v3    # "val":J
    goto :goto_0

    .line 105
    .restart local v1    # "stat":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    .restart local v2    # "atomicVal":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_0
    goto :goto_1

    .line 108
    .end local v1    # "stat":Lcom/sleepycat/je/utilint/AtomicLongComponent;
    .end local v2    # "atomicVal":Ljava/util/concurrent/atomic/AtomicLong;
    .end local p0    # "this":Lcom/sleepycat/je/utilint/AtomicLongMapStat;
    :cond_1
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
