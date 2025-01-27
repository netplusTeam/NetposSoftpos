.class public Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;
.super Ljava/lang/Object;
.source "SizeAwaitMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:I

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final nNoWaits:Lcom/sleepycat/je/utilint/LongStat;

.field private final nRealWaits:Lcom/sleepycat/je/utilint/LongStat;

.field private final nWaitTime:Lcom/sleepycat/je/utilint/LongStat;

.field private final predicate:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final thresholdLatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate<",
            "TV;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    .local p2, "predicate":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->count:I

    .line 80
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 81
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->predicate:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->thresholdLatches:Ljava/util/HashMap;

    .line 84
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "SizeAwaitMap"

    const-string v2, "SizeAwaitMap statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 86
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/SizeAwaitMapStatDefinition;->N_NO_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->nNoWaits:Lcom/sleepycat/je/utilint/LongStat;

    .line 87
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/SizeAwaitMapStatDefinition;->N_REAL_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->nRealWaits:Lcom/sleepycat/je/utilint/LongStat;

    .line 88
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/SizeAwaitMapStatDefinition;->N_WAIT_TIME:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->nWaitTime:Lcom/sleepycat/je/utilint/LongStat;

    .line 89
    return-void
.end method

.method private checkPredicate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->predicate:Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;->match(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized clear(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->thresholdLatches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 201
    .local v1, "l":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->releaseAwait(Ljava/lang/Exception;)V

    .line 202
    .end local v1    # "l":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    goto :goto_0

    .line 203
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->thresholdLatches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 204
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 199
    .end local p1    # "cause":Ljava/lang/Exception;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 212
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 217
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    .end local p1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 226
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 231
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStatistics()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1

    .line 92
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    return-object v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 236
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 245
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized latchCount()I
    .locals 1

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->thresholdLatches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 139
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 148
    if-eqz p2, :cond_3

    .line 151
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->checkPredicate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    .local v0, "countDelta":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->checkPredicate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 156
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :cond_1
    iget v2, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->count:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->count:I

    .line 157
    if-lez v0, :cond_2

    .line 159
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->thresholdLatches:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 160
    .local v2, "l":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v2    # "l":Ljava/util/concurrent/CountDownLatch;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 147
    .end local v0    # "countDelta":I
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 149
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    nop

    .line 251
    const-string/jumbo v0, "putAll not supported"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->checkPredicate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 173
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 256
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sizeAwait(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "thresholdSize"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    if-ltz p1, :cond_2

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "l":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    monitor-enter p0

    .line 115
    :try_start_0
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->count:I

    const/4 v2, 0x1

    if-gt p1, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->nNoWaits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 117
    monitor-exit p0

    return v2

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->thresholdLatches:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    move-object v0, v1

    .line 120
    if-nez v0, :cond_1

    .line 121
    new-instance v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    move-object v0, v1

    .line 122
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->thresholdLatches:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->nRealWaits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 128
    .local v1, "startTime":J
    :try_start_1
    invoke-virtual {v0, p2, p3, p4}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->awaitOrException(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->nWaitTime:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 128
    return v3

    .line 130
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->nWaitTime:Lcom/sleepycat/je/utilint/LongStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    throw v3

    .line 124
    .end local v1    # "startTime":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 112
    .end local v0    # "l":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 265
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SizeAwaitMap;, "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
