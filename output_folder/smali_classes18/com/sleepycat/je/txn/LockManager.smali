.class public abstract Lcom/sleepycat/je/txn/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/txn/LockManager$DeadlockResult;,
        Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;,
        Lcom/sleepycat/je/txn/LockManager$CycleNodeComparator;,
        Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;,
        Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_THREAD_LOCKERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/ThreadLocker;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOVE_TOTAL_LOCKIMPL_OVERHEAD:J

.field private static final REMOVE_TOTAL_THINLOCKIMPL_OVERHEAD:J

.field private static final THINLOCK_MUTATE_OVERHEAD:J

.field private static final TOTAL_LOCKIMPL_OVERHEAD:J

.field static final TOTAL_THINLOCKIMPL_OVERHEAD:J

.field public static afterLockHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static lockTableDump:Z

.field private static rangeRestartException:Lcom/sleepycat/je/dbi/RangeRestartException;

.field static simulatePartialDeadlockHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field final lockTableMutexes:[Ljava/lang/Object;

.field private final lockTables:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/Lock;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

.field final nLockTables:I

.field private final nRequests:Lcom/sleepycat/je/utilint/LongStat;

.field private final nWaits:Lcom/sleepycat/je/utilint/LongStat;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final threadLockers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lcom/sleepycat/je/utilint/TinyHashSet<",
            "Lcom/sleepycat/je/txn/ThreadLocker;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 70
    nop

    .line 79
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKIMPL_OVERHEAD:I

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    add-int/2addr v0, v1

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->LONG_OVERHEAD:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    sput-wide v0, Lcom/sleepycat/je/txn/LockManager;->TOTAL_LOCKIMPL_OVERHEAD:J

    .line 84
    sget v2, Lcom/sleepycat/je/dbi/MemoryBudget;->THINLOCKIMPL_OVERHEAD:I

    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    add-int/2addr v2, v3

    sget v3, Lcom/sleepycat/je/dbi/MemoryBudget;->LONG_OVERHEAD:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    sput-wide v2, Lcom/sleepycat/je/txn/LockManager;->TOTAL_THINLOCKIMPL_OVERHEAD:J

    .line 89
    const-wide/16 v4, 0x0

    sub-long v0, v4, v0

    sput-wide v0, Lcom/sleepycat/je/txn/LockManager;->REMOVE_TOTAL_LOCKIMPL_OVERHEAD:J

    .line 92
    sub-long/2addr v4, v2

    sput-wide v4, Lcom/sleepycat/je/txn/LockManager;->REMOVE_TOTAL_THINLOCKIMPL_OVERHEAD:J

    .line 95
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKIMPL_OVERHEAD:I

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->THINLOCKIMPL_OVERHEAD:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    sput-wide v0, Lcom/sleepycat/je/txn/LockManager;->THINLOCK_MUTATE_OVERHEAD:J

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/txn/LockManager;->EMPTY_THREAD_LOCKERS:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Lcom/sleepycat/je/txn/LockManager;->EMPTY_LONG_ARRAY:[J

    .line 125
    new-instance v1, Lcom/sleepycat/je/dbi/RangeRestartException;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/RangeRestartException;-><init>()V

    sput-object v1, Lcom/sleepycat/je/txn/LockManager;->rangeRestartException:Lcom/sleepycat/je/dbi/RangeRestartException;

    .line 127
    sput-boolean v0, Lcom/sleepycat/je/txn/LockManager;->lockTableDump:Z

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 155
    .local v0, "configMgr":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->N_LOCK_TABLES:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/txn/LockManager;->nLockTables:I

    .line 156
    new-array v2, v1, [Ljava/util/Map;

    iput-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    .line 157
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->lockTableMutexes:[Ljava/lang/Object;

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sleepycat/je/txn/LockManager;->nLockTables:I

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    .line 160
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->lockTableMutexes:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 163
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    .line 165
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "Locks"

    const-string v3, "Record locking is used to provide transactional capabilities."

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 166
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_REQUESTS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->nRequests:Lcom/sleepycat/je/utilint/LongStat;

    .line 167
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->nWaits:Lcom/sleepycat/je/utilint/LongStat;

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/txn/LockManager;->envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 171
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 173
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    goto :goto_1

    .line 176
    :cond_1
    iput-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    .line 178
    :goto_1
    return-void
.end method

.method static synthetic access$400()[J
    .locals 1

    .line 70
    sget-object v0, Lcom/sleepycat/je/txn/LockManager;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/txn/LockManager;)[Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager;

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sleepycat/je/txn/LockManager;Ljava/util/Collection;)[J
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/txn/LockManager;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 70
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/LockManager;->getTxnIds(Ljava/util/Collection;)[J

    move-result-object v0

    return-object v0
.end method

.method private checkAndHandleDeadlock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;JLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    .locals 18
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lsn"    # Ljava/lang/Long;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "timeout"    # J
    .param p6, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 902
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v12, 0x0

    .line 903
    .local v12, "isOwner":Z
    const/4 v13, 0x0

    .line 904
    .local v13, "hasTrueDeadlock":Z
    const/4 v0, 0x0

    .line 906
    .local v0, "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    const/4 v1, 0x0

    move v14, v1

    .line 907
    .local v14, "round":I
    :goto_0
    new-instance v1, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;-><init>(Lcom/sleepycat/je/txn/LockManager;Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;)V

    move-object v15, v1

    .line 909
    .local v15, "dc":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    invoke-virtual {v15}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 910
    invoke-virtual {v15}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->hasTrueDeadlock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 912
    invoke-virtual {v15}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->chooseTargetedLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v7

    .line 914
    .end local v0    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    .local v7, "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    if-eq v7, v9, :cond_1

    .line 931
    invoke-virtual {v8, v10, v9, v11}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v12, 0x1

    .line 933
    const/4 v0, 0x0

    .line 934
    .end local v7    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    .restart local v0    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    goto :goto_1

    .line 937
    .end local v0    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    .restart local v7    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    :cond_0
    const/4 v13, 0x1

    .line 938
    move-object v0, v7

    goto :goto_1

    .line 951
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v17, v7

    .end local v7    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    .local v17, "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/sleepycat/je/txn/LockManager;->validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    const/4 v12, 0x1

    .line 957
    const/4 v0, 0x0

    .line 958
    .end local v17    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    .restart local v0    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    goto :goto_1

    .line 961
    .end local v0    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    .restart local v17    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    :cond_2
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/txn/LockManager;->makeDeadlockException(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/Locker;JZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/LockConflictException;

    move-result-object v0

    throw v0

    .line 965
    .end local v17    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    .restart local v0    # "targetedVictim":Lcom/sleepycat/je/txn/Locker;
    :cond_3
    invoke-virtual {v8, v10, v9, v11}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 966
    const/4 v12, 0x1

    .line 967
    goto :goto_1

    .line 970
    :cond_4
    const/16 v1, 0xa

    if-lt v14, v1, :cond_5

    .line 971
    goto :goto_1

    .line 906
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 975
    :cond_6
    invoke-virtual {v8, v10, v9, v11}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 976
    const/4 v12, 0x1

    .line 982
    .end local v14    # "round":I
    :cond_7
    :goto_1
    new-instance v1, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;

    invoke-direct {v1, v12, v13, v0, v15}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;-><init>(ZZLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;)V

    return-object v1
.end method

.method private dumpToString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1815
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sleepycat/je/txn/LockManager;->nLockTables:I

    if-ge v1, v2, :cond_0

    .line 1816
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->lockTableMutexes:[Ljava/lang/Object;

    aget-object v2, v2, v1

    monitor-enter v2

    .line 1817
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/txn/LockManager;->dumpToStringNoLatch(Ljava/lang/StringBuilder;I)V

    .line 1818
    monitor-exit v2

    .line 1815
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1818
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1820
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpToStringNoLatch(Ljava/lang/StringBuilder;I)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "whichTable"    # I

    .line 1826
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 1828
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1829
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1830
    .local v3, "lsn":Ljava/lang/Long;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/Lock;

    .line 1832
    .local v4, "lock":Lcom/sleepycat/je/txn/Lock;
    const-string v5, "---- LSN: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1833
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1834
    const-string v6, "----\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1837
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1838
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    .end local v3    # "lsn":Ljava/lang/Long;
    .end local v4    # "lock":Lcom/sleepycat/je/txn/Lock;
    goto :goto_0

    .line 1839
    :cond_0
    return-void
.end method

.method private finishLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V
    .locals 1
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "nid"    # Ljava/lang/Long;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "grant"    # Lcom/sleepycat/je/txn/LockGrantType;

    .line 643
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->clearWaitingFor()V

    .line 645
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p1, p2, p3, p4}, Lcom/sleepycat/je/txn/Locker;->addLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V

    .line 649
    sget-object v0, Lcom/sleepycat/je/txn/LockManager;->afterLockHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v0, :cond_0

    .line 650
    invoke-interface {v0}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 652
    :cond_0
    return-void

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getTxnIds(Ljava/util/Collection;)[J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)[J"
        }
    .end annotation

    .line 1267
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/txn/LockInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1268
    .local v0, "ret":[J
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1269
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    const/4 v2, 0x0

    .line 1270
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    .line 1272
    .local v3, "info":Lcom/sleepycat/je/txn/LockInfo;
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 1273
    .end local v3    # "info":Lcom/sleepycat/je/txn/LockInfo;
    move v2, v4

    goto :goto_0

    .line 1275
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private makeDeadlockException(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/Locker;JZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/LockConflictException;
    .locals 3
    .param p1, "dc"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "timeout"    # J
    .param p5, "isVictim"    # Z
    .param p6, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "Deadlock was detected. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    if-eqz p5, :cond_0

    .line 1097
    const-string v1, "Locker: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    const-string v1, "\" was chosen randomly as the victim.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1100
    :cond_0
    const-string v1, "Unable to break deadlock using random victim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string/jumbo v1, "selection within the timeout interval. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v1, "Current locker: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v1, "\" must be aborted.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    :goto_0
    if-eqz p6, :cond_1

    .line 1107
    const-string v1, "DB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_1
    const-string v1, "Timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_2

    .line 1112
    const-string v1, "none.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1114
    :cond_2
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1119
    new-instance v1, Lcom/sleepycat/je/DeadlockException;

    .line 1120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/sleepycat/je/DeadlockException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    .line 1122
    .local v1, "ex":Lcom/sleepycat/je/LockConflictException;
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->getOwnersForRootLock()[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/LockConflictException;->setOwnerTxnIds([J)V

    .line 1123
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->getWaitersForRootLock()[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/LockConflictException;->setWaiterTxnIds([J)V

    .line 1124
    invoke-virtual {v1, p3, p4}, Lcom/sleepycat/je/LockConflictException;->setTimeoutMillis(J)V

    .line 1126
    return-object v1
.end method

.method private makeTimeoutException(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/LockConflictException;
    .locals 6
    .param p1, "isLockNotTxnTimeout"    # Z
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lsn"    # J
    .param p5, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p6, "grantType"    # Lcom/sleepycat/je/txn/LockGrantType;
    .param p7, "useLock"    # Lcom/sleepycat/je/txn/Lock;
    .param p8, "timeout"    # J
    .param p10, "start"    # J
    .param p12, "now"    # J
    .param p14, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sleepycat/je/txn/Locker;",
            "J",
            "Lcom/sleepycat/je/txn/LockType;",
            "Lcom/sleepycat/je/txn/LockGrantType;",
            "Lcom/sleepycat/je/txn/Lock;",
            "JJJ",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)",
            "Lcom/sleepycat/je/LockConflictException;"
        }
    .end annotation

    .line 1150
    .local p15, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p16, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {p0 .. p16}, Lcom/sleepycat/je/txn/LockManager;->getTimeoutInfo(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;

    move-result-object v2

    .line 1154
    .local v2, "info":Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;
    if-eqz p1, :cond_0

    new-instance v3, Lcom/sleepycat/je/LockTimeoutException;

    iget-object v4, v2, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;->message:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Lcom/sleepycat/je/LockTimeoutException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sleepycat/je/TransactionTimeoutException;

    iget-object v4, v2, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;->message:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Lcom/sleepycat/je/TransactionTimeoutException;-><init>(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;)V

    .line 1159
    .local v3, "ex":Lcom/sleepycat/je/LockConflictException;
    :goto_0
    iget-object v4, v2, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;->owners:Ljava/util/Set;

    invoke-direct {p0, v4}, Lcom/sleepycat/je/txn/LockManager;->getTxnIds(Ljava/util/Collection;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/LockConflictException;->setOwnerTxnIds([J)V

    .line 1160
    iget-object v4, v2, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;->waiters:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/sleepycat/je/txn/LockManager;->getTxnIds(Ljava/util/Collection;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/LockConflictException;->setWaiterTxnIds([J)V

    .line 1161
    move-wide v4, p8

    invoke-virtual {v3, p8, p9}, Lcom/sleepycat/je/LockConflictException;->setTimeoutMillis(J)V

    .line 1163
    return-object v3
.end method

.method private notifyVictim(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;JJLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/utilint/Pair;
    .locals 17
    .param p1, "targetedVictim"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "currentLocker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lsn"    # Ljava/lang/Long;
    .param p4, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p5, "lastDC"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .param p6, "timeout"    # J
    .param p8, "startTime"    # J
    .param p10, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            "Lcom/sleepycat/je/txn/Locker;",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/LockType;",
            "Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;",
            "JJ",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;",
            ">;"
        }
    .end annotation

    .line 1009
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    const-wide/16 v0, 0x0

    cmp-long v2, p6, v0

    const/4 v3, 0x1

    .line 1030
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1009
    const/4 v4, 0x0

    .line 1065
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1009
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v15, v3

    move-object/from16 v8, p5

    .line 1017
    .end local p5    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v8, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v15, "waitForever":Z
    :goto_1
    if-nez v15, :cond_2

    invoke-static/range {p6 .. p9}, Lcom/sleepycat/je/txn/LockManager;->timeRemain(JJ)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2

    .line 1024
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v16, v15

    move-object v15, v8

    .end local v8    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v15, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v16, "waitForever":Z
    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/txn/LockManager;->validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v0, v14, v15}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1033
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p2

    move-wide/from16 v4, p6

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/txn/LockManager;->makeDeadlockException(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/Locker;JZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/LockConflictException;

    move-result-object v0

    throw v0

    .line 1017
    .end local v16    # "waitForever":Z
    .restart local v8    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v15, "waitForever":Z
    :cond_2
    move/from16 v16, v15

    move-object v15, v8

    .line 1042
    .end local v8    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v15, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .restart local v16    # "waitForever":Z
    monitor-enter p1

    .line 1043
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->notify()V

    .line 1044
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    const-wide/16 v2, 0x1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1050
    nop

    .line 1053
    invoke-virtual {v9, v12, v11, v13}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1054
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v0, v14, v15}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1057
    :cond_3
    new-instance v2, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    invoke-direct {v2, v9, v11, v12, v13}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;-><init>(Lcom/sleepycat/je/txn/LockManager;Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;)V

    .line 1064
    .local v2, "dc":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->hasCycle()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->hasTrueDeadlock()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 1069
    :cond_4
    move-object v8, v2

    .line 1076
    .end local v15    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .restart local v8    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;->chooseTargetedLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v3

    if-eq v3, v10, :cond_5

    .line 1077
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v0, v5, v8}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1084
    .end local v2    # "dc":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :cond_5
    move/from16 v15, v16

    goto :goto_1

    .line 1065
    .end local v8    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .restart local v2    # "dc":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .restart local v15    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :cond_6
    :goto_2
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v0, v5, v15}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1048
    .end local v2    # "dc":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1049
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, v9, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1

    .line 1044
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private performDeadlockDetectionDelay(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;JJ)Z
    .locals 7
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "grant"    # Lcom/sleepycat/je/txn/LockGrantType;
    .param p5, "timeout"    # J
    .param p7, "startTime"    # J

    .line 852
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDeadlockDetectionDelay()J

    move-result-wide v0

    .line 854
    .local v0, "ddDelay":J
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDeadlockDetection()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 855
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->getImportunate()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    goto :goto_1

    .line 861
    :cond_0
    cmp-long v2, p5, v4

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 863
    .local v2, "waitForever":Z
    :goto_0
    if-nez v2, :cond_2

    .line 864
    nop

    .line 865
    invoke-static {p5, p6, p7, p8}, Lcom/sleepycat/je/txn/LockManager;->timeRemain(JJ)J

    move-result-wide v5

    .line 864
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 869
    :cond_2
    const-wide/16 v5, 0x1

    :try_start_0
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    nop

    .line 875
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 876
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/sleepycat/je/txn/LockManager;->finishLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V

    .line 877
    return v4

    .line 881
    :cond_3
    return v3

    .line 870
    :catch_0
    move-exception v3

    .line 871
    .local v3, "IE":Ljava/lang/InterruptedException;
    new-instance v4, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v5, p0, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v4, v5, v3}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v4

    .line 858
    .end local v2    # "waitForever":Z
    .end local v3    # "IE":Ljava/lang/InterruptedException;
    :cond_4
    :goto_1
    return v3
.end method

.method private static setLockTableDump(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 197
    sput-boolean p0, Lcom/sleepycat/je/txn/LockManager;->lockTableDump:Z

    .line 198
    return-void
.end method

.method private static timeRemain(JJ)J
    .locals 2
    .param p0, "timeout"    # J
    .param p2, "startTime"    # J

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private waitForLock(Lcom/sleepycat/je/txn/LockAttemptResult;Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;JJLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;
    .locals 37
    .param p1, "result"    # Lcom/sleepycat/je/txn/LockAttemptResult;
    .param p2, "lsn"    # Ljava/lang/Long;
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p5, "lastDC"    # Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .param p6, "timeout"    # J
    .param p8, "startTime"    # J
    .param p10, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 441
    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v12, p4

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getImportunate()Z

    move-result v26

    .line 442
    .local v26, "isImportunate":Z
    const-wide/16 v9, 0x0

    cmp-long v0, p6, v9

    const/4 v11, 0x1

    const/16 v16, 0x0

    if-nez v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_0
    move/from16 v27, v0

    .line 443
    .local v27, "waitForever":Z
    const/16 v28, 0x0

    .line 445
    .local v28, "victim":Lcom/sleepycat/je/txn/Locker;
    sget-object v0, Lcom/sleepycat/je/txn/LockManager;->simulatePartialDeadlockHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v0, :cond_1

    .line 446
    invoke-interface {v0}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 487
    :cond_1
    move-object/from16 v8, p1

    .end local p1    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v8, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    :goto_1
    iget-object v0, v15, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDeadlockDetection()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v26, :cond_4

    .line 490
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/txn/LockManager;->checkAndHandleDeadlock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;JLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockManager$DeadlockResult;

    move-result-object v0

    .line 493
    .local v0, "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->access$000(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    move-object/from16 v33, v8

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_8

    .line 497
    :cond_2
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->access$100(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->access$200(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v28

    .line 499
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->access$300(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    move-result-object v1

    .line 500
    .end local p5    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v1, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    move-object v0, v1

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v28

    goto/16 :goto_a

    .line 508
    .end local v0    # "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    .end local v1    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .restart local p5    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :cond_3
    goto :goto_2

    .line 518
    :cond_4
    invoke-virtual {v15, v13, v14, v12}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 519
    move-object/from16 v33, v8

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_8

    .line 524
    :cond_5
    :goto_2
    if-eqz v27, :cond_6

    .line 525
    :try_start_0
    invoke-virtual {v14, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 529
    :catch_0
    move-exception v0

    move-object/from16 v33, v8

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_c

    .line 527
    :cond_6
    const-wide/16 v0, 0x1

    :try_start_1
    invoke-static/range {p6 .. p9}, Lcom/sleepycat/je/txn/LockManager;->timeRemain(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :goto_3
    nop

    .line 533
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->isTimedOut()Z

    move-result v0

    .line 534
    .local v0, "lockerTimedOut":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 536
    .local v29, "now":J
    if-nez v27, :cond_7

    sub-long v1, v29, p8

    cmp-long v1, v1, p6

    if-ltz v1, :cond_7

    move v1, v11

    goto :goto_4

    :cond_7
    move/from16 v1, v16

    :goto_4
    move/from16 v31, v1

    .line 539
    .local v31, "thisLockTimedOut":Z
    iget-object v1, v8, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v1, v2, :cond_8

    move v1, v11

    goto :goto_5

    :cond_8
    move/from16 v1, v16

    :goto_5
    move/from16 v32, v1

    .line 546
    .local v32, "isRestart":Z
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 547
    .local v7, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .end local v8    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v4, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    move-object v8, v1

    .line 549
    .local v8, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    if-nez v0, :cond_9

    if-eqz v31, :cond_a

    :cond_9
    if-nez v26, :cond_a

    move v5, v11

    goto :goto_6

    :cond_a
    move/from16 v5, v16

    .line 557
    .local v5, "getOwnersAndWaiters":Z
    :goto_6
    if-eqz v32, :cond_b

    if-nez v26, :cond_b

    move v6, v11

    goto :goto_7

    :cond_b
    move/from16 v6, v16

    .line 559
    .local v6, "flushFromWaiters":Z
    :goto_7
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v33, v4

    .end local v4    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v33, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/txn/LockManager;->validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 563
    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto :goto_8

    .line 566
    :cond_c
    if-eqz v26, :cond_e

    .line 567
    invoke-virtual {v15, v13, v14, v12}, Lcom/sleepycat/je/txn/LockManager;->stealLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v1

    .line 568
    .end local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v1, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    iget-boolean v2, v1, Lcom/sleepycat/je/txn/LockAttemptResult;->success:Z

    if-eqz v2, :cond_d

    .line 569
    move-object/from16 v0, p5

    move-object v8, v1

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v28

    goto/16 :goto_a

    .line 568
    :cond_d
    move-object v8, v1

    goto/16 :goto_1

    .line 576
    .end local v1    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    :cond_e
    if-nez v32, :cond_17

    .line 580
    if-nez v31, :cond_f

    if-nez v0, :cond_f

    .line 581
    move-object/from16 v8, v33

    goto/16 :goto_1

    .line 584
    :cond_f
    nop

    .line 585
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object v1, v12

    move-object/from16 v12, p4

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v13, p6

    move-object v4, v15

    move-object/from16 v15, p10

    invoke-direct/range {v9 .. v15}, Lcom/sleepycat/je/txn/LockManager;->checkAndHandleDeadlock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;JLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockManager$DeadlockResult;

    move-result-object v34

    .line 587
    .local v34, "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    invoke-static/range {v34 .. v34}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->access$000(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 588
    nop

    .line 629
    .end local v0    # "lockerTimedOut":Z
    .end local v5    # "getOwnersAndWaiters":Z
    .end local v6    # "flushFromWaiters":Z
    .end local v7    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .end local v29    # "now":J
    .end local v31    # "thisLockTimedOut":Z
    .end local v32    # "isRestart":Z
    .end local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .end local v34    # "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    .local v8, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    :goto_8
    move-object/from16 v0, p5

    move-object/from16 v5, v28

    move-object/from16 v8, v33

    .end local v8    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    goto :goto_a

    .line 591
    .restart local v0    # "lockerTimedOut":Z
    .restart local v5    # "getOwnersAndWaiters":Z
    .restart local v6    # "flushFromWaiters":Z
    .restart local v7    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local v8, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    .restart local v29    # "now":J
    .restart local v31    # "thisLockTimedOut":Z
    .restart local v32    # "isRestart":Z
    .restart local v34    # "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    :cond_10
    invoke-static/range {v34 .. v34}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->access$100(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 592
    invoke-static/range {v34 .. v34}, Lcom/sleepycat/je/txn/LockManager$DeadlockResult;->access$300(Lcom/sleepycat/je/txn/LockManager$DeadlockResult;)Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    move-result-object v9

    move-object/from16 v35, v9

    .end local p5    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v9, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    goto :goto_9

    .line 591
    .end local v9    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .restart local p5    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :cond_11
    move-object/from16 v35, p5

    .line 596
    .end local p5    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v35, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :goto_9
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v9 .. v16}, Lcom/sleepycat/je/txn/LockManager;->validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 601
    move-object/from16 v5, v28

    move-object/from16 v8, v33

    move-object/from16 v0, v35

    .line 629
    .end local v6    # "flushFromWaiters":Z
    .end local v7    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .end local v28    # "victim":Lcom/sleepycat/je/txn/Locker;
    .end local v29    # "now":J
    .end local v31    # "thisLockTimedOut":Z
    .end local v32    # "isRestart":Z
    .end local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .end local v34    # "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    .end local v35    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v0, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v5, "victim":Lcom/sleepycat/je/txn/Locker;
    .local v8, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    :goto_a
    if-nez v5, :cond_13

    .line 630
    invoke-virtual {v4, v2, v3, v1}, Lcom/sleepycat/je/txn/LockManager;->isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 631
    iget-object v6, v8, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    invoke-direct {v4, v3, v2, v1, v6}, Lcom/sleepycat/je/txn/LockManager;->finishLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V

    goto :goto_b

    .line 630
    :cond_12
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 634
    :cond_13
    :goto_b
    new-instance v6, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;

    invoke-direct {v6, v5, v0, v8}, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/LockAttemptResult;)V

    return-object v6

    .line 604
    .local v0, "lockerTimedOut":Z
    .local v5, "getOwnersAndWaiters":Z
    .restart local v6    # "flushFromWaiters":Z
    .restart local v7    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local v8, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    .restart local v28    # "victim":Lcom/sleepycat/je/txn/Locker;
    .restart local v29    # "now":J
    .restart local v31    # "thisLockTimedOut":Z
    .restart local v32    # "isRestart":Z
    .restart local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v34    # "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    .restart local v35    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :cond_14
    if-nez v35, :cond_16

    .line 614
    if-eqz v0, :cond_15

    .line 615
    const/4 v10, 0x0

    .line 616
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v14, v33

    .end local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v14, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    iget-object v15, v14, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    iget-object v9, v14, Lcom/sleepycat/je/txn/LockAttemptResult;->useLock:Lcom/sleepycat/je/txn/Lock;

    move-object/from16 v16, v9

    .line 618
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getTxnTimeout()J

    move-result-wide v17

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getTxnStartMillis()J

    move-result-wide v19

    .line 615
    move-object/from16 v9, p0

    move-object/from16 v11, p3

    move-object/from16 v36, v14

    .end local v14    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v36, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    move-object/from16 v14, p4

    move-wide/from16 v21, v29

    move-object/from16 v23, p10

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    invoke-direct/range {v9 .. v25}, Lcom/sleepycat/je/txn/LockManager;->makeTimeoutException(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/LockConflictException;

    move-result-object v9

    throw v9

    .line 621
    .end local v36    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    :cond_15
    move-object/from16 v36, v33

    .end local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v36    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    const/4 v10, 0x1

    .line 622
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v14, v36

    .end local v36    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v14    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    iget-object v15, v14, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    iget-object v9, v14, Lcom/sleepycat/je/txn/LockAttemptResult;->useLock:Lcom/sleepycat/je/txn/Lock;

    move-object/from16 v16, v9

    .line 621
    move-object/from16 v9, p0

    move-object/from16 v11, p3

    move-object/from16 v33, v14

    .end local v14    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    move-object/from16 v14, p4

    move-wide/from16 v17, p6

    move-wide/from16 v19, p8

    move-wide/from16 v21, v29

    move-object/from16 v23, p10

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    invoke-direct/range {v9 .. v25}, Lcom/sleepycat/je/txn/LockManager;->makeTimeoutException(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/LockConflictException;

    move-result-object v9

    throw v9

    .line 605
    :cond_16
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, v35

    move-object/from16 v11, p3

    move-wide/from16 v12, p6

    move-object/from16 v15, p10

    invoke-direct/range {v9 .. v15}, Lcom/sleepycat/je/txn/LockManager;->makeDeadlockException(Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;Lcom/sleepycat/je/txn/Locker;JZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/LockConflictException;

    move-result-object v9

    throw v9

    .line 577
    .end local v34    # "dlr":Lcom/sleepycat/je/txn/LockManager$DeadlockResult;
    .end local v35    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .restart local p5    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :cond_17
    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    sget-object v9, Lcom/sleepycat/je/txn/LockManager;->rangeRestartException:Lcom/sleepycat/je/dbi/RangeRestartException;

    throw v9

    .line 529
    .end local v0    # "lockerTimedOut":Z
    .end local v5    # "getOwnersAndWaiters":Z
    .end local v6    # "flushFromWaiters":Z
    .end local v7    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .end local v29    # "now":J
    .end local v31    # "thisLockTimedOut":Z
    .end local v32    # "isRestart":Z
    .end local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v8, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    :catch_1
    move-exception v0

    move-object/from16 v33, v8

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    .line 530
    .end local v8    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v0, "IE":Ljava/lang/InterruptedException;
    .restart local v33    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    :goto_c
    new-instance v5, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v6, v4, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v5, v6, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method abstract attemptLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/txn/LockAttemptResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method attemptLockInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZI)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 12
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "nonBlockingRequest"    # Z
    .param p5, "jumpAheadOfWaiters"    # Z
    .param p6, "lockTableIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 786
    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p6

    iget-object v2, v0, Lcom/sleepycat/je/txn/LockManager;->nRequests:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 789
    iget-object v2, v0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v10, v2, v9

    .line 790
    .local v10, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/Lock;

    .line 791
    .local v2, "useLock":Lcom/sleepycat/je/txn/Lock;
    if-nez v2, :cond_0

    .line 792
    new-instance v3, Lcom/sleepycat/je/txn/ThinLockImpl;

    invoke-direct {v3}, Lcom/sleepycat/je/txn/ThinLockImpl;-><init>()V

    move-object v2, v3

    .line 793
    invoke-interface {v10, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v3, v0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    sget-wide v4, Lcom/sleepycat/je/txn/LockManager;->TOTAL_THINLOCKIMPL_OVERHEAD:J

    invoke-virtual {v3, v4, v5, v9}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    move-object v11, v2

    goto :goto_0

    .line 791
    :cond_0
    move-object v11, v2

    .line 802
    .end local v2    # "useLock":Lcom/sleepycat/je/txn/Lock;
    .local v11, "useLock":Lcom/sleepycat/je/txn/Lock;
    :goto_0
    iget-object v7, v0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    .line 803
    move-object v2, v11

    move-object v3, p3

    move-object v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/sleepycat/je/txn/Lock;->lock(Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/Locker;ZZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v2

    .line 805
    .local v2, "lar":Lcom/sleepycat/je/txn/LockAttemptResult;
    iget-object v3, v2, Lcom/sleepycat/je/txn/LockAttemptResult;->useLock:Lcom/sleepycat/je/txn/Lock;

    if-eq v3, v11, :cond_1

    .line 807
    iget-object v11, v2, Lcom/sleepycat/je/txn/LockAttemptResult;->useLock:Lcom/sleepycat/je/txn/Lock;

    .line 808
    invoke-interface {v10, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-object v3, v0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    sget-wide v4, Lcom/sleepycat/je/txn/LockManager;->THINLOCK_MUTATE_OVERHEAD:J

    .line 811
    invoke-virtual {v3, v4, v5, v9}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 813
    :cond_1
    iget-object v3, v2, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    .line 814
    .local v3, "lockGrant":Lcom/sleepycat/je/txn/LockGrantType;
    const/4 v4, 0x0

    .line 817
    .local v4, "success":Z
    sget-object v5, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v3, v5, :cond_5

    sget-object v5, Lcom/sleepycat/je/txn/LockGrantType;->PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v3, v5, :cond_2

    goto :goto_2

    .line 821
    :cond_2
    sget-object v5, Lcom/sleepycat/je/txn/LockGrantType;->EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v3, v5, :cond_3

    .line 822
    const/4 v4, 0x1

    move-object v5, p2

    move-object v6, p3

    goto :goto_3

    .line 823
    :cond_3
    sget-object v5, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v3, v5, :cond_4

    goto :goto_1

    .line 826
    :cond_4
    iget-object v5, v0, Lcom/sleepycat/je/txn/LockManager;->nWaits:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 828
    :goto_1
    move-object v5, p2

    move-object v6, p3

    goto :goto_3

    .line 819
    :cond_5
    :goto_2
    move-object v5, p2

    move-object v6, p3

    invoke-virtual {p2, p1, p3, v3}, Lcom/sleepycat/je/txn/Locker;->addLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V

    .line 820
    const/4 v4, 0x1

    .line 828
    :goto_3
    new-instance v7, Lcom/sleepycat/je/txn/LockAttemptResult;

    invoke-direct {v7, v11, v3, v4}, Lcom/sleepycat/je/txn/LockAttemptResult;-><init>(Lcom/sleepycat/je/txn/Lock;Lcom/sleepycat/je/txn/LockGrantType;Z)V

    return-object v7
.end method

.method abstract demote(JLcom/sleepycat/je/txn/Locker;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method demoteInternal(JLcom/sleepycat/je/txn/Locker;I)V
    .locals 2
    .param p1, "lsn"    # J
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "lockTableIndex"    # I

    .line 1412
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p4

    .line 1413
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1415
    .local v1, "useLock":Lcom/sleepycat/je/txn/Lock;
    if-eqz v1, :cond_0

    .line 1416
    invoke-interface {v1, p3}, Lcom/sleepycat/je/txn/Lock;->demote(Lcom/sleepycat/je/txn/Locker;)V

    .line 1417
    invoke-virtual {p3, p1, p2, v1}, Lcom/sleepycat/je/txn/Locker;->moveWriteToReadLock(JLcom/sleepycat/je/txn/Lock;)V

    .line 1419
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1808
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0}, Lcom/sleepycat/je/txn/LockManager;->dumpToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1809
    return-void
.end method

.method abstract dumpLockTable(Lcom/sleepycat/je/utilint/StatGroup;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method dumpLockTableInternal(Lcom/sleepycat/je/utilint/StatGroup;IZ)V
    .locals 12
    .param p1, "tableStats"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "i"    # I
    .param p3, "clear"    # Z

    .line 1771
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Single lock table"

    const-string v2, "Temporary stat group"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    .local v0, "oneTable":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_TOTAL:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1775
    .local v1, "totalLocks":Lcom/sleepycat/je/utilint/IntStat;
    new-instance v2, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v3, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WAITERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v0, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1776
    .local v2, "waiters":Lcom/sleepycat/je/utilint/IntStat;
    new-instance v3, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v4, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_OWNERS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1777
    .local v3, "owners":Lcom/sleepycat/je/utilint/IntStat;
    new-instance v4, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v5, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_READ_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v4, v0, v5}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1778
    .local v4, "readLocks":Lcom/sleepycat/je/utilint/IntStat;
    new-instance v5, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v6, Lcom/sleepycat/je/txn/LockStatDefinition;->LOCK_WRITE_LOCKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v5, v0, v6}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 1780
    .local v5, "writeLocks":Lcom/sleepycat/je/utilint/IntStat;
    iget-object v6, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v6, v6, p2

    .line 1781
    .local v6, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sleepycat/je/utilint/IntStat;->add(I)V

    .line 1783
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/txn/Lock;

    .line 1784
    .local v8, "lock":Lcom/sleepycat/je/txn/Lock;
    invoke-interface {v8}, Lcom/sleepycat/je/txn/Lock;->nWaiters()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/sleepycat/je/utilint/IntStat;->add(I)V

    .line 1785
    invoke-interface {v8}, Lcom/sleepycat/je/txn/Lock;->nOwners()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/sleepycat/je/utilint/IntStat;->add(I)V

    .line 1789
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/sleepycat/je/txn/Lock;->getOwnersClone(Z)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/txn/LockInfo;

    .line 1791
    .local v10, "info":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1792
    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    goto :goto_2

    .line 1794
    :cond_0
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 1796
    .end local v10    # "info":Lcom/sleepycat/je/txn/LockInfo;
    :goto_2
    goto :goto_1

    .line 1797
    .end local v8    # "lock":Lcom/sleepycat/je/txn/Lock;
    :cond_1
    goto :goto_0

    .line 1799
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 1800
    return-void
.end method

.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 1
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 186
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_DEADLOCK_STACK_TRACE:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 187
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    .line 186
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockInfo;->setDeadlockStackTrace(Z)V

    .line 189
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->TXN_DUMPLOCKS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 190
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    .line 189
    invoke-static {v0}, Lcom/sleepycat/je/txn/LockManager;->setLockTableDump(Z)V

    .line 191
    return-void
.end method

.method getLockTableIndex(J)I
    .locals 2
    .param p1, "lsn"    # J

    .line 205
    long-to-int v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/je/txn/LockManager;->nLockTables:I

    rem-int/2addr v0, v1

    return v0
.end method

.method getLockTableIndex(Ljava/lang/Long;)I
    .locals 2
    .param p1, "lsn"    # Ljava/lang/Long;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/je/txn/LockManager;->nLockTables:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public abstract getOwnedLockType(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;
.end method

.method getOwnedLockTypeInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;I)Lcom/sleepycat/je/txn/LockType;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lockTableIndex"    # I

    .line 718
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p3

    .line 719
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 720
    .local v1, "useLock":Lcom/sleepycat/je/txn/Lock;
    if-nez v1, :cond_0

    .line 721
    const/4 v2, 0x0

    return-object v2

    .line 723
    :cond_0
    invoke-interface {v1, p2}, Lcom/sleepycat/je/txn/Lock;->getOwnedLockType(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;

    move-result-object v2

    return-object v2
.end method

.method public abstract getOwners(Ljava/lang/Long;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end method

.method getOwnersInternal(Ljava/lang/Long;IZ)Ljava/util/Set;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I
    .param p3, "cloneLockInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "IZ)",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 685
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 686
    .local v1, "useLock":Lcom/sleepycat/je/txn/Lock;
    if-nez v1, :cond_0

    .line 687
    const/4 v2, 0x0

    return-object v2

    .line 689
    :cond_0
    invoke-interface {v1, p3}, Lcom/sleepycat/je/txn/Lock;->getOwnersClone(Z)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method getThreadLockers(Ljava/lang/Thread;)Ljava/util/Iterator;
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/sleepycat/je/txn/ThreadLocker;",
            ">;"
        }
    .end annotation

    .line 1713
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1714
    sget-object v0, Lcom/sleepycat/je/txn/LockManager;->EMPTY_THREAD_LOCKERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1716
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 1717
    .local v0, "set":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<Lcom/sleepycat/je/txn/ThreadLocker;>;"
    if-nez v0, :cond_1

    .line 1718
    sget-object v1, Lcom/sleepycat/je/txn/LockManager;->EMPTY_THREAD_LOCKERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 1720
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method abstract getTimeoutInfo(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sleepycat/je/txn/Locker;",
            "J",
            "Lcom/sleepycat/je/txn/LockType;",
            "Lcom/sleepycat/je/txn/LockGrantType;",
            "Lcom/sleepycat/je/txn/Lock;",
            "JJJ",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)",
            "Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;"
        }
    .end annotation
.end method

.method getTimeoutInfoInternal(ZLcom/sleepycat/je/txn/Locker;JLcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;Lcom/sleepycat/je/txn/Lock;JJJLcom/sleepycat/je/dbi/DatabaseImpl;Ljava/util/Set;Ljava/util/List;)Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;
    .locals 15
    .param p1, "isLockNotTxnTimeout"    # Z
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lsn"    # J
    .param p5, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p6, "grantType"    # Lcom/sleepycat/je/txn/LockGrantType;
    .param p7, "useLock"    # Lcom/sleepycat/je/txn/Lock;
    .param p8, "timeout"    # J
    .param p10, "start"    # J
    .param p12, "now"    # J
    .param p14, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sleepycat/je/txn/Locker;",
            "J",
            "Lcom/sleepycat/je/txn/LockType;",
            "Lcom/sleepycat/je/txn/LockGrantType;",
            "Lcom/sleepycat/je/txn/Lock;",
            "JJJ",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)",
            "Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;"
        }
    .end annotation

    .line 1224
    .local p15, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p16, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    move-object v1, p0

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    sget-boolean v0, Lcom/sleepycat/je/txn/LockManager;->lockTableDump:Z

    if-eqz v0, :cond_3

    .line 1225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "++++++++++ begin lock table dump ++++++++++"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1226
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_0
    iget v0, v1, Lcom/sleepycat/je/txn/LockManager;->nLockTables:I

    if-ge v4, v0, :cond_2

    .line 1227
    const/4 v5, 0x0

    .line 1228
    .local v5, "success":Z
    const/4 v0, 0x0

    move v6, v0

    .local v6, "j":I
    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 1230
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1231
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v4}, Lcom/sleepycat/je/txn/LockManager;->dumpToStringNoLatch(Ljava/lang/StringBuilder;I)V

    .line 1232
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    const/4 v5, 0x1

    .line 1234
    goto :goto_2

    .line 1235
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 1228
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1239
    .end local v6    # "j":I
    :cond_0
    :goto_2
    if-nez v5, :cond_1

    .line 1240
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t dump locktable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1226
    .end local v5    # "success":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1243
    .end local v4    # "i":I
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "++++++++++ end lock table dump ++++++++++"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1246
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_4

    const-string v4, "Lock"

    goto :goto_3

    :cond_4
    const-string v4, "Transaction"

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v4, " expired. Locker "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1249
    const-string v4, ": waited for lock"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    if-eqz p14, :cond_5

    .line 1252
    const-string v4, " on database="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p14 .. p14}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_5
    const-string v4, " LockAddr:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1255
    const-string v4, " LSN="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-string v4, " type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, p5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v4, " grant="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v7, p6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v4, " timeoutMillis="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v8, p8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1259
    const-string v4, " startTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v10, p10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1260
    const-string v4, " endTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v12, p12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1261
    const-string v4, "\nOwners: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1262
    const-string v4, "\nWaiters: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    new-instance v4, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14, v2, v3}, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    return-object v4
.end method

.method public abstract getWaiters(Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end method

.method getWaitersInternal(Ljava/lang/Long;I)Ljava/util/List;
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "I)",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 701
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 702
    .local v1, "useLock":Lcom/sleepycat/je/txn/Lock;
    if-nez v1, :cond_0

    .line 703
    const/4 v2, 0x0

    return-object v2

    .line 705
    :cond_0
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->getWaitersListClone()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public abstract getWriteOwnerLocker(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method getWriteOwnerLockerInternal(Ljava/lang/Long;I)Lcom/sleepycat/je/txn/Locker;
    .locals 5
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I

    .line 1529
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 1530
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1531
    .local v1, "lock":Lcom/sleepycat/je/txn/Lock;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1532
    return-object v2

    .line 1533
    :cond_0
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nOwners()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1535
    return-object v2

    .line 1537
    :cond_1
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->getWriteOwnerLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    return-object v2
.end method

.method public abstract isLockUncontended(Ljava/lang/Long;)Z
.end method

.method isLockUncontendedInternal(Ljava/lang/Long;I)Z
    .locals 4
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I

    .line 731
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 732
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 733
    .local v1, "useLock":Lcom/sleepycat/je/txn/Lock;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 734
    return v2

    .line 736
    :cond_0
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nWaiters()I

    move-result v3

    if-nez v3, :cond_1

    .line 737
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nOwners()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 736
    :goto_0
    return v2
.end method

.method abstract isLocked(Ljava/lang/Long;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method isLockedInternal(Ljava/lang/Long;I)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I

    .line 1440
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 1441
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1442
    .local v1, "entry":Lcom/sleepycat/je/txn/Lock;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nOwners()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method abstract isOwner(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method isOwnerInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;I)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "lockTableIndex"    # I

    .line 1460
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p4

    .line 1461
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1462
    .local v1, "entry":Lcom/sleepycat/je/txn/Lock;
    if-eqz v1, :cond_0

    invoke-interface {v1, p2, p3}, Lcom/sleepycat/je/txn/Lock;->isOwner(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method abstract isWaiter(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method isWaiterInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;I)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lockTableIndex"    # I

    .line 1480
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p3

    .line 1481
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1482
    .local v1, "entry":Lcom/sleepycat/je/txn/Lock;
    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/sleepycat/je/txn/Lock;->isWaiter(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 1743
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    .line 1745
    .local v0, "copyStats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "Locktable"

    const-string v3, "The types of locks held in the lock table"

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    .local v1, "tableStats":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getFast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1749
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/txn/LockManager;->dumpLockTable(Lcom/sleepycat/je/utilint/StatGroup;Z)V

    .line 1753
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->addAll(Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 1755
    return-object v0
.end method

.method public lock(JLcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;JZZLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockGrantType;
    .locals 23
    .param p1, "lsn"    # J
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p5, "timeout"    # J
    .param p7, "nonBlockingRequest"    # Z
    .param p8, "jumpAheadOfWaiters"    # Z
    .param p9, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 252
    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    const-wide/16 v10, 0x0

    cmp-long v0, p5, v10

    if-ltz v0, :cond_e

    .line 255
    sget-object v0, Lcom/sleepycat/je/txn/LockType;->NONE:Lcom/sleepycat/je/txn/LockType;

    if-ne v13, v0, :cond_0

    .line 256
    sget-object v0, Lcom/sleepycat/je/txn/LockGrantType;->NONE_NEEDED:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v0

    .line 264
    :cond_0
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 267
    nop

    .line 268
    :try_start_1
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 267
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/txn/LockManager;->attemptLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZ)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v0

    .line 270
    .local v0, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    iget-object v1, v0, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    move-object v12, v1

    .line 276
    .local v12, "grant":Lcom/sleepycat/je/txn/LockGrantType;
    iget-boolean v1, v0, Lcom/sleepycat/je/txn/LockAttemptResult;->success:Z

    if-nez v1, :cond_a

    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v12, v1, :cond_1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_5

    .line 284
    :cond_1
    sget-boolean v1, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v1, :cond_2

    .line 285
    if-nez p7, :cond_2

    .line 286
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 329
    .end local v0    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .end local v12    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :catchall_0
    move-exception v0

    move-wide/from16 v21, p5

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_8

    .line 295
    .restart local v0    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v12    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :cond_2
    :goto_0
    if-nez p7, :cond_9

    .line 297
    :try_start_3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Lcom/sleepycat/je/txn/Locker;->setWaitingFor(Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;)V

    .line 299
    iget-object v1, v14, Lcom/sleepycat/je/txn/Locker;->afterWaiterHook:Lcom/sleepycat/je/utilint/TestHook;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v1, :cond_3

    .line 300
    :try_start_4
    iget-object v1, v14, Lcom/sleepycat/je/txn/Locker;->afterWaiterHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-interface {v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 304
    :cond_3
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 311
    .local v8, "startTime":J
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getTxnTimeout()J

    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-wide v6, v1

    .line 312
    .local v6, "txnTimeout":J
    cmp-long v1, v6, v10

    if-lez v1, :cond_5

    .line 313
    nop

    .line 314
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/txn/Locker;->getTxnStartMillis()J

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Lcom/sleepycat/je/txn/LockManager;->timeRemain(JJ)J

    move-result-wide v1

    .line 316
    .local v1, "txnTimeRemaining":J
    cmp-long v3, p5, v10

    if-eqz v3, :cond_4

    cmp-long v3, v1, p5

    if-gez v3, :cond_5

    .line 317
    :cond_4
    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide/from16 v21, v3

    .end local p5    # "timeout":J
    .local v3, "timeout":J
    goto :goto_1

    .line 325
    .end local v1    # "txnTimeRemaining":J
    .end local v3    # "timeout":J
    .restart local p5    # "timeout":J
    :cond_5
    move-wide/from16 v21, p5

    .end local p5    # "timeout":J
    .local v21, "timeout":J
    :goto_1
    nop

    .line 326
    :try_start_7
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 325
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-wide v10, v6

    .end local v6    # "txnTimeout":J
    .local v10, "txnTimeout":J
    move-wide/from16 v6, v21

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/je/txn/LockManager;->performDeadlockDetectionDelay(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    monitor-exit p3

    return-object v12

    .line 329
    .end local v10    # "txnTimeout":J
    :cond_6
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 331
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v12

    move-object v1, v0

    .line 352
    .end local v0    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .end local v12    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    .local v1, "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .local v2, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v3, "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :goto_2
    :try_start_8
    monitor-enter p3
    :try_end_8
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 353
    nop

    .line 354
    :try_start_9
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 353
    move-object/from16 v10, p0

    move-object v11, v1

    move-object v4, v13

    move-object/from16 v13, p3

    move-object v5, v14

    move-object/from16 v14, p4

    move-object v6, v15

    move-object v15, v2

    move-wide/from16 v16, v21

    move-wide/from16 v18, v8

    move-object/from16 v20, p9

    :try_start_a
    invoke-direct/range {v10 .. v20}, Lcom/sleepycat/je/txn/LockManager;->waitForLock(Lcom/sleepycat/je/txn/LockAttemptResult;Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;JJLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;

    move-result-object v0

    move-object v7, v0

    .line 356
    .local v7, "waitResult":Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;
    monitor-exit p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 358
    :try_start_b
    invoke-virtual {v7}, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->getResult()Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v0

    move-object v1, v0

    .line 359
    iget-object v0, v1, Lcom/sleepycat/je/txn/LockAttemptResult;->lockGrant:Lcom/sleepycat/je/txn/LockGrantType;

    move-object v3, v0

    .line 360
    invoke-virtual {v7}, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->getDeadLockChecker()Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;

    move-result-object v15

    .line 361
    .end local v2    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v15, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    invoke-virtual {v7}, Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;->getVictim()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    move-object v2, v0

    .line 363
    .local v2, "victim":Lcom/sleepycat/je/txn/Locker;
    if-nez v2, :cond_7

    .line 365
    return-object v3

    .line 372
    :cond_7
    nop

    .line 373
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 372
    move-object/from16 v10, p0

    move-object v11, v2

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    move-wide/from16 v16, v21

    move-wide/from16 v18, v8

    move-object/from16 v20, p9

    invoke-direct/range {v10 .. v20}, Lcom/sleepycat/je/txn/LockManager;->notifyVictim(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;JJLcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/utilint/Pair;

    move-result-object v0

    move-object v10, v0

    .line 376
    .local v10, "nvResult":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Boolean;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;>;"
    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/Pair;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    monitor-enter p3
    :try_end_b
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 384
    :try_start_c
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v6, v5, v0, v4, v3}, Lcom/sleepycat/je/txn/LockManager;->finishLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/LockGrantType;)V

    .line 385
    monitor-exit p3

    .line 386
    return-object v3

    .line 385
    :catchall_1
    move-exception v0

    monitor-exit p3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v21    # "timeout":J
    .end local p1    # "lsn":J
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .end local p7    # "nonBlockingRequest":Z
    .end local p8    # "jumpAheadOfWaiters":Z
    .end local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_d
    throw v0

    .line 394
    .restart local v21    # "timeout":J
    .restart local p1    # "lsn":J
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .restart local p7    # "nonBlockingRequest":Z
    .restart local p8    # "jumpAheadOfWaiters":Z
    .restart local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_8
    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/Pair;->second()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    :try_end_d
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    move-object v2, v0

    .line 395
    .end local v7    # "waitResult":Lcom/sleepycat/je/txn/LockManager$WaitForLockResult;
    .end local v10    # "nvResult":Lcom/sleepycat/je/utilint/Pair;, "Lcom/sleepycat/je/utilint/Pair<Ljava/lang/Boolean;Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;>;"
    .end local v15    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .local v2, "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    goto :goto_2

    .line 356
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    :goto_3
    :try_start_e
    monitor-exit p3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .end local v21    # "timeout":J
    .end local p1    # "lsn":J
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .end local p7    # "nonBlockingRequest":Z
    .end local p8    # "jumpAheadOfWaiters":Z
    .end local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_f
    throw v0
    :try_end_f
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    .line 398
    .end local v1    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .end local v2    # "lastDC":Lcom/sleepycat/je/txn/LockManager$DeadlockChecker;
    .end local v3    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    .end local v8    # "startTime":J
    .restart local v21    # "timeout":J
    .restart local p1    # "lsn":J
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .restart local p7    # "nonBlockingRequest":Z
    .restart local p8    # "jumpAheadOfWaiters":Z
    .restart local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_0
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_9

    .line 396
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    goto/16 :goto_b

    .line 329
    :catchall_4
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    goto :goto_8

    .line 295
    .end local v21    # "timeout":J
    .restart local v0    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .restart local v12    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    .restart local p5    # "timeout":J
    :cond_9
    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    :try_start_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "lsn":J
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .end local p5    # "timeout":J
    .end local p7    # "nonBlockingRequest":Z
    .end local p8    # "jumpAheadOfWaiters":Z
    .end local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    throw v1

    .line 276
    .restart local p1    # "lsn":J
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .restart local p5    # "timeout":J
    .restart local p7    # "nonBlockingRequest":Z
    .restart local p8    # "jumpAheadOfWaiters":Z
    .restart local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_a
    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    .line 277
    :goto_5
    if-nez p7, :cond_c

    iget-boolean v1, v0, Lcom/sleepycat/je/txn/LockAttemptResult;->success:Z

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "lsn":J
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .end local p5    # "timeout":J
    .end local p7    # "nonBlockingRequest":Z
    .end local p8    # "jumpAheadOfWaiters":Z
    .end local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    throw v1

    .line 278
    .restart local p1    # "lsn":J
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .restart local p5    # "timeout":J
    .restart local p7    # "nonBlockingRequest":Z
    .restart local p8    # "jumpAheadOfWaiters":Z
    .restart local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_c
    :goto_6
    sget-object v1, Lcom/sleepycat/je/txn/LockManager;->afterLockHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v1, :cond_d

    .line 279
    invoke-interface {v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 281
    :cond_d
    monitor-exit p3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    return-object v12

    .line 329
    .end local v0    # "result":Lcom/sleepycat/je/txn/LockAttemptResult;
    .end local v12    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    :goto_7
    move-wide/from16 v21, p5

    .end local p5    # "timeout":J
    .restart local v21    # "timeout":J
    :goto_8
    :try_start_11
    monitor-exit p3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .end local v21    # "timeout":J
    .end local p1    # "lsn":J
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .end local p7    # "nonBlockingRequest":Z
    .end local p8    # "jumpAheadOfWaiters":Z
    .end local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_12
    throw v0
    :try_end_12
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Lcom/sleepycat/je/dbi/RangeRestartException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    .line 398
    .restart local v21    # "timeout":J
    .restart local p1    # "lsn":J
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p4    # "type":Lcom/sleepycat/je/txn/LockType;
    .restart local p7    # "nonBlockingRequest":Z
    .restart local p8    # "jumpAheadOfWaiters":Z
    .restart local p9    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_3
    move-exception v0

    goto :goto_9

    .line 396
    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_b

    .line 329
    :catchall_7
    move-exception v0

    goto :goto_8

    .line 398
    .end local v21    # "timeout":J
    .restart local p5    # "timeout":J
    :catch_6
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v21, p5

    .line 400
    .end local p5    # "timeout":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v21    # "timeout":J
    :goto_9
    iget-object v1, v6, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 396
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v21    # "timeout":J
    .restart local p5    # "timeout":J
    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    :goto_a
    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v21, p5

    .line 397
    .end local p5    # "timeout":J
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v21    # "timeout":J
    :goto_b
    throw v0

    .line 252
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v21    # "timeout":J
    .restart local p5    # "timeout":J
    :cond_e
    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method lockStat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/LockStats;
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1730
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Locktable"

    const-string v2, "The types of locks held in the lock table"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    .local v0, "tableStats":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getFast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1734
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/txn/LockManager;->dumpLockTable(Lcom/sleepycat/je/utilint/StatGroup;Z)V

    .line 1737
    :cond_0
    new-instance v1, Lcom/sleepycat/je/LockStats;

    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v2

    .line 1738
    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/LockStats;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatGroup;)V

    .line 1737
    return-object v1
.end method

.method abstract lookupLock(Ljava/lang/Long;)Lcom/sleepycat/je/txn/Lock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method lookupLockInternal(Ljava/lang/Long;I)Lcom/sleepycat/je/txn/Lock;
    .locals 2
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I

    .line 767
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 768
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    return-object v1
.end method

.method abstract nOwners(Ljava/lang/Long;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method nOwnersInternal(Ljava/lang/Long;I)I
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I

    .line 1512
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 1513
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1514
    .local v1, "entry":Lcom/sleepycat/je/txn/Lock;
    if-nez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nOwners()I

    move-result v2

    :goto_0
    return v2
.end method

.method abstract nWaiters(Ljava/lang/Long;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method nWaitersInternal(Ljava/lang/Long;I)I
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "lockTableIndex"    # I

    .line 1496
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 1497
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1498
    .local v1, "entry":Lcom/sleepycat/je/txn/Lock;
    if-nez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nWaiters()I

    move-result v2

    :goto_0
    return v2
.end method

.method public abstract ownsOrSharesLock(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;)Z
.end method

.method ownsOrSharesLockInternal(Lcom/sleepycat/je/txn/Locker;Ljava/lang/Long;I)Z
    .locals 7
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lsn"    # Ljava/lang/Long;
    .param p3, "lockTableIndex"    # I

    .line 745
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p3

    .line 746
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 747
    .local v1, "useLock":Lcom/sleepycat/je/txn/Lock;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 748
    return v2

    .line 751
    :cond_0
    invoke-virtual {p0, p2, p3, v2}, Lcom/sleepycat/je/txn/LockManager;->getOwnersInternal(Ljava/lang/Long;IZ)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/txn/LockInfo;

    .line 752
    .local v4, "info":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v5

    .line 753
    .local v5, "owner":Lcom/sleepycat/je/txn/Locker;
    if-eq v5, p1, :cond_2

    .line 754
    invoke-virtual {v5, p1}, Lcom/sleepycat/je/txn/Locker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 755
    invoke-virtual {p1, v5}, Lcom/sleepycat/je/txn/Locker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 758
    .end local v4    # "info":Lcom/sleepycat/je/txn/LockInfo;
    .end local v5    # "owner":Lcom/sleepycat/je/txn/Locker;
    :cond_1
    goto :goto_0

    .line 756
    .restart local v4    # "info":Lcom/sleepycat/je/txn/LockInfo;
    .restart local v5    # "owner":Lcom/sleepycat/je/txn/Locker;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 759
    .end local v4    # "info":Lcom/sleepycat/je/txn/LockInfo;
    .end local v5    # "owner":Lcom/sleepycat/je/txn/Locker;
    :cond_3
    return v2
.end method

.method registerThreadLocker(Lcom/sleepycat/je/txn/ThreadLocker;)V
    .locals 4
    .param p1, "locker"    # Lcom/sleepycat/je/txn/ThreadLocker;

    .line 1678
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1679
    return-void

    .line 1681
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1682
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 1683
    .local v1, "set":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<Lcom/sleepycat/je/txn/ThreadLocker;>;"
    if-eqz v1, :cond_2

    .line 1684
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/TinyHashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1685
    .local v2, "added":Z
    if-eqz v2, :cond_1

    .line 1686
    .end local v2    # "added":Z
    goto :goto_0

    .line 1685
    .restart local v2    # "added":Z
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1687
    .end local v2    # "added":Z
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    new-instance v3, Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-direct {v3, p1}, Lcom/sleepycat/je/utilint/TinyHashSet;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    :goto_0
    return-void
.end method

.method public release(JLcom/sleepycat/je/txn/Locker;)Z
    .locals 4
    .param p1, "lsn"    # J
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1291
    nop

    .line 1292
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/txn/LockManager;->releaseAndFindNotifyTargets(JLcom/sleepycat/je/txn/Locker;)Ljava/util/Set;

    move-result-object v0

    .line 1294
    .local v0, "newOwners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/Locker;>;"
    if-nez v0, :cond_0

    .line 1295
    const/4 v1, 0x0

    return v1

    .line 1298
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1304
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/Locker;

    .line 1306
    .local v2, "newOwner":Lcom/sleepycat/je/txn/Locker;
    monitor-enter v2
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1308
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    :try_start_2
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1311
    .end local v2    # "newOwner":Lcom/sleepycat/je/txn/Locker;
    goto :goto_0

    .line 1310
    .restart local v2    # "newOwner":Lcom/sleepycat/je/txn/Locker;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "lsn":J
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    throw v1
    :try_end_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1308
    .restart local p1    # "lsn":J
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "lsn":J
    .end local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1314
    .end local v2    # "newOwner":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "lsn":J
    .restart local p3    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1318
    .end local v0    # "newOwners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/Locker;>;"
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 1316
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1317
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    throw v0
.end method

.method abstract releaseAndFindNotifyTargets(JLcom/sleepycat/je/txn/Locker;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/je/txn/Locker;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/Locker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method releaseAndFindNotifyTargetsInternal(JLcom/sleepycat/je/txn/Locker;I)Ljava/util/Set;
    .locals 6
    .param p1, "lsn"    # J
    .param p3, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p4, "lockTableIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/je/txn/Locker;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/Locker;",
            ">;"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p4

    .line 1343
    .local v0, "lockTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/txn/Lock;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1344
    .local v1, "lock":Lcom/sleepycat/je/txn/Lock;
    if-nez v1, :cond_0

    .line 1345
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1348
    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1350
    return-object v2

    .line 1353
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    .line 1354
    invoke-interface {v1, p3, v3, p4}, Lcom/sleepycat/je/txn/Lock;->release(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)Ljava/util/Set;

    move-result-object v3

    .line 1356
    .local v3, "newOwners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/Locker;>;"
    if-nez v3, :cond_2

    .line 1358
    return-object v2

    .line 1362
    :cond_2
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nWaiters()I

    move-result v2

    if-nez v2, :cond_4

    .line 1363
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->nOwners()I

    move-result v2

    if-nez v2, :cond_4

    .line 1365
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->isThin()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1368
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    sget-wide v4, Lcom/sleepycat/je/txn/LockManager;->REMOVE_TOTAL_THINLOCKIMPL_OVERHEAD:J

    .line 1369
    invoke-virtual {v2, v4, v5, p4}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    goto :goto_1

    .line 1371
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    sget-wide v4, Lcom/sleepycat/je/txn/LockManager;->REMOVE_TOTAL_LOCKIMPL_OVERHEAD:J

    .line 1372
    invoke-virtual {v2, v4, v5, p4}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    goto :goto_1

    .line 1385
    :cond_4
    invoke-interface {v1}, Lcom/sleepycat/je/txn/Lock;->isThin()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1386
    new-instance v2, Lcom/sleepycat/je/txn/ThinLockImpl;

    move-object v4, v1

    check-cast v4, Lcom/sleepycat/je/txn/ThinLockImpl;

    invoke-direct {v2, v4}, Lcom/sleepycat/je/txn/ThinLockImpl;-><init>(Lcom/sleepycat/je/txn/ThinLockImpl;)V

    move-object v1, v2

    goto :goto_0

    .line 1388
    :cond_5
    new-instance v2, Lcom/sleepycat/je/txn/LockImpl;

    move-object v4, v1

    check-cast v4, Lcom/sleepycat/je/txn/LockImpl;

    invoke-direct {v2, v4}, Lcom/sleepycat/je/txn/LockImpl;-><init>(Lcom/sleepycat/je/txn/LockImpl;)V

    move-object v1, v2

    .line 1391
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    :goto_1
    return-object v3
.end method

.method public abstract stealLock(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockAttemptResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method stealLockInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;I)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 9
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "lockType"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "lockTableIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1651
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v0, v0, p4

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/Lock;

    .line 1652
    .local v0, "entry":Lcom/sleepycat/je/txn/Lock;
    if-eqz v0, :cond_0

    .line 1660
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-interface {v0, p2, v1, p4}, Lcom/sleepycat/je/txn/Lock;->flushWaiter(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V

    .line 1663
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-interface {v0, p2, v1, p4}, Lcom/sleepycat/je/txn/Lock;->stealLock(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V

    .line 1669
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/txn/LockManager;->attemptLockInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZI)Lcom/sleepycat/je/txn/LockAttemptResult;

    move-result-object v1

    return-object v1

    .line 1652
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for txn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1653
    invoke-virtual {p2}, Lcom/sleepycat/je/txn/Locker;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method unregisterThreadLocker(Lcom/sleepycat/je/txn/ThreadLocker;)V
    .locals 4
    .param p1, "locker"    # Lcom/sleepycat/je/txn/ThreadLocker;

    .line 1695
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1696
    return-void

    .line 1698
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1699
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 1700
    .local v1, "set":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<Lcom/sleepycat/je/txn/ThreadLocker;>;"
    if-eqz v1, :cond_3

    .line 1701
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/TinyHashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1702
    .local v2, "removed":Z
    if-eqz v2, :cond_2

    .line 1703
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1704
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockManager;->threadLockers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    :cond_1
    return-void

    .line 1702
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1700
    .end local v2    # "removed":Z
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method abstract validateOwnership(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZLjava/util/Set;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/Locker;",
            "Lcom/sleepycat/je/txn/LockType;",
            "ZZ",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method validateOwnershipInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;ZZILjava/util/Set;Ljava/util/List;)Z
    .locals 3
    .param p1, "lsn"    # Ljava/lang/Long;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "type"    # Lcom/sleepycat/je/txn/LockType;
    .param p4, "getOwnersAndWaiters"    # Z
    .param p5, "flushFromWaiters"    # Z
    .param p6, "lockTableIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/txn/Locker;",
            "Lcom/sleepycat/je/txn/LockType;",
            "ZZI",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1601
    .local p7, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p8, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/sleepycat/je/txn/LockManager;->isOwnerInternal(Ljava/lang/Long;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    const/4 v0, 0x1

    return v0

    .line 1605
    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 1610
    if-eqz p7, :cond_1

    .line 1611
    nop

    .line 1612
    invoke-virtual {p0, p1, p6, v0}, Lcom/sleepycat/je/txn/LockManager;->getOwnersInternal(Ljava/lang/Long;IZ)Ljava/util/Set;

    move-result-object v1

    .line 1615
    .local v1, "localOwners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    if-eqz v1, :cond_1

    .line 1616
    invoke-interface {p7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1620
    .end local v1    # "localOwners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_1
    if-eqz p8, :cond_2

    .line 1621
    nop

    .line 1622
    invoke-virtual {p0, p1, p6}, Lcom/sleepycat/je/txn/LockManager;->getWaitersInternal(Ljava/lang/Long;I)Ljava/util/List;

    move-result-object v1

    .line 1624
    .local v1, "localWaiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    if-eqz v1, :cond_2

    .line 1625
    invoke-interface {p8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1630
    .end local v1    # "localWaiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    if-eqz p5, :cond_3

    .line 1631
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockManager;->lockTables:[Ljava/util/Map;

    aget-object v1, v1, p6

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/Lock;

    .line 1632
    .local v1, "entry":Lcom/sleepycat/je/txn/Lock;
    if-eqz v1, :cond_3

    .line 1633
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockManager;->memoryBudget:Lcom/sleepycat/je/dbi/MemoryBudget;

    invoke-interface {v1, p2, v2, p6}, Lcom/sleepycat/je/txn/Lock;->flushWaiter(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V

    .line 1637
    .end local v1    # "entry":Lcom/sleepycat/je/txn/Lock;
    :cond_3
    return v0
.end method
