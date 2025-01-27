.class public Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;
.super Ljava/lang/Object;
.source "SimpleTxnMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sleepycat/je/txn/Txn;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final arrayMap:[Lcom/sleepycat/je/txn/Txn;

.field private arrayMapSize:I

.field private final backupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final cacheMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "arrayMapSize"    # I

    .line 89
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMapSize:I

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    new-array v0, p1, [Lcom/sleepycat/je/txn/Txn;

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMap:[Lcom/sleepycat/je/txn/Txn;

    .line 95
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->cacheMask:I

    .line 96
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a power of two"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMap:[Lcom/sleepycat/je/txn/Txn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMapSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 165
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(J)Lcom/sleepycat/je/txn/Txn;
    .locals 3
    .param p1, "txnId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMap:[Lcom/sleepycat/je/txn/Txn;

    long-to-int v1, p1

    iget v2, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->cacheMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 122
    .local v0, "cachedTxn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 124
    monitor-exit p0

    return-object v0

    .line 123
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 126
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Txn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 120
    .end local v0    # "cachedTxn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    .end local p1    # "txnId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBackupMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public declared-synchronized getMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    monitor-enter p0

    .line 176
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 177
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;TT;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMap:[Lcom/sleepycat/je/txn/Txn;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 179
    .local v4, "element":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/sleepycat/je/txn/Txn;

    .line 180
    .local v5, "txn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    if-eqz v5, :cond_1

    .line 181
    invoke-virtual {v5}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/txn/Txn;

    .line 182
    .local v6, "old":Lcom/sleepycat/je/txn/Txn;, "TT;"
    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v4    # "element":Ljava/lang/Object;
    .end local v5    # "txn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    .end local v6    # "old":Lcom/sleepycat/je/txn/Txn;, "TT;"
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_2
    monitor-exit p0

    return-object v0

    .line 175
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 157
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Lcom/sleepycat/je/txn/Txn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    .local p1, "txn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->get(J)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v0

    .line 106
    .local v0, "txnId":J
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->cacheMask:I

    and-int/2addr v2, v3

    .line 107
    .local v2, "i":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMap:[Lcom/sleepycat/je/txn/Txn;

    aget-object v4, v3, v2

    .line 108
    .local v4, "cachedTxn":Lcom/sleepycat/je/txn/Txn;
    if-nez v4, :cond_0

    .line 110
    aput-object p1, v3, v2

    .line 111
    iget v3, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMapSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMapSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 116
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 103
    .end local v0    # "txnId":J
    .end local v2    # "i":I
    .end local v4    # "cachedTxn":Lcom/sleepycat/je/txn/Txn;
    .end local p1    # "txn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 104
    .restart local p1    # "txn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .end local p1    # "txn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(J)Lcom/sleepycat/je/txn/Txn;
    .locals 4
    .param p1, "txnId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    monitor-enter p0

    .line 135
    long-to-int v0, p1

    :try_start_0
    iget v1, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->cacheMask:I

    and-int/2addr v0, v1

    .line 137
    .local v0, "i":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMap:[Lcom/sleepycat/je/txn/Txn;

    aget-object v1, v1, v0

    .line 138
    .local v1, "cachedTxn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMap:[Lcom/sleepycat/je/txn/Txn;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 140
    iget v2, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMapSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMapSize:I

    .line 141
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 142
    monitor-exit p0

    return-object v1

    .line 141
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 149
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/Txn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 134
    .end local v0    # "i":I
    .end local v1    # "cachedTxn":Lcom/sleepycat/je/txn/Txn;, "TT;"
    .end local p1    # "txnId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 2

    .local p0, "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->backupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;->arrayMapSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 153
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/SimpleTxnMap;, "Lcom/sleepycat/je/rep/utilint/SimpleTxnMap<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
