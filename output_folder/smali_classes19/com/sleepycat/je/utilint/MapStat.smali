.class public abstract Lcom/sleepycat/je/utilint/MapStat;
.super Lcom/sleepycat/je/utilint/Stat;
.source "MapStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Lcom/sleepycat/je/utilint/MapStatComponent<",
        "TT;TC;>;>",
        "Lcom/sleepycat/je/utilint/Stat<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final statMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/utilint/MapStat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/MapStat<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    .local p1, "other":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    iget-object v0, p1, Lcom/sleepycat/je/utilint/MapStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v0, p1, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

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

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    iget-object v2, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/MapStatComponent;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/MapStatComponent;->copy()Lcom/sleepycat/je/utilint/MapStatComponent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    nop

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    goto :goto_0

    .line 71
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "other":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    :try_start_4
    throw v0

    .line 72
    .restart local p1    # "other":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 1
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 55
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/Stat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

    .line 56
    return-void
.end method

.method private declared-synchronized getFormattedValue(Z)Ljava/lang/String;
    .locals 8
    .param p1, "useCommas"    # Z

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 137
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 139
    .local v1, "first":Z
    iget-object v2, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 140
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/MapStatComponent;

    .line 141
    .local v4, "value":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/MapStatComponent;->isNotSet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    if-nez v1, :cond_1

    .line 145
    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 147
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    :cond_1
    const/4 v1, 0x0

    .line 149
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    nop

    .line 151
    invoke-virtual {v4, p1}, Lcom/sleepycat/je/utilint/MapStatComponent;->getFormattedValue(Z)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "formattedValue":Ljava/lang/String;
    if-nez p1, :cond_3

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Formatted value doesn\'t obey useCommas: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 154
    :cond_3
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    .end local v4    # "value":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    .end local v5    # "formattedValue":Ljava/lang/String;
    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 136
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "first":Z
    .end local p1    # "useCommas":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    .end local p1    # "in":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 199
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    .end local p1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The add method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/MapStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sleepycat/je/utilint/MapStatComponent;

    .line 122
    .local v1, "stat":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/MapStatComponent;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v1    # "stat":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    goto :goto_0

    .line 125
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyAndClear()Lcom/sleepycat/je/utilint/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 186
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/je/utilint/Stat;->copyAndClear()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 186
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 35
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/MapStat;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 115
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/MapStat;->getFormattedValue(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 133
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/MapStat;->getFormattedValue(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMap()Ljava/util/SortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "ret":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/utilint/MapStatComponent;

    .line 95
    .local v3, "stat":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/MapStatComponent;->isNotSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    goto :goto_0

    .line 98
    :cond_0
    if-nez v0, :cond_1

    .line 99
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move-object v0, v4

    .line 101
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/MapStatComponent;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TC;>;"
    .end local v3    # "stat":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    goto :goto_0

    .line 103
    :cond_2
    if-nez v0, :cond_3

    .line 104
    invoke-static {}, Lcom/sleepycat/je/utilint/CollectionUtils;->emptySortedMap()Ljava/util/SortedMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 106
    :cond_3
    monitor-exit p0

    return-object v0

    .line 91
    .end local v0    # "ret":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotSet()Z
    .locals 3

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sleepycat/je/utilint/MapStatComponent;

    .line 162
    .local v1, "stat":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/MapStatComponent;->isNotSet()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 163
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 165
    .end local v1    # "stat":Lcom/sleepycat/je/utilint/MapStatComponent;, "TC;"
    :cond_0
    goto :goto_0

    .line 166
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStat(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    monitor-enter p0

    .line 81
    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/MapStat;->statMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 80
    .end local p0    # "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 81
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 35
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 172
    .local p0, "this":Lcom/sleepycat/je/utilint/MapStat;, "Lcom/sleepycat/je/utilint/MapStat<TT;TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The set method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
