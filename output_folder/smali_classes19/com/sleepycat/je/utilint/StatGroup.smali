.class public Lcom/sleepycat/je/utilint/StatGroup;
.super Ljava/lang/Object;
.source "StatGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final groupDescription:Ljava/lang/String;

.field private final groupName:Ljava/lang/String;

.field private final stats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            "Lcom/sleepycat/je/utilint/Stat<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupDescription"    # Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            "Lcom/sleepycat/je/utilint/Stat<",
            "*>;>;)V"
        }
    .end annotation

    .line 83
    .local p3, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupDescription:Ljava/lang/String;

    .line 86
    invoke-static {p3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    .line 87
    return-void
.end method


# virtual methods
.method public addAll(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 7
    .param p1, "other"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 119
    iget-object v0, p1, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatDefinition;

    .line 123
    .local v2, "definition":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v3, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/Stat;

    .line 125
    .local v4, "localStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    if-nez v4, :cond_0

    .line 126
    iget-object v5, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit v3

    goto :goto_0

    .line 129
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/Stat;

    .line 138
    .local v3, "additionalValue":Lcom/sleepycat/je/utilint/Stat;
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/utilint/Stat;->add(Lcom/sleepycat/je/utilint/Stat;)V

    .line 139
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    .end local v2    # "definition":Lcom/sleepycat/je/utilint/StatDefinition;
    .end local v3    # "additionalValue":Lcom/sleepycat/je/utilint/Stat;
    .end local v4    # "localStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    goto :goto_0

    .line 129
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    .restart local v2    # "definition":Lcom/sleepycat/je/utilint/StatDefinition;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 140
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    .end local v2    # "definition":Lcom/sleepycat/je/utilint/StatDefinition;
    :cond_1
    return-void
.end method

.method public addToTipMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p1, "tips":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/StatGroup;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/StatDefinition;

    .line 357
    .local v1, "d":Lcom/sleepycat/je/utilint/StatDefinition;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v1    # "d":Lcom/sleepycat/je/utilint/StatDefinition;
    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/Stat;

    .line 176
    .local v2, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Stat;->clear()V

    .line 177
    .end local v2    # "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    goto :goto_0

    .line 178
    :cond_0
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 6
    .param p1, "clear"    # Z

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v0, "copyValues":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/Stat;

    .line 210
    .local v3, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Stat;->getDefinition()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Stat;->copyAndClear()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Stat;->getDefinition()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v3    # "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    :goto_1
    goto :goto_0

    .line 216
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupDescription:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    .line 216
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/StatGroup;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 7
    .param p1, "baseGroup"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, "intervalValues":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/StatDefinition;

    .line 157
    .local v3, "definition":Lcom/sleepycat/je/utilint/StatDefinition;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/Stat;

    .line 159
    .local v4, "statValue":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    iget-object v5, p1, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/utilint/Stat;

    .line 160
    .local v5, "baseStat":Lcom/sleepycat/je/utilint/Stat;
    if-nez v5, :cond_0

    .line 161
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/Stat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_0
    nop

    .line 164
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/Stat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v6

    .line 163
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    .end local v3    # "definition":Lcom/sleepycat/je/utilint/StatDefinition;
    .end local v4    # "statValue":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    .end local v5    # "baseStat":Lcom/sleepycat/je/utilint/Stat;
    :goto_1
    goto :goto_0

    .line 167
    :cond_1
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupDescription:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public getActiveTxnArray(Lcom/sleepycat/je/utilint/StatDefinition;)[Lcom/sleepycat/je/TransactionStats$Active;
    .locals 2
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    .line 298
    .local v0, "s":Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;
    if-nez v0, :cond_0

    .line 299
    const/4 v1, 0x0

    return-object v1

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->get()[Lcom/sleepycat/je/TransactionStats$Active;

    move-result-object v1

    return-object v1
.end method

.method public getAtomicLong(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/Long;
    .locals 3
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 288
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 289
    .local v0, "s":Lcom/sleepycat/je/utilint/AtomicLongStat;
    if-nez v0, :cond_0

    .line 290
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getAtomicLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 284
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    return-object v0
.end method

.method public getBoolean(Lcom/sleepycat/je/utilint/StatDefinition;)Z
    .locals 2
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 324
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/BooleanStat;

    .line 325
    .local v0, "s":Lcom/sleepycat/je/utilint/BooleanStat;
    if-nez v0, :cond_0

    .line 326
    const/4 v1, 0x0

    return v1

    .line 328
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/BooleanStat;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getCSVData()Ljava/lang/String;
    .locals 6

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

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

    check-cast v3, Lcom/sleepycat/je/utilint/Stat;

    .line 451
    .local v3, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Stat;->getFormattedValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    nop

    .end local v3    # "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    goto :goto_0

    .line 453
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 453
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getCSVHeader()Ljava/lang/String;
    .locals 6

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

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

    check-cast v3, Lcom/sleepycat/je/utilint/StatDefinition;

    .line 438
    .local v3, "def":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    nop

    .end local v3    # "def":Lcom/sleepycat/je/utilint/StatDefinition;
    goto :goto_0

    .line 440
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 440
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFloat(Lcom/sleepycat/je/utilint/StatDefinition;)F
    .locals 2
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 315
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/FloatStat;

    .line 316
    .local v0, "s":Lcom/sleepycat/je/utilint/FloatStat;
    if-nez v0, :cond_0

    .line 317
    const/4 v1, 0x0

    return v1

    .line 319
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/FloatStat;->get()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I
    .locals 4
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 231
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/Stat;

    .line 232
    .local v0, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    return v1

    .line 235
    :cond_0
    instance-of v1, v0, Lcom/sleepycat/je/utilint/StatWithValueType;

    if-eqz v1, :cond_1

    .line 236
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/utilint/StatWithValueType;

    const-class v2, Ljava/lang/Integer;

    .line 237
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/StatWithValueType;->getForType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 238
    .local v1, "retval":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 242
    .end local v1    # "retval":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error calling getInt with unexpected stat type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getIntegralLongAvgStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/IntegralLongAvgStat;
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 272
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    return-object v0
.end method

.method public getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J
    .locals 4
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 252
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/Stat;

    .line 253
    .local v0, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    if-nez v0, :cond_0

    .line 254
    const-wide/16 v1, 0x0

    return-wide v1

    .line 256
    :cond_0
    instance-of v1, v0, Lcom/sleepycat/je/utilint/StatWithValueType;

    if-eqz v1, :cond_2

    .line 257
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/utilint/StatWithValueType;

    const-class v2, Ljava/lang/Long;

    .line 258
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/StatWithValueType;->getForType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 259
    .local v1, "retval":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 259
    .end local v1    # "retval":Ljava/lang/Long;
    :cond_1
    goto :goto_0

    .line 262
    :cond_2
    instance-of v1, v0, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    if-eqz v1, :cond_3

    .line 263
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntegralLongAvgStat;->get()Lcom/sleepycat/je/utilint/IntegralLongAvg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntegralLongAvg;->compute()J

    move-result-wide v1

    return-wide v1

    .line 262
    :cond_3
    :goto_0
    nop

    .line 265
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error calling getLong with unexpected stat type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getLongArray(Lcom/sleepycat/je/utilint/StatDefinition;)[J
    .locals 2
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 306
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongArrayStat;

    .line 307
    .local v0, "s":Lcom/sleepycat/je/utilint/LongArrayStat;
    if-nez v0, :cond_0

    .line 308
    const/4 v1, 0x0

    return-object v1

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongArrayStat;->get()[J

    move-result-object v1

    return-object v1
.end method

.method public getLongMaxStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongMaxStat;
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 280
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongMaxStat;

    return-object v0
.end method

.method public getLongMinStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongMinStat;
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 276
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongMinStat;

    return-object v0
.end method

.method public getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 248
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/LongStat;

    return-object v0
.end method

.method public getMap(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/MapStat;

    .line 344
    .local v0, "s":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TV;*>;"
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 347
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/MapStat;->getMap()Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/Stat;
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            ")",
            "Lcom/sleepycat/je/utilint/Stat<",
            "*>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/Stat;

    return-object v0
.end method

.method public getStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            "Lcom/sleepycat/je/utilint/Stat<",
            "*>;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/String;
    .locals 2
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 333
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/StringStat;

    .line 334
    .local v0, "s":Lcom/sleepycat/je/utilint/StringStat;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 337
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StringStat;->get()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public negate()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/Stat;

    .line 187
    .local v2, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/Stat;->negate()V

    .line 188
    .end local v2    # "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    goto :goto_0

    .line 189
    :cond_0
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method register(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "*>;)V"
        }
    .end annotation

    .line 102
    .local p1, "oneStat":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->getDefinition()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/Stat;

    .line 103
    .local v0, "prev":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prev = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oneStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->getDefinition()Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v1

    .line 370
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 371
    .local v2, "sortedStats":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/Stat;

    .line 373
    .local v3, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .end local v3    # "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 371
    .end local v2    # "sortedStats":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public toStringConcise()Ljava/lang/String;
    .locals 7

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "headerPrinted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v2

    .line 409
    :try_start_0
    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 410
    .local v3, "sortedStats":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/Stat;

    .line 414
    .local v4, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/Stat;->isNotSet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 415
    goto :goto_0

    .line 422
    :cond_0
    if-nez v0, :cond_1

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const/4 v0, 0x1

    .line 426
    :cond_1
    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .end local v4    # "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 410
    .end local v3    # "sortedStats":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 6

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->groupDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    monitor-enter v1

    .line 390
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/StatGroup;->stats:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 391
    .local v2, "sortedStats":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/Stat;

    .line 393
    .local v3, "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Stat;->toStringVerbose()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .end local v3    # "s":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<*>;"
    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 391
    .end local v2    # "sortedStats":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/Stat<*>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
