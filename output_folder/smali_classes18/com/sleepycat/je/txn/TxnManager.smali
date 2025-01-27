.class public Lcom/sleepycat/je/txn/TxnManager;
.super Ljava/lang/Object;
.source "TxnManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FIRST_NEGATIVE_ID:J = -0xaL

.field static final NULL_TXN_ID:J = -0x1L


# instance fields
.field private final activeTxns:Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

.field private final allTxns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/txn/Txn;",
            "Lcom/sleepycat/je/txn/Txn;",
            ">;"
        }
    .end annotation
.end field

.field private final allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

.field private final allXATxns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/transaction/xa/Xid;",
            "Lcom/sleepycat/je/txn/Txn;",
            ">;"
        }
    .end annotation
.end field

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final lastUsedLocalTxnId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastUsedReplicatedTxnId:Ljava/util/concurrent/atomic/AtomicLong;

.field private lockManager:Lcom/sleepycat/je/txn/LockManager;

.field private final nActive:Lcom/sleepycat/je/utilint/IntStat;

.field private final nActiveSerializable:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile nTotalCommits:J

.field private final numAborts:Lcom/sleepycat/je/utilint/LongStat;

.field private final numBegins:Lcom/sleepycat/je/utilint/LongStat;

.field private final numCommits:Lcom/sleepycat/je/utilint/LongStat;

.field private final numXAAborts:Lcom/sleepycat/je/utilint/LongStat;

.field private final numXACommits:Lcom/sleepycat/je/utilint/LongStat;

.field private final numXAPrepares:Lcom/sleepycat/je/utilint/LongStat;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final thread2Txn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lcom/sleepycat/je/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/txn/TxnManager;->nTotalCommits:J

    .line 101
    new-instance v2, Lcom/sleepycat/je/txn/SyncedLockManager;

    invoke-direct {v2, p1}, Lcom/sleepycat/je/txn/SyncedLockManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 103
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isNoLocking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Lcom/sleepycat/je/txn/DummyLockManager;

    iget-object v3, p0, Lcom/sleepycat/je/txn/TxnManager;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-direct {v2, p1, v3}, Lcom/sleepycat/je/txn/DummyLockManager;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/LockManager;)V

    iput-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/txn/TxnManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 108
    const-string v2, "TxnManager.allTxns"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/sleepycat/je/latch/LatchFactory;->createSharedLatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)Lcom/sleepycat/je/latch/SharedLatch;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    .line 110
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxns:Ljava/util/Map;

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allXATxns:Ljava/util/Map;

    .line 112
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->thread2Txn:Ljava/util/Map;

    .line 114
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedLocalTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0xa

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedReplicatedTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->nActiveSerializable:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Transaction"

    const-string v2, "Transaction statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 120
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ACTIVE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->nActive:Lcom/sleepycat/je/utilint/IntStat;

    .line 121
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_BEGINS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->numBegins:Lcom/sleepycat/je/utilint/LongStat;

    .line 122
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->numCommits:Lcom/sleepycat/je/utilint/LongStat;

    .line 123
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->numAborts:Lcom/sleepycat/je/utilint/LongStat;

    .line 124
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XAPREPARES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->numXAPrepares:Lcom/sleepycat/je/utilint/LongStat;

    .line 125
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XACOMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->numXACommits:Lcom/sleepycat/je/utilint/LongStat;

    .line 126
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XAABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->numXAAborts:Lcom/sleepycat/je/utilint/LongStat;

    .line 127
    new-instance v1, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    sget-object v2, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ACTIVE_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->activeTxns:Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    .line 128
    return-void
.end method

.method public static isReplicatedTxn(J)Z
    .locals 2
    .param p0, "txnId"    # J

    .line 155
    const-wide/16 v0, -0xa

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public XARecover()[Ljavax/transaction/xa/Xid;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allXATxns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 330
    .local v0, "xidSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/transaction/xa/Xid;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/transaction/xa/Xid;

    .line 331
    .local v1, "ret":[Ljavax/transaction/xa/Xid;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljavax/transaction/xa/Xid;

    .line 333
    return-object v1
.end method

.method public areOtherSerializableTransactionsActive(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 4
    .param p1, "excludeLocker"    # Lcom/sleepycat/je/txn/Locker;

    .line 344
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isSerializableIsolation()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 348
    .local v2, "exclude":I
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/txn/TxnManager;->nActiveSerializable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sub-int/2addr v3, v2

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public getFirstActiveLsn()J
    .locals 8

    .line 361
    const-wide/16 v0, -0x1

    .line 362
    .local v0, "firstActive":J
    iget-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->acquireExclusive()V

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxns:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 365
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/Txn;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/Txn;

    invoke-virtual {v3}, Lcom/sleepycat/je/txn/Txn;->getFirstActiveLsn()J

    move-result-wide v3

    .line 367
    .local v3, "txnFirstActive":J
    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    .line 368
    move-wide v0, v3

    goto :goto_1

    .line 369
    :cond_0
    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 370
    invoke-static {v3, v4, v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_1

    .line 371
    move-wide v0, v3

    .line 374
    .end local v3    # "txnFirstActive":J
    :cond_1
    :goto_1
    goto :goto_0

    .line 376
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/Txn;>;"
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 377
    nop

    .line 379
    return-wide v0

    .line 376
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v3}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v2
.end method

.method public getLastLocalTxnId()J
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedLocalTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReplicatedTxnId()J
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedReplicatedTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockManager()Lcom/sleepycat/je/txn/LockManager;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    return-object v0
.end method

.method public getNTotalCommits()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnManager;->nTotalCommits:J

    return-wide v0
.end method

.method public getNextReplicatedTxnId()J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedReplicatedTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method getNextTxnId()J
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedLocalTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTxnForThread()Lcom/sleepycat/je/Transaction;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->thread2Txn:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Transaction;

    return-object v0
.end method

.method public getTxnFromXid(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allXATxns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/Txn;

    return-object v0
.end method

.method public getTxns(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sleepycat/je/txn/Txn;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 438
    .local p1, "txnClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 440
    .local v0, "targetSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 443
    .local v1, "all":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/Txn;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/Txn;

    .line 444
    .local v3, "t":Lcom/sleepycat/je/txn/Txn;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    move-object v4, v3

    .line 447
    .local v4, "t2":Lcom/sleepycat/je/txn/Txn;, "TT;"
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .end local v3    # "t":Lcom/sleepycat/je/txn/Txn;
    .end local v4    # "t2":Lcom/sleepycat/je/txn/Txn;, "TT;"
    :cond_0
    goto :goto_0

    .line 451
    .end local v1    # "all":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/Txn;>;"
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 452
    nop

    .line 454
    return-object v0

    .line 451
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v1
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 420
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method public lockStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lockManager:Lcom/sleepycat/je/txn/LockManager;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/LockManager;->lockStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;

    move-result-object v0

    return-object v0
.end method

.method public notePrepare()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->numXAPrepares:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 270
    return-void
.end method

.method public registerTxn(Lcom/sleepycat/je/txn/Txn;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxns:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->isSerializableIsolation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->nActiveSerializable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->numBegins:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 222
    nop

    .line 223
    return-void

    .line 221
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method public registerXATxn(Ljavax/transaction/xa/Xid;Lcom/sleepycat/je/txn/Txn;Z)V
    .locals 3
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p3, "isPrepare"    # Z

    .line 254
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allXATxns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allXATxns:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    int-to-long v1, v1

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTxnMemoryUsage(J)V

    .line 260
    :cond_0
    if-eqz p3, :cond_1

    .line 261
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->numXAPrepares:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 263
    :cond_1
    return-void
.end method

.method public setLastTxnId(JJ)V
    .locals 1
    .param p1, "lastReplicatedTxnId"    # J
    .param p3, "lastLocalId"    # J

    .line 134
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedReplicatedTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 135
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedLocalTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 136
    return-void
.end method

.method public setTxnForThread(Lcom/sleepycat/je/Transaction;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 306
    .local v0, "curThread":Ljava/lang/Thread;
    if-nez p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/TxnManager;->unsetTxnForThread()Lcom/sleepycat/je/Transaction;

    goto :goto_0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->thread2Txn:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :goto_0
    return-void
.end method

.method public txnBegin(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "parent"    # Lcom/sleepycat/je/Transaction;
    .param p2, "txnConfig"    # Lcom/sleepycat/je/TransactionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v0, p2}, Lcom/sleepycat/je/txn/Txn;->createUserTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    return-object v0
.end method

.method public txnStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;
    .locals 12
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "txnStats":Lcom/sleepycat/je/TransactionStats;
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->nActive:Lcom/sleepycat/je/utilint/IntStat;

    iget-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxns:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/IntStat;->set(Ljava/lang/Integer;)V

    .line 394
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->nActive:Lcom/sleepycat/je/utilint/IntStat;

    .line 395
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntStat;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v1, v1, [Lcom/sleepycat/je/TransactionStats$Active;

    .line 396
    .local v1, "activeSet":[Lcom/sleepycat/je/TransactionStats$Active;
    iget-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxns:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 397
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/Txn;>;"
    const/4 v3, 0x0

    .line 398
    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/Locker;

    .line 400
    .local v4, "txn":Lcom/sleepycat/je/txn/Locker;
    new-instance v11, Lcom/sleepycat/je/TransactionStats$Active;

    .line 401
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/je/TransactionStats$Active;-><init>(Ljava/lang/String;JJ)V

    aput-object v11, v1, v3

    .line 402
    nop

    .end local v4    # "txn":Lcom/sleepycat/je/txn/Locker;
    add-int/lit8 v3, v3, 0x1

    .line 403
    goto :goto_0

    .line 404
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/je/txn/TxnManager;->activeTxns:Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;

    invoke-virtual {v4, v1}, Lcom/sleepycat/je/utilint/ActiveTxnArrayStat;->set([Lcom/sleepycat/je/TransactionStats$Active;)V

    .line 405
    new-instance v4, Lcom/sleepycat/je/TransactionStats;

    iget-object v5, p0, Lcom/sleepycat/je/txn/TxnManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/TransactionStats;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    move-object v0, v4

    .line 406
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    iget-object v4, p0, Lcom/sleepycat/je/txn/TxnManager;->numCommits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->clear()V

    .line 408
    iget-object v4, p0, Lcom/sleepycat/je/txn/TxnManager;->numAborts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->clear()V

    .line 409
    iget-object v4, p0, Lcom/sleepycat/je/txn/TxnManager;->numXACommits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->clear()V

    .line 410
    iget-object v4, p0, Lcom/sleepycat/je/txn/TxnManager;->numXAAborts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .end local v1    # "activeSet":[Lcom/sleepycat/je/TransactionStats$Active;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/Txn;>;"
    .end local v3    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 414
    nop

    .line 416
    return-object v0

    .line 413
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v2}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v1
.end method

.method unRegisterTxn(Lcom/sleepycat/je/txn/Txn;Z)V
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "isCommit"    # Z

    .line 229
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->acquireShared()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    .line 235
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->getBudgetedMemorySize()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTxnMemoryUsage(J)V

    .line 236
    if-eqz p2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->numCommits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 238
    iget-wide v0, p0, Lcom/sleepycat/je/txn/TxnManager;->nTotalCommits:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/txn/TxnManager;->nTotalCommits:J

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->numAborts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 242
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Txn;->isSerializableIsolation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->nActiveSerializable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->allTxnsLatch:Lcom/sleepycat/je/latch/SharedLatch;

    invoke-interface {v1}, Lcom/sleepycat/je/latch/SharedLatch;->release()V

    throw v0
.end method

.method unRegisterXATxn(Ljavax/transaction/xa/Xid;Z)V
    .locals 3
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "isCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->allXATxns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    rsub-int/lit8 v1, v1, 0x0

    int-to-long v1, v1

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateTxnMemoryUsage(J)V

    .line 286
    if-eqz p2, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->numXACommits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->numXAAborts:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 291
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XA Transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsetTxnForThread()Lcom/sleepycat/je/Transaction;
    .locals 2

    .line 317
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 318
    .local v0, "curThread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnManager;->thread2Txn:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/Transaction;

    return-object v1
.end method

.method public updateFromReplay(J)V
    .locals 3
    .param p1, "replayTxnId"    # J

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMaster()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedReplicatedTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnManager;->lastUsedReplicatedTxnId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 180
    :cond_0
    return-void

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replay txn id is unexpectedly positive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
